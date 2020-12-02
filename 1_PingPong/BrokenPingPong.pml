/* constants and mtypes */
mtype = { BALL }

/* global variables and channels */
chan chP1ToP2 = [2] of {mtype}
chan chP2ToP1 = [2] of {mtype}
chan chRefToPs = [2] of {mtype}
int ballCount = 0;

/* macros for the property interface -- needed for reference properties */
#define  allBalls (len(chP1ToP2) + len(chP2ToP1) + len(chRefToPs) + ballCount)

/* Your LTL properties */

ltl alwaysAtMostOneBall { [](allBalls <= 1) } // for BrokenPingPong.pml

/* for Broken PingPong.pml only */
ltl sanityCheckForAllBallsMustNotFailForCredit { (allBalls == 0) && ![](allBalls == 0) && ![](allBalls == 1) && ![](allBalls == 2) && []true }


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
		:: true -> skip; //Disable this for amateur game
		:: chP1ToP2?BALL ->
			chRefToPs!BALL;
		:: chP2ToP1?BALL ->
			chRefToPs!BALL;
		fi
	od
}


proctype Player(int playerNumber; chan receiving; chan sending) {
	printf("hi I am player %d", playerNumber);

	do
	::
		if
			/* if ball from ref or ball from players then send a ball to the other side */
			:: d_step { chRefToPs?BALL  ->
				ballCount++;
				printf("P%d receives ball from ref", playerNumber);
				}
			:: d_step { receiving?BALL  ->
				ballCount++;
				printf("P%d receives from other player", playerNumber);
				}
		fi
		printf("balls %d \n",allBalls);

		printf("P%d receives from other, send ball to other", playerNumber);
		d_step{
			sending!BALL;
			ballCount--;
		}


	od
}





init {
	run Referee();
	run Player(1, chP2ToP1, chP1ToP2);
	run Player(2, chP1ToP2, chP2ToP1);

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
