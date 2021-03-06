//CONSTANTS AND MACROS
#define N_CUSTOMERS 4
#define N_SEATS 3
#define ASSIGNED_SEATS crs:assignedSeats
#define FLIGHT_FULL_COUNTER crs:flightFullMessageCount
#define NOT_AVAILABLE_MSGS_COUNTER crs:notAvailableSeatCount

mtype = { EMPTY, RESERVED, ASSIGNED } //SEAT STATUS
mtype = { GET_SEAT, RETURNING_SEAT, PAYMENT_SEAT, NOT_AVAILABLE_SEAT, FLIGHT_FULL, SUCCESS_SEAT, INVALID_CUSTOMER} //ACTIONS/MESSAGES*/


/*LTLs*/

/*Always eventually all seats are assigned */
ltl allSeatsAlwaysAssigned { []<>(ASSIGNED_SEATS == N_SEATS) }
ltl ifMoreClientsThanSeatsFlightFullCounterGreaterThanZero { [](N_CUSTOMERS > N_SEATS -> <>(FLIGHT_FULL_COUNTER == (N_CUSTOMERS - N_SEATS))) }

// NOT AVAILABLE SEAT RESPONSES EQUALS 3 FOR SEAT_0, 2 FOR SEAT_1, 1 FOR SEAT_2 MINUS 1 FULL FLIGHT MESSAGE
// verifies that seats are blocked and remaining customers asking for a seat receive either a NOT_AVAILABLE_SEAT or a FLIGHT_FULL message
ltl notAvailablePlusFlightFullEqualsNthTriangle { <>( (NOT_AVAILABLE_MSGS_COUNTER + FLIGHT_FULL_COUNTER) == ((N_SEATS * (N_SEATS + 1) / 2)) ) }
ltl alwaysEventuallyCustomersBuyingProcessDone{ <> ( done[0] && done[1] &&  done[2] &&  done[3] ) }

/*ltl alwaysLastClientMessageIsSuccesfulOrFlightFull { []<> }*/


/*
	TYPEDEF RECEIVED FROM CLIENTS TO CRS
*/
typedef Seat {
	mtype seatStatus;
	int customerId
};

//SEATS ARRAY
Seat seats[N_SEATS];
//CLIENT TO CRS CHANNEL
chan clientToCrs = [1] of {mtype,int, int};//_mtype, seat, clientId
//CRS TO CLIENT CHANNEL
chan crsToClient[N_CUSTOMERS] = [1] of {mtype, int, int}; //_mtype, seat, clientId
// array to verify that customers eventually finish
bool done[N_CUSTOMERS] = { false }

 //Central Reservation System process.
 proctype crs(){
 	int notAvailableSeatCount = 0;
 	int flightFullMessageCount = 0;
 	int assignedSeats = 0;
 	int receivedCustomerId;
 	int receivedSeat;
 	mtype message;
 	//initialize seats
 	int i = 0;
 	do
 	:: i < N_SEATS ->
 		seats[i].seatStatus = EMPTY;
 		seats[i].customerId = -1;
 		printf("status %d", seats[i].seatStatus);
 		printf("customerId %d", seats[i].customerId);
 		i++;
 	:: i >= N_SEATS -> break;
 	od

 	end: do
 		 ::clientToCrs?message,receivedSeat,receivedCustomerId ->
 		 	printf("*******assigned seat %d, received seat %d, received client %d\n", assignedSeats,receivedSeat,receivedCustomerId);
			if
				:: message == GET_SEAT ->

					if
						:: d_step{  (receivedSeat < N_SEATS) && seats[receivedSeat].seatStatus == EMPTY ->
							seats[receivedSeat].seatStatus = RESERVED;
							seats[receivedSeat].customerId = receivedCustomerId;
							//returning to client, seat number and client id
							crsToClient[receivedCustomerId]!RETURNING_SEAT,receivedSeat,receivedCustomerId;
						}
						:: (receivedSeat < N_SEATS) && seats[receivedSeat].seatStatus != EMPTY ->
							//Seat not Available
							crsToClient[receivedCustomerId]!NOT_AVAILABLE_SEAT,receivedSeat,receivedCustomerId;
							notAvailableSeatCount++;
						::( receivedSeat > (N_SEATS - 1) ) ->
							crsToClient[receivedCustomerId]!FLIGHT_FULL,receivedSeat,receivedCustomerId;
							flightFullMessageCount++;
					fi;
				:: message == PAYMENT_SEAT ->
					// to assign seat customer Id must match
					//:: receivedCustomerId == seats[receivedSeat].customerId ->
						//Assigining seat and confirming
					seats[receivedSeat].seatStatus = ASSIGNED;
					crsToClient[receivedCustomerId]!SUCCESS_SEAT,receivedSeat,receivedCustomerId;
					assignedSeats++;
			fi;
	od


 }


proctype client(int clientId){
 	int seatNumber = 0;
	mtype messageType;
 	do
 	:: clientToCrs!GET_SEAT,seatNumber,clientId ->

		crsToClient[clientId]?messageType,seatNumber,clientId;
 		if
	 	::  messageType == RETURNING_SEAT ->
	 		//confirm seat selection
	 		clientToCrs!PAYMENT_SEAT,seatNumber,clientId;
	 		crsToClient[clientId]?SUCCESS_SEAT,seatNumber,clientId;
	 		break;
	 	:: messageType == NOT_AVAILABLE_SEAT ->
 			//try another seat
 			seatNumber++;
 		:: messageType == FLIGHT_FULL -> break;

	 	fi
 	od
	done[clientId] = true;
 }


init{
 	int idClient = 0;
 	run crs();
 	do
 	:: idClient < N_CUSTOMERS ->
 		run client(idClient);
 		idClient++;
 	:: idClient == N_CUSTOMERS -> break
 	od
}

