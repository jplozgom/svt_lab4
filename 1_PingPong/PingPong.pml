/* constants and mtypes */
mtype = { BALL }
 

/* global variables and channels */


/* macros for the property interface -- needed for reference properties */ 
#define  allBalls 	...


/* Your LTL properties */

ltl singleBallForever { ... } // for PingPong.pml



/* for PingPong.pml only */
ltl initiallyNoBallsMustNotFailForCredit { (allBalls == 0) && []true }
ltl allBallsCannotBeConstantMustNotFailForCredit { ![](allBalls == 0) && ![](allBalls == 1) && ![](allBalls == 2) && ([]true) }

/* proctypes */

/* comment your code only if necessary, 
   explaining what each proctype is supposed to be 
*/
proctype ... {
... 
}



init {

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
