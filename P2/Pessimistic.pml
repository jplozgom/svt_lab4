//CONSTANTS AND MACROS
#define N_CUSTOMERS 5
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

ltl notAvailableCountEqualsToNthTriangleNumber { <>( NOT_AVAILABLE_MSGS_COUNTER == ((N_SEATS * (N_SEATS + 1) / 2) - 1)) }

/*clients cant have more than two seats

clients always have different seats.???

Client get a seat and always eventually reserve it


*/


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

 	do
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
					/*if*/
						:: receivedCustomerId == seats[receivedSeat].customerId ->
							//Assigining seat and confirming
							seats[receivedSeat].seatStatus = ASSIGNED;
							crsToClient[receivedCustomerId]!SUCCESS_SEAT,receivedSeat,receivedCustomerId;
							assignedSeats++;
						/*:: receivedCustomerId != seats[receivedSeat].customerId -> crsToClient[receivedCustomerId]!INVALID_CUSTOMER,receivedSeat,receivedCustomerId;*/
					/*fi;*/
			fi;
	od


 }


proctype client(int clientId){
 	int seatNumber = 0;

 	do
 	:: clientToCrs!GET_SEAT,seatNumber,clientId ->
 		if
	 	::  crsToClient[clientId]?RETURNING_SEAT,seatNumber,clientId ->
	 		//confirm seat selection
	 		clientToCrs!PAYMENT_SEAT,seatNumber,clientId;
	 		crsToClient[clientId]?SUCCESS_SEAT,seatNumber,clientId;
	 		break;
	 	:: crsToClient[clientId]?NOT_AVAILABLE_SEAT,seatNumber,clientId ->
 			//try another seat
 			seatNumber++;
 		:: crsToClient[clientId]?FLIGHT_FULL,seatNumber,clientId -> break;

	 	fi
 	od

 }

/*
proctype hacker(){
 	do
 		:: clientToCrs!PAYMENT_SEAT,0,4 -> crsToClient[4]?INVALID_CUSTOMER,0,4;
 		:: clientToCrs!PAYMENT_SEAT,1,4 -> crsToClient[4]?INVALID_CUSTOMER,1,4;
 		:: clientToCrs!PAYMENT_SEAT,2,4 -> crsToClient[4]?INVALID_CUSTOMER,2,4;
 	od
}
*/

init{
 	int idClient = 0;
 	run crs();
 	do
 	:: idClient < N_CUSTOMERS - 1 ->
 		run client(idClient);
 		idClient++;
 	:: idClient == N_CUSTOMERS -> break
 	od
}

