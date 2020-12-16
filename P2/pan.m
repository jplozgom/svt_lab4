#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM notAvailableCountEqualsToNthTriangleNumber */
	case 3: // STATE 1 - _spin_nvr.tmp:26 - [(!((crs.notAvailableSeatCount==(((3*(3+1))/2)-1))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->notAvailableSeatCount)==(((3*(3+1))/2)-1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ifMoreClientsThanSeatsFlightFullCounterGreaterThanZero */
	case 5: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((5>3)))&&!((crs.flightFullMessageCount==(5-3)))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !( !((5>3)))&& !((((int)((P0 *)Pptr(f_pid(0)))->flightFullMessageCount)==(5-3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - _spin_nvr.tmp:19 - [(!((crs.flightFullMessageCount==(5-3))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->flightFullMessageCount)==(5-3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM allSeatsAlwaysAssigned */
	case 8: // STATE 1 - _spin_nvr.tmp:3 - [(!((crs.assignedSeats==3)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->assignedSeats)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - _spin_nvr.tmp:8 - [(!((crs.assignedSeats==3)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->assignedSeats)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 11: // STATE 1 - Pessimistic.pml:136 - [(run crs())] (0:0:0 - 0)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - Pessimistic.pml:138 - [((idClient<(5-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((P3 *)_this)->idClient<(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - Pessimistic.pml:139 - [(run client(idClient))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 1, ((P3 *)_this)->idClient)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 4 - Pessimistic.pml:140 - [idClient = (idClient+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->idClient;
		((P3 *)_this)->idClient = (((P3 *)_this)->idClient+1);
#ifdef VAR_RANGES
		logval(":init::idClient", ((P3 *)_this)->idClient);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 5 - Pessimistic.pml:141 - [((idClient==5))] (0:0:0 - 0)
		IfNotBlocked
		reached[3][5] = 1;
		if (!((((P3 *)_this)->idClient==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 10 - Pessimistic.pml:143 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC hacker */
	case 17: // STATE 1 - Pessimistic.pml:127 - [clientToCrs!PAYMENT_SEAT,0,4] (0:0:0 - 0)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.clientToCrs))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientToCrs);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientToCrs, 0, 8, 0, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 2 - Pessimistic.pml:127 - [crsToClient[4]?INVALID_CUSTOMER,0,4] (0:0:0 - 0)
		reached[2][2] = 1;
		if (q_len(now.crsToClient[4]) == 0) continue;

		XX=1;
		if (4 != qrecv(now.crsToClient[4], 0, 0, 0)) continue;
		if (0 != qrecv(now.crsToClient[4], 0, 1, 0)) continue;
		if (4 != qrecv(now.crsToClient[4], 0, 2, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.crsToClient[4]-1))->_t] != 3)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.crsToClient[4], XX-1, 2, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[4]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 3 - Pessimistic.pml:128 - [clientToCrs!PAYMENT_SEAT,1,4] (0:0:0 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.clientToCrs))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientToCrs);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientToCrs, 0, 8, 1, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 4 - Pessimistic.pml:128 - [crsToClient[4]?INVALID_CUSTOMER,1,4] (0:0:0 - 0)
		reached[2][4] = 1;
		if (q_len(now.crsToClient[4]) == 0) continue;

		XX=1;
		if (4 != qrecv(now.crsToClient[4], 0, 0, 0)) continue;
		if (1 != qrecv(now.crsToClient[4], 0, 1, 0)) continue;
		if (4 != qrecv(now.crsToClient[4], 0, 2, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.crsToClient[4]-1))->_t] != 3)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.crsToClient[4], XX-1, 2, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[4]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 5 - Pessimistic.pml:129 - [clientToCrs!PAYMENT_SEAT,2,4] (0:0:0 - 0)
		IfNotBlocked
		reached[2][5] = 1;
		if (q_full(now.clientToCrs))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientToCrs);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientToCrs, 0, 8, 2, 4, 3);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 6 - Pessimistic.pml:129 - [crsToClient[4]?INVALID_CUSTOMER,2,4] (0:0:0 - 0)
		reached[2][6] = 1;
		if (q_len(now.crsToClient[4]) == 0) continue;

		XX=1;
		if (4 != qrecv(now.crsToClient[4], 0, 0, 0)) continue;
		if (2 != qrecv(now.crsToClient[4], 0, 1, 0)) continue;
		if (4 != qrecv(now.crsToClient[4], 0, 2, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.crsToClient[4]-1))->_t] != 3)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.crsToClient[4], XX-1, 2, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[4]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 10 - Pessimistic.pml:131 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC client */
	case 24: // STATE 1 - Pessimistic.pml:107 - [clientToCrs!GET_SEAT,seatNumber,clientId] (0:0:0 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.clientToCrs))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientToCrs);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientToCrs, 0, 10, ((P1 *)_this)->seatNumber, ((P1 *)_this)->clientId, 3);
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 2 - Pessimistic.pml:109 - [crsToClient[clientId]?RETURNING_SEAT,seatNumber,clientId] (0:0:2 - 0)
		reached[1][2] = 1;
		if (q_len(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]) == 0) continue;

		XX=1;
		if (9 != qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->seatNumber;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->clientId;
		;
		((P1 *)_this)->seatNumber = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		((P1 *)_this)->clientId = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("client:clientId", ((P1 *)_this)->clientId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 3 - Pessimistic.pml:111 - [clientToCrs!PAYMENT_SEAT,seatNumber,clientId] (0:0:0 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.clientToCrs))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.clientToCrs);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.clientToCrs, 0, 8, ((P1 *)_this)->seatNumber, ((P1 *)_this)->clientId, 3);
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 4 - Pessimistic.pml:112 - [crsToClient[clientId]?SUCCESS_SEAT,seatNumber,clientId] (0:0:2 - 0)
		reached[1][4] = 1;
		if (q_len(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]) == 0) continue;

		XX=1;
		if (5 != qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->seatNumber;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->clientId;
		;
		((P1 *)_this)->seatNumber = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		((P1 *)_this)->clientId = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("client:clientId", ((P1 *)_this)->clientId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 6 - Pessimistic.pml:114 - [crsToClient[clientId]?NOT_AVAILABLE_SEAT,seatNumber,clientId] (0:0:2 - 0)
		reached[1][6] = 1;
		if (q_len(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]) == 0) continue;

		XX=1;
		if (7 != qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->seatNumber;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->clientId;
		;
		((P1 *)_this)->seatNumber = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		((P1 *)_this)->clientId = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("client:clientId", ((P1 *)_this)->clientId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 29: // STATE 7 - Pessimistic.pml:116 - [seatNumber = (seatNumber+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->seatNumber;
		((P1 *)_this)->seatNumber = (((P1 *)_this)->seatNumber+1);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 8 - Pessimistic.pml:117 - [crsToClient[clientId]?FLIGHT_FULL,seatNumber,clientId] (0:0:2 - 0)
		reached[1][8] = 1;
		if (q_len(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]) == 0) continue;

		XX=1;
		if (6 != qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->seatNumber;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->clientId;
		;
		((P1 *)_this)->seatNumber = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		((P1 *)_this)->clientId = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("client:clientId", ((P1 *)_this)->clientId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[ Index(((P1 *)_this)->clientId, 5) ]);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 31: // STATE 15 - Pessimistic.pml:122 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC crs */
	case 32: // STATE 1 - Pessimistic.pml:57 - [((i<3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((P0 *)_this)->i<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 2 - Pessimistic.pml:58 - [seats[i].seatStatus = EMPTY] (0:0:1 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus;
		now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus = 3;
#ifdef VAR_RANGES
		logval("seats[crs:i].seatStatus", now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 3 - Pessimistic.pml:59 - [seats[i].customerId = -(1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.seats[ Index(((P0 *)_this)->i, 3) ].customerId;
		now.seats[ Index(((P0 *)_this)->i, 3) ].customerId =  -(1);
#ifdef VAR_RANGES
		logval("seats[crs:i].customerId", now.seats[ Index(((P0 *)_this)->i, 3) ].customerId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 4 - Pessimistic.pml:60 - [printf('status %d',seats[i].seatStatus)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("status %d", now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 5 - Pessimistic.pml:61 - [printf('customerId %d',seats[i].customerId)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		Printf("customerId %d", now.seats[ Index(((P0 *)_this)->i, 3) ].customerId);
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 6 - Pessimistic.pml:62 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("crs:i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 7 - Pessimistic.pml:63 - [((i>=3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)_this)->i>=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 12 - Pessimistic.pml:67 - [clientToCrs?message,receivedSeat,receivedCustomerId] (0:0:3 - 0)
		reached[0][12] = 1;
		if (q_len(now.clientToCrs) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->message;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->receivedSeat;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->receivedCustomerId;
		;
		((P0 *)_this)->message = qrecv(now.clientToCrs, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("crs:message", ((P0 *)_this)->message);
#endif
		;
		((P0 *)_this)->receivedSeat = qrecv(now.clientToCrs, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("crs:receivedSeat", ((P0 *)_this)->receivedSeat);
#endif
		;
		((P0 *)_this)->receivedCustomerId = qrecv(now.clientToCrs, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("crs:receivedCustomerId", ((P0 *)_this)->receivedCustomerId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.clientToCrs);
		sprintf(simtmp, "%d", ((P0 *)_this)->message); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 40: // STATE 13 - Pessimistic.pml:68 - [printf('*******assigned seat %d, received seat %d, received client %d\\n',assignedSeats,receivedSeat,receivedCustomerId)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		Printf("*******assigned seat %d, received seat %d, received client %d\n", ((P0 *)_this)->assignedSeats, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId);
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 14 - Pessimistic.pml:70 - [((message==GET_SEAT))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((P0 *)_this)->message==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 19 - Pessimistic.pml:73 - [D_STEP73]
		if (!(boq == -1 && ((((P0 *)_this)->receivedSeat<3)&&(now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus==3))))
			continue;

		reached[0][19] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_014_0: /* 2 */
		if (!(((((P0 *)_this)->receivedSeat<3)&&(now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus==3))))
			Uerror("block in d_step seq");
S_015_0: /* 2 */
		now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus = 2;
#ifdef VAR_RANGES
		logval("seats[crs:receivedSeat].seatStatus", now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus);
#endif
		;
S_016_0: /* 2 */
		now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].customerId = ((P0 *)_this)->receivedCustomerId;
#ifdef VAR_RANGES
		logval("seats[crs:receivedSeat].customerId", now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].customerId);
#endif
		;
S_017_0: /* 2 */
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ], 0, 9, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		goto S_026_0;
S_026_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 43: // STATE 20 - Pessimistic.pml:79 - [(((receivedSeat<3)&&(seats[receivedSeat].seatStatus!=EMPTY)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((((P0 *)_this)->receivedSeat<3)&&(now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 21 - Pessimistic.pml:81 - [crsToClient[receivedCustomerId]!NOT_AVAILABLE_SEAT,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ], 0, 7, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 22 - Pessimistic.pml:82 - [notAvailableSeatCount = (notAvailableSeatCount+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->notAvailableSeatCount;
		((P0 *)_this)->notAvailableSeatCount = (((P0 *)_this)->notAvailableSeatCount+1);
#ifdef VAR_RANGES
		logval("crs:notAvailableSeatCount", ((P0 *)_this)->notAvailableSeatCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 23 - Pessimistic.pml:83 - [((receivedSeat>(3-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((P0 *)_this)->receivedSeat>(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 24 - Pessimistic.pml:84 - [crsToClient[receivedCustomerId]!FLIGHT_FULL,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][24] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ], 0, 6, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 25 - Pessimistic.pml:85 - [flightFullMessageCount = (flightFullMessageCount+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->flightFullMessageCount;
		((P0 *)_this)->flightFullMessageCount = (((P0 *)_this)->flightFullMessageCount+1);
#ifdef VAR_RANGES
		logval("crs:flightFullMessageCount", ((P0 *)_this)->flightFullMessageCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 28 - Pessimistic.pml:87 - [((message==PAYMENT_SEAT))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((((P0 *)_this)->message==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 29 - Pessimistic.pml:89 - [((receivedCustomerId==seats[receivedSeat].customerId))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((P0 *)_this)->receivedCustomerId==now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].customerId)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 30 - Pessimistic.pml:91 - [seats[receivedSeat].seatStatus = ASSIGNED] (0:0:1 - 0)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus;
		now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus = 1;
#ifdef VAR_RANGES
		logval("seats[crs:receivedSeat].seatStatus", now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 31 - Pessimistic.pml:92 - [crsToClient[receivedCustomerId]!SUCCESS_SEAT,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][31] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ], 0, 5, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 32 - Pessimistic.pml:93 - [assignedSeats = (assignedSeats+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->assignedSeats;
		((P0 *)_this)->assignedSeats = (((P0 *)_this)->assignedSeats+1);
#ifdef VAR_RANGES
		logval("crs:assignedSeats", ((P0 *)_this)->assignedSeats);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 33 - Pessimistic.pml:94 - [((receivedCustomerId!=seats[receivedSeat].customerId))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((P0 *)_this)->receivedCustomerId!=now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].customerId)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 34 - Pessimistic.pml:94 - [crsToClient[receivedCustomerId]!INVALID_CUSTOMER,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][34] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ]);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 5) ], 0, 4, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 42 - Pessimistic.pml:100 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][42] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

