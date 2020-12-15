	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM ifMoreClientsThanSeatsFlightFullCounterGreaterThanZero */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM allSeatsAlwaysAssigned */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 9: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 11: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 4
		;
		((P2 *)_this)->idClient = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC client */

	case 15: // STATE 1
		;
		_m = unsend(now.clientToCrs);
		;
		goto R999;

	case 16: // STATE 2
		;
		XX = 1;
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 0, 8, 1);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, ((P1 *)_this)->seatNumber, 0);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, ((P1 *)_this)->clientId, 0);
		((P1 *)_this)->seatNumber = trpt->bup.ovals[0];
		((P1 *)_this)->clientId = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 3
		;
		_m = unsend(now.clientToCrs);
		;
		goto R999;

	case 18: // STATE 4
		;
		XX = 1;
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 0, 4, 1);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, ((P1 *)_this)->seatNumber, 0);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, ((P1 *)_this)->clientId, 0);
		((P1 *)_this)->seatNumber = trpt->bup.ovals[0];
		((P1 *)_this)->clientId = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 6
		;
		XX = 1;
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 0, 6, 1);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, ((P1 *)_this)->seatNumber, 0);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, ((P1 *)_this)->clientId, 0);
		((P1 *)_this)->seatNumber = trpt->bup.ovals[0];
		((P1 *)_this)->clientId = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 20: // STATE 7
		;
		((P1 *)_this)->seatNumber = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 8
		;
		XX = 1;
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 0, 5, 1);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, ((P1 *)_this)->seatNumber, 0);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, ((P1 *)_this)->clientId, 0);
		((P1 *)_this)->seatNumber = trpt->bup.ovals[0];
		((P1 *)_this)->clientId = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 22: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC crs */
;
		;
		
	case 24: // STATE 2
		;
		now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 3
		;
		now.seats[ Index(((P0 *)_this)->i, 3) ].customerId = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 28: // STATE 6
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: // STATE 12
		;
		XX = 1;
		unrecv(now.clientToCrs, XX-1, 0, ((P0 *)_this)->message, 1);
		unrecv(now.clientToCrs, XX-1, 1, ((P0 *)_this)->receivedSeat, 0);
		unrecv(now.clientToCrs, XX-1, 2, ((P0 *)_this)->receivedClientId, 0);
		((P0 *)_this)->message = trpt->bup.ovals[0];
		((P0 *)_this)->receivedSeat = trpt->bup.ovals[1];
		((P0 *)_this)->receivedClientId = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
			case 33: // STATE 19
		sv_restor();
		goto R999;
;
		;
		
	case 35: // STATE 21
		;
		_m = unsend(now.crsToClient[ Index(((P0 *)_this)->receivedClientId, 4) ]);
		;
		goto R999;
;
		;
		
	case 37: // STATE 23
		;
		_m = unsend(now.crsToClient[ Index(((P0 *)_this)->receivedClientId, 4) ]);
		;
		goto R999;

	case 38: // STATE 24
		;
		((P0 *)_this)->flightFullMessageCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: // STATE 28
		;
		now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 29
		;
		_m = unsend(now.crsToClient[ Index(((P0 *)_this)->receivedClientId, 4) ]);
		;
		goto R999;

	case 42: // STATE 30
		;
		((P0 *)_this)->assignedSeats = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 36
		;
		p_restor(II);
		;
		;
		goto R999;
	}

