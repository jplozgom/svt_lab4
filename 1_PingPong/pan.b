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

		 /* PROC Player */
;
		;
		
	case 8: // STATE 3
		;
		XX = 1;
		unrecv(now.chRefToPs, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 11: // STATE 6
		;
		_m = unsend(now.chP1ToP2);
		;
		goto R999;
;
		;
		
	case 13: // STATE 8
		;
		_m = unsend(now.chP2ToP1);
		;
		goto R999;

	case 14: // STATE 11
		;
		XX = 1;
		unrecv(now.chP1ToP2, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 16: // STATE 13
		;
		_m = unsend(now.chP2ToP1);
		;
		goto R999;

	case 17: // STATE 14
		;
		XX = 1;
		unrecv(now.chP2ToP1, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 19: // STATE 16
		;
		_m = unsend(now.chP1ToP2);
		;
		goto R999;

	case 20: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Referee */

	case 21: // STATE 1
		;
		_m = unsend(now.chRefToPs);
		;
		goto R999;

	case 22: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;
	}

