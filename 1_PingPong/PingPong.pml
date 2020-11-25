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

proctype Player(int playerNumber) {
	printf("hi I am player %d", playerNumber);
	
	do
	:: true ->
		if
			/* if ball from ref or ball from players then send a ball to the other side */
			:: chRefToPs?BALL ->
				printf("send a ball"); 
				if
					:: playerNumber == 1 -> chP1ToP2!BALL
					:: playerNumber == 2 -> chP2ToP1!BALL
				fi  
			::chP1ToP2?BALL -> printf("send ball"); chP2ToP1!BALL;
			::chP2ToP1?BALL -> printf("send ball"); chP1ToP2!BALL;
		fi
	od
}


init {
	run Referee();
	run Player(1);
	run Player(2);
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
