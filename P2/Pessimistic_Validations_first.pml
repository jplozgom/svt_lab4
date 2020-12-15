//CONSTANTS AND MACROS
#define N_CUSTOMERS 5
#define N_SEATS 4
#define ASSIGNED_SEATS crs:assignedSeats

mtype = { EMPTY, RESERVED, ASSIGNED } //SEAT STATUS
mtype = { GET_SEAT, RETURNING_SEAT, PAYMENT_SEAT, NOT_AVAILABLE_SEAT, FLIGHT_FULL, SUCCESS_SEAT} //ACTIONS/MESSAGES*/


/*LTLs*/

/*Always eventually all seats are assigned */
ltl allSeatsAlwaysAssigned { []<>(ASSIGNED_SEATS == 4) }

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
 	int assignedSeats = 0;
 	int receivedClientId;
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
 		 ::clientToCrs?message,receivedSeat,receivedClientId ->
 		 
 		 	if
			::( receivedSeat > (N_SEATS - 1) ) ->
				if 
				:: 	 assignedSeats == N_SEATS ->
					crsToClient[receivedClientId]!FLIGHT_FULL,receivedSeat,receivedClientId; 		
					break; 
				::else ->
					crsToClient[receivedClientId]!FLIGHT_FULL,receivedSeat,receivedClientId; 	 
				fi;
			::else ->
				 printf("*******assigned seat %d, received seat %d, received client %d\n", assignedSeats,receivedSeat,receivedClientId);
		 		 if
			 	 :: message == GET_SEAT ->
			 	 	
					if
					:: d_step{ seats[receivedSeat].seatStatus == EMPTY ->
							seats[receivedSeat].seatStatus = RESERVED;
							seats[receivedSeat].customerId = receivedClientId;
							//returning to client, seat number and client id
							crsToClient[receivedClientId]!RETURNING_SEAT,receivedSeat,receivedClientId;
						}
					:: seats[receivedSeat].seatStatus != EMPTY ->
						//Seat not Available
						crsToClient[receivedClientId]!NOT_AVAILABLE_SEAT,receivedSeat,receivedClientId; 
		
			 		fi;
			 	:: message == PAYMENT_SEAT ->
			 		//Assigining seat and confirming
			 		seats[receivedSeat].seatStatus = ASSIGNED;
			 		crsToClient[receivedClientId]!SUCCESS_SEAT,receivedSeat,receivedClientId;
			 		assignedSeats++;
			 	fi;
			
			fi;
			
 	
		 //:: true -> skip;*/
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
	 	
		/*if
 		:: seatNumber > N_SEATS -> break;
 		:: else -> skip;
 		fi*/
 	od
 
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
 
  