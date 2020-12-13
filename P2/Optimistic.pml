//CONSTANTS AND MACROS
#define CUSTOMERS 5;
#define SEATS 4;


mtype = { EMPTY, RESERVED, ASSIGNED } //SEAT STATUS
mtype = { GET_SEAT, RETURNING_SEAT, CONFIRM_SEAT} //ACTIONS/MESSAGES

/*
	TYPEDEF RECEIVED FROM CLIENTS TO CRS
*/
typedef Seat = {
	byte currentVersion;
	mtype seatStatus;
	byte customerId;
	 
}

//SEATS ARRAY
seats[SEATS] = {typedef}
//CLIENT TO CRS CHANNEL
chan clientToCrs = [1] of {mtype,int, int};//mtype, seat, clientId
//CRS TO CLIENT CHANNEL
chan crsToClient = [CUSTOMERS] of {mtype,id,id}; //mtype, seat, clientId
 