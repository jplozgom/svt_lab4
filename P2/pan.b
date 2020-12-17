	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM alwaysEventuallyCustomersBuyingProcessDone */
;
		;
		
	case 4: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM notAvailablePlusFlightFullEqualsNthTriangle */
;
		;
		
	case 6: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM ifMoreClientsThanSeatsFlightFullCounterGreaterThanZero */
;
		;
		;
		;
		
	case 9: // STATE 13
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
		
	case 12: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 13: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 15: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 16: // STATE 4
		;
		((P2 *)_this)->idClient = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC client */

	case 19: // STATE 1
		;
		_m = unsend(now.clientToCrs);
		;
		goto R999;

	case 20: // STATE 2
		;
		XX = 1;
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 0, ((P1 *)_this)->messageType, 1);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, ((P1 *)_this)->seatNumber, 0);
		unrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, ((P1 *)_this)->clientId, 0);
		((P1 *)_this)->messageType = trpt->bup.ovals[0];
		((P1 *)_this)->seatNumber = trpt->bup.ovals[1];
		((P1 *)_this)->clientId = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 22: // STATE 4
		;
		_m = unsend(now.clientToCrs);
		;
		goto R999;

	case 23: // STATE 5
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
;
		;
		
	case 25: // STATE 8
		;
		((P1 *)_this)->seatNumber = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 16
		;
		now.done[ Index(((P1 *)_this)->clientId, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC crs */
;
		;
		
	case 30: // STATE 2
		;
		now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 3
		;
		now.seats[ Index(((P0 *)_this)->i, 3) ].customerId = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 34: // STATE 6
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 12
		;
		XX = 1;
		unrecv(now.clientToCrs, XX-1, 0, ((P0 *)_this)->message, 1);
		unrecv(now.clientToCrs, XX-1, 1, ((P0 *)_this)->receivedSeat, 0);
		unrecv(now.clientToCrs, XX-1, 2, ((P0 *)_this)->receivedCustomerId, 0);
		((P0 *)_this)->message = trpt->bup.ovals[0];
		((P0 *)_this)->receivedSeat = trpt->bup.ovals[1];
		((P0 *)_this)->receivedCustomerId = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
			case 39: // STATE 19
		sv_restor();
		goto R999;
;
		;
		
	case 41: // STATE 21
		;
		_m = unsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		;
		goto R999;

	case 42: // STATE 22
		;
		((P0 *)_this)->notAvailableSeatCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 44: // STATE 24
		;
		_m = unsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		;
		goto R999;

	case 45: // STATE 25
		;
		((P0 *)_this)->flightFullMessageCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 47: // STATE 29
		;
		now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 30
		;
		_m = unsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		;
		goto R999;

	case 49: // STATE 31
		;
		((P0 *)_this)->assignedSeats = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 37
		;
		p_restor(II);
		;
		;
		goto R999;
	}

