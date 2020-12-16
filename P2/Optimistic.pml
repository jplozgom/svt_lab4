//CONSTANTS AND MACROS
#define N_CUSTOMERS 4
#define N_SEATS 3
#define UKNOWN_VERSION -1
#define ASSIGNED_SEATS crs:assignedSeats
#define FLIGHT_FULL_COUNTER crs:flightFullMessageCount
//#define NOT_AVAILABLE_MSGS_COUNTER crs:notAvailableSeatCount

mtype = { EMPTY, ASSIGNED } //SEAT STATUS
mtype = { GET_SEAT, RETURNING_SEAT, PAYMENT_SEAT, NOT_AVAILABLE_SEAT, FLIGHT_FULL, SUCCESS_SEAT, INVALID_CUSTOMER} //ACTIONS/MESSAGES*/


/*LTLs*/

/*Always eventually all seats are assigned */
ltl allSeatsAlwaysAssigned { []<>(ASSIGNED_SEATS == N_SEATS) }
ltl ifMoreClientsThanSeatsFlightFullCounterGreaterThanZero { [](N_CUSTOMERS > N_SEATS -> <>(FLIGHT_FULL_COUNTER == (N_CUSTOMERS - N_SEATS))) }

// NOT AVAILABLE SEAT RESPONSES EQUALS 3 FOR SEAT_0, 2 FOR SEAT_1, 1 FOR SEAT_2 MINUS 1 FULL FLIGHT MESSAGE
// verifies that seats are blocked and remaining customers asking for a seat receive either a NOT_AVAILABLE_SEAT or a FLIGHT_FULL message
/*ltl notAvailableCountEqualsToNthTriangleNumber { <>( NOT_AVAILABLE_MSGS_COUNTER == ((N_SEATS * (N_SEATS + 1) / 2) - 1) ) }*/
ltl alwaysEventuallyCustomersBuyingProcessDone{ <> ( done[0] && done[1] &&  done[2] &&  done[3] ) }

/*ltl alwaysLastClientMessageIsSuccesfulOrFlightFull { []<> }*/


/*
	TYPEDEF RECEIVED FROM CLIENTS TO CRS
*/
typedef Seat {
	mtype seatStatus;
	int customerId;
	int version;
};

//SEATS ARRAY
Seat seats[N_SEATS];
//CLIENT TO CRS CHANNEL
chan clientToCrs = [1] of {mtype,int, int, int};//_mtype, seat, clientId, version
//CRS TO CLIENT CHANNEL
chan crsToClient[N_CUSTOMERS] = [1] of {mtype, int, int, int}; //_mtype, seat, clientId, version
// array to verify that customers eventually finish
bool done[N_CUSTOMERS] = { false }

 //Central Reservation System process.
 proctype crs(){
 	//int notAvailableSeatCount = 0;
 	int flightFullMessageCount = 0;
 	int assignedSeats = 0;
 	int receivedCustomerId;
 	int receivedSeat;
	int receivedVersion;
 	mtype message;
 	//initialize seats
 	int i = 0;
 	do
 	:: i < N_SEATS ->
 		seats[i].seatStatus = EMPTY;
 		seats[i].customerId = -1;
		seats[i].version = 0;
 		printf("status %d", seats[i].seatStatus);
 		printf("customerId %d", seats[i].customerId);
 		i++;
 	:: i >= N_SEATS -> break;
 	od

 	end: do
 		 ::clientToCrs?message,receivedSeat,receivedCustomerId,receivedVersion ->
 		 	printf("*******assigned seat %d, received seat %d, received client %d\n", assignedSeats,receivedSeat,receivedCustomerId);
			if
				:: message == GET_SEAT ->
					if
						:: seats[receivedSeat].seatStatus == EMPTY ->
							//returning to client, seat number and client id
							crsToClient[receivedCustomerId]!RETURNING_SEAT,receivedSeat,receivedCustomerId, seats[receivedSeat].version;
						:: seats[receivedSeat].seatStatus == ASSIGNED ->
							if
							:: assignedSeats >= N_SEATS  ->
								//Flight full
								crsToClient[receivedCustomerId]!FLIGHT_FULL,receivedSeat,receivedCustomerId,UKNOWN_VERSION;
								flightFullMessageCount++;
							::else ->
								//Seat not Available
								crsToClient[receivedCustomerId]!NOT_AVAILABLE_SEAT,receivedSeat,receivedCustomerId,UKNOWN_VERSION;
								//notAvailableSeatCount++;
							fi

					fi;
				:: message == PAYMENT_SEAT ->
					if
					:: receivedVersion == seats[receivedSeat].version ->
						d_step{
							seats[receivedSeat].seatStatus = ASSIGNED;
							seats[receivedSeat].customerId = receivedCustomerId;
							seats[receivedSeat].version++;
							assignedSeats++;
						}
						crsToClient[receivedCustomerId]!SUCCESS_SEAT,receivedSeat,receivedCustomerId, seats[receivedSeat].version;
					::else ->
						if
						:: assignedSeats >= N_SEATS  ->
							//Flight full
							crsToClient[receivedCustomerId]!FLIGHT_FULL,receivedSeat,receivedCustomerId,UKNOWN_VERSION;
							flightFullMessageCount++;
						::else ->
							//Seat not Available
							crsToClient[receivedCustomerId]!NOT_AVAILABLE_SEAT,receivedSeat,receivedCustomerId,UKNOWN_VERSION;
							//notAvailableSeatCount++;
						fi
					fi
				
			fi;
	od


 }


proctype client(int clientId){
 	int seatNumber = 0;
	int receivedVersion;
	mtype messageType;

 	do
 	:: clientToCrs!GET_SEAT,seatNumber,clientId, UKNOWN_VERSION->

		crsToClient[clientId]?messageType,seatNumber,clientId,receivedVersion;
 		if
	 	::  messageType == RETURNING_SEAT ->
	 		//confirm seat selection
	 		clientToCrs!PAYMENT_SEAT,seatNumber, clientId, receivedVersion;

			crsToClient[clientId]?messageType,seatNumber,clientId,receivedVersion;
			if
			:: messageType == SUCCESS_SEAT -> break;
			:: else -> skip;
			fi

 		:: messageType == FLIGHT_FULL -> break;
		:: else -> skip;
	 	fi

		if
		:: ( messageType == NOT_AVAILABLE_SEAT  && seatNumber < N_SEATS - 1 ) ->
			seatNumber++;	
		:: else -> break;
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

