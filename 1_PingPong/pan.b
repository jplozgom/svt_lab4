	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM sanityCheckForAllBallsMustNotFailForCredit */
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

		 /* CLAIM alwaysAtMostOneBall */
;
		
	case 12: // STATE 1
		goto R999;

	case 13: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 14: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 16: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 17: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player */
;
		;
			case 19: // STATE 5
		sv_restor();
		goto R999;
	case 20: // STATE 9
		sv_restor();
		goto R999;
;
		;
		;
		;
			case 23: // STATE 16
		sv_restor();
		goto R999;

	case 24: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Referee */

	case 25: // STATE 1
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 26: // STATE 6
		;
		XX = 1;
		unrecv(now.chP1ToP2, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 27: // STATE 7
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 28: // STATE 8
		;
		XX = 1;
		unrecv(now.chP2ToP1, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 29: // STATE 9
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 30: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;
	}

