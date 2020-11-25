	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player2 */
;
		;
		
	case 8: // STATE 2
		;
		XX = 1;
		unrecv(now.chRefToPs, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 10: // STATE 4
		;
		XX = 1;
		unrecv(now.chP1ToP2, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 12: // STATE 8
		;
		pActiveBalls[0] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 9
		;
		pActiveBalls[1] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 11
		;
		_m = unsend(now.chP2ToP1);
		;
		goto R999;

	case 16: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player1 */
;
		;
		
	case 18: // STATE 2
		;
		XX = 1;
		unrecv(now.chRefToPs, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 20: // STATE 4
		;
		XX = 1;
		unrecv(now.chP2ToP1, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 22: // STATE 8
		;
		pActiveBalls[1] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 9
		;
		pActiveBalls[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 11
		;
		_m = unsend(now.chP1ToP2);
		;
		goto R999;

	case 26: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Referee */

	case 27: // STATE 1
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 28: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;
	}

