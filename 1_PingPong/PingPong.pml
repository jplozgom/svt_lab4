/* constants and mtypes */
mtype = { BALL }

/* global variables and channels */
chan chP1ToP2 = [1] of {mtype}
chan chP2ToP1 = [1] of {mtype}
chan chRefToPs = [1] of {mtype}
bit pActiveBalls[2];

/* macros for the property interface -- needed for reference properties */ 
/*#define  allBalls 	...*/


/* Your LTL properties */

/*ltl singleBallForever { ... } // for PingPong.pml*/



/* for PingPong.pml only */
/*ltl initiallyNoBallsMustNotFailForCredit { (allBalls == 0) && []true }
ltl allBallsCannotBeConstantMustNotFailForCredit { ![](allBalls == 0) && ![](allBalls == 1) && ![](allBalls == 2) && ([]true) }*/

/* proctypes */

/* comment your code only if necessary, 
   explaining what each proctype is supposed to be 
*/
proctype Referee() {
	chRefToPs!BALL;
	
}

proctype Player1() {
	printf("hi I am player 1");
	
	do
	:: 	
		
		if
			/* if ball from ref or ball from players then send a ball to the other side */
			:: chRefToPs?BALL ->
				printf("P1 receives ball from ref");
			::chP2ToP1?BALL -> 
				printf("P1 receives from P2");
		fi

		pActiveBalls[1] = 0;
		pActiveBalls[0] = 1;					
		
		printf("P1 receives from P2, send ball ... P1 -> P2");
		chP1ToP2!BALL;			
					
	od
}

proctype Player2() {
	printf("hi I am player 2");

	do
	::		
		if
			/* if ball from ref or ball from players then send a ball to the other side */
			:: chRefToPs?BALL ->
				printf("P2 receives ball from ref");
			::chP1ToP2?BALL -> 
				printf("P2 receives from P1");
		fi
	
		pActiveBalls[0] = 0;
		pActiveBalls[1] = 1;

		printf("P2 receives from P1, send ball ... P2 -> P1");
		chP2ToP1!BALL;			
					
	od
}
/*
proctype Player2() {
	printf("hi I am player 2");
	bit receivedBall = 0	
	do
		receivedBall = 0;
		
		if
			/* if ball from ref or ball from players then send a ball to the other side */
/*			:: chRefToPs?BALL ->
				printf("P2 receives ball from ref"); 
				receivedBall = 1
			::chP1ToP2?BALL -> 
				printf("receive P2 from P1");
			 	receivedBall = 1
			:: else -> 
				pActiveBalls[1] = 0;
		fi
		
		if
			:: receivedBall == 1 ->
				pActiveBalls[1] = 1;
				printf("P2 receives from P1, send ball ... P2 -> P1"); 
				chP2ToP1!BALL;
				
			:: else -> skip;
		fi
					
	od
}*/


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
