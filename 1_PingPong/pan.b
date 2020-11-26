	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM allBallsCannotBeConstantMustNotFailForCredit */
;
		;
		;
		;
		;
		;
		;
		
	case 6: // STATE 7
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 10: // STATE 30
		goto R999;

	case 11: // STATE 39
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM initiallyNoBallsMustNotFailForCredit */
;
		
	case 12: // STATE 1
		goto R999;
;
		
	case 13: // STATE 9
		goto R999;

	case 14: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM singleBallForever */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 18: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 19: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 20: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player2 */
;
		;
		
	case 23: // STATE 2
		;
		XX = 1;
		unrecv(now.chRefToPs, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 24: // STATE 3
		;
		now.pActiveBalls[1] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 25: // STATE 4
		goto R999;

	case 26: // STATE 5
		;
		XX = 1;
		unrecv(now.chP1ToP2, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 27: // STATE 6
		;
		now.pActiveBalls[1] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 28: // STATE 7
		goto R999;
;
		
	case 29: // STATE 10
		goto R999;
	case 30: // STATE 13
		sv_restor();
		goto R999;

	case 31: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player1 */
;
		;
		
	case 33: // STATE 2
		;
		XX = 1;
		unrecv(now.chRefToPs, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 34: // STATE 3
		;
		now.pActiveBalls[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 5
		;
		XX = 1;
		unrecv(now.chP2ToP1, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 37: // STATE 6
		;
		now.pActiveBalls[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
			case 41: // STATE 14
		sv_restor();
		goto R999;

	case 42: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Referee */

	case 43: // STATE 1
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 44: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;
	}

