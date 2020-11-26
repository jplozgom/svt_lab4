/* constants and mtypes */
mtype = { BALL }

/* global variables and channels */
chan chP1ToP2 = [1] of {mtype}
chan chP2ToP1 = [1] of {mtype}
chan chRefToPs = [1] of {mtype}
int pActiveBalls[2];

/* macros for the property interface -- needed for reference properties */ 
#define  allBalls (len(chP1ToP2) + len(chP2ToP1) + pActiveBalls[0] + pActiveBalls[1])

/* Your LTL properties */

/*ltl alwaysAtMostOneBall { ... } // for BrokenPingPong.pml*/

/* for Broken PingPong.pml only */
/*ltl sanityCheckForAllBallsMustNotFailForCredit { (allBalls == 0) && ![](allBalls == 0) && ![](allBalls == 1) && ![](allBalls == 2) && []true }*/


/* proctypes */

/* comment your code only if necessary, 
   explaining what each proctype is supposed to be 
*/

/**

*/
proctype Referee() {
	chRefToPs!BALL;	
	do
	::
		if
		:: true -> skip; //Disable this for amateur game
		:: true -> skip;
		:: true -> skip;
		:: chP1ToP2?BALL -> 
			chRefToPs!BALL; 
		:: chP2ToP1?BALL -> 
			chRefToPs!BALL;
		fi
	od
	
	
}


proctype Player1() {
	printf("hi I am player 1");
	
	do
	:: 	
		
		if
			/* if ball from ref or ball from players then send a ball to the other side */
			:: d_step{chRefToPs?BALL  ->
				pActiveBalls[0] = 1;}
				printf("P1 receives ball from ref");
			:: d_step{chP2ToP1?BALL  -> 
				pActiveBalls[0] = 1;}
				printf("P1 receives from P2");
		fi
		printf("balls %d \n",allBalls);
								
		printf("P1 receives from P2, send ball ... P1 -> P2");
		d_step{
			chP1ToP2!BALL;
			pActiveBalls[0] = 0;
		}			
		
					
	od
}

proctype Player2() {
	printf("hi I am player 2");

	do
	::		
		if
			/* if ball from ref or ball from players then send a ball to the other side */
			:: 	d_step{chRefToPs?BALL->
				pActiveBalls[1] = 1};
				printf("P2 receives ball from ref");
			::	d_step{chP1ToP2?BALL ->
				pActiveBalls[1] = 1};
				printf("P2 receives ball from P1");
		fi
	
		
		printf("P2 receives from P1, send ball ... P2 -> P1");
		d_step{
			chP2ToP1!BALL;			
			pActiveBalls[1] = 0;
		}	
	od
}



init {
	run Referee();
	run Player1();
	run Player2();
	
}

/* monitor processes for invariants (optional) */
/* explain what this does if you use it */
/*active proctype myPropertyMonitor() {
 
}*/

/***********************************************************************
************************************************************************
************************************************************************

REPORT

Your report goes here if required. 

*/
