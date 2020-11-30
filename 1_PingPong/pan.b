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
		
	case 16: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 17: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 18: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 19: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 20: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player2 */
;
		;
			case 22: // STATE 5
		sv_restor();
		goto R999;
	case 23: // STATE 9
		sv_restor();
		goto R999;
;
		
	case 24: // STATE 12
		goto R999;
	case 25: // STATE 15
		sv_restor();
		goto R999;

	case 26: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player1 */
;
		;
			case 28: // STATE 5
		sv_restor();
		goto R999;
	case 29: // STATE 9
		sv_restor();
		goto R999;
;
		;
		;
		;
			case 32: // STATE 16
		sv_restor();
		goto R999;

	case 33: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Referee */

	case 34: // STATE 1
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 35: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;
	}

