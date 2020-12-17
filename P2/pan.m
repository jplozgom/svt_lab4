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

		 /* CLAIM alwaysEventuallyCustomersBuyingProcessDone */
	case 3: // STATE 1 - _spin_nvr.tmp:33 - [(!((((done[0]&&done[1])&&done[2])&&done[3])))] (0:0:0 - 0)
		
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
		if (!( !((((((int)now.done[0])&&((int)now.done[1]))&&((int)now.done[2]))&&((int)now.done[3])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 0)
		
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

		 /* CLAIM notAvailablePlusFlightFullEqualsNthTriangle */
	case 5: // STATE 1 - _spin_nvr.tmp:26 - [(!(((crs.notAvailableSeatCount+crs.flightFullMessageCount)==((3*(3+1))/2))))] (0:0:0 - 0)
		
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
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->notAvailableSeatCount)+((int)((P0 *)Pptr(f_pid(0)))->flightFullMessageCount))==((3*(3+1))/2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 6 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 0)
		
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
		reached[5][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM ifMoreClientsThanSeatsFlightFullCounterGreaterThanZero */
	case 7: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((4>3)))&&!((crs.flightFullMessageCount==(4-3)))))] (0:0:0 - 0)
		
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
		if (!(( !( !((4>3)))&& !((((int)((P0 *)Pptr(f_pid(0)))->flightFullMessageCount)==(4-3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - _spin_nvr.tmp:19 - [(!((crs.flightFullMessageCount==(4-3))))] (0:0:0 - 0)
		
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
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->flightFullMessageCount)==(4-3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 0)
		
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

		 /* CLAIM allSeatsAlwaysAssigned */
	case 10: // STATE 1 - _spin_nvr.tmp:3 - [(!((crs.assignedSeats==3)))] (0:0:0 - 0)
		
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
		reached[3][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->assignedSeats)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - _spin_nvr.tmp:8 - [(!((crs.assignedSeats==3)))] (0:0:0 - 0)
		
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
		reached[3][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->assignedSeats)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 0)
		
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
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 13: // STATE 1 - Pessimistic.pml:124 - [(run crs())] (0:0:0 - 0)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - Pessimistic.pml:126 - [((idClient<4))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((P2 *)_this)->idClient<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - Pessimistic.pml:127 - [(run client(idClient))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, ((P2 *)_this)->idClient)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 4 - Pessimistic.pml:128 - [idClient = (idClient+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((P2 *)_this)->idClient;
		((P2 *)_this)->idClient = (((P2 *)_this)->idClient+1);
#ifdef VAR_RANGES
		logval(":init::idClient", ((P2 *)_this)->idClient);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 5 - Pessimistic.pml:129 - [((idClient==4))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((((P2 *)_this)->idClient==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 10 - Pessimistic.pml:131 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC client */
	case 19: // STATE 1 - Pessimistic.pml:102 - [clientToCrs!GET_SEAT,seatNumber,clientId] (0:0:0 - 0)
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
	case 20: // STATE 2 - Pessimistic.pml:104 - [crsToClient[clientId]?messageType,seatNumber,clientId] (0:0:3 - 0)
		reached[1][2] = 1;
		if (q_len(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ]) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->messageType;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->seatNumber;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->clientId;
		;
		((P1 *)_this)->messageType = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("client:messageType", ((P1 *)_this)->messageType);
#endif
		;
		((P1 *)_this)->seatNumber = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		((P1 *)_this)->clientId = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("client:clientId", ((P1 *)_this)->clientId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ]);
		sprintf(simtmp, "%d", ((P1 *)_this)->messageType); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 3 - Pessimistic.pml:106 - [((messageType==RETURNING_SEAT))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->messageType==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 4 - Pessimistic.pml:108 - [clientToCrs!PAYMENT_SEAT,seatNumber,clientId] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
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
	case 23: // STATE 5 - Pessimistic.pml:109 - [crsToClient[clientId]?SUCCESS_SEAT,seatNumber,clientId] (0:0:2 - 0)
		reached[1][5] = 1;
		if (q_len(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ]) == 0) continue;

		XX=1;
		if (5 != qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->seatNumber;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->clientId;
		;
		((P1 *)_this)->seatNumber = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		((P1 *)_this)->clientId = qrecv(now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ], XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("client:clientId", ((P1 *)_this)->clientId);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.crsToClient[ Index(((P1 *)_this)->clientId, 4) ]);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->seatNumber); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->clientId); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 24: // STATE 7 - Pessimistic.pml:111 - [((messageType==NOT_AVAILABLE_SEAT))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((P1 *)_this)->messageType==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - Pessimistic.pml:113 - [seatNumber = (seatNumber+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->seatNumber;
		((P1 *)_this)->seatNumber = (((P1 *)_this)->seatNumber+1);
#ifdef VAR_RANGES
		logval("client:seatNumber", ((P1 *)_this)->seatNumber);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 9 - Pessimistic.pml:114 - [((messageType==FLIGHT_FULL))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((P1 *)_this)->messageType==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 16 - Pessimistic.pml:118 - [done[clientId] = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.done[ Index(((P1 *)_this)->clientId, 4) ]);
		now.done[ Index(((P1 *)_this)->clientId, 4) ] = 1;
#ifdef VAR_RANGES
		logval("done[client:clientId]", ((int)now.done[ Index(((P1 *)_this)->clientId, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 17 - Pessimistic.pml:119 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC crs */
	case 29: // STATE 1 - Pessimistic.pml:54 - [((i<3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((P0 *)_this)->i<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 2 - Pessimistic.pml:55 - [seats[i].seatStatus = EMPTY] (0:0:1 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus;
		now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus = 3;
#ifdef VAR_RANGES
		logval("seats[crs:i].seatStatus", now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 3 - Pessimistic.pml:56 - [seats[i].customerId = -(1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.seats[ Index(((P0 *)_this)->i, 3) ].customerId;
		now.seats[ Index(((P0 *)_this)->i, 3) ].customerId =  -(1);
#ifdef VAR_RANGES
		logval("seats[crs:i].customerId", now.seats[ Index(((P0 *)_this)->i, 3) ].customerId);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 4 - Pessimistic.pml:57 - [printf('status %d',seats[i].seatStatus)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("status %d", now.seats[ Index(((P0 *)_this)->i, 3) ].seatStatus);
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 5 - Pessimistic.pml:58 - [printf('customerId %d',seats[i].customerId)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		Printf("customerId %d", now.seats[ Index(((P0 *)_this)->i, 3) ].customerId);
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 6 - Pessimistic.pml:59 - [i = (i+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("crs:i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 7 - Pessimistic.pml:60 - [((i>=3))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)_this)->i>=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 12 - Pessimistic.pml:64 - [clientToCrs?message,receivedSeat,receivedCustomerId] (0:0:3 - 0)
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
	case 37: // STATE 13 - Pessimistic.pml:65 - [printf('*******assigned seat %d, received seat %d, received client %d\\n',assignedSeats,receivedSeat,receivedCustomerId)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		Printf("*******assigned seat %d, received seat %d, received client %d\n", ((P0 *)_this)->assignedSeats, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId);
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 14 - Pessimistic.pml:67 - [((message==GET_SEAT))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((P0 *)_this)->message==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 19 - Pessimistic.pml:70 - [D_STEP70]
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
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ], 0, 9, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		goto S_026_0;
S_026_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 40: // STATE 20 - Pessimistic.pml:76 - [(((receivedSeat<3)&&(seats[receivedSeat].seatStatus!=EMPTY)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((((P0 *)_this)->receivedSeat<3)&&(now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 21 - Pessimistic.pml:78 - [crsToClient[receivedCustomerId]!NOT_AVAILABLE_SEAT,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ], 0, 7, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 22 - Pessimistic.pml:79 - [notAvailableSeatCount = (notAvailableSeatCount+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->notAvailableSeatCount;
		((P0 *)_this)->notAvailableSeatCount = (((P0 *)_this)->notAvailableSeatCount+1);
#ifdef VAR_RANGES
		logval("crs:notAvailableSeatCount", ((P0 *)_this)->notAvailableSeatCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 23 - Pessimistic.pml:80 - [((receivedSeat>(3-1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((P0 *)_this)->receivedSeat>(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 24 - Pessimistic.pml:81 - [crsToClient[receivedCustomerId]!FLIGHT_FULL,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][24] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ], 0, 6, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 25 - Pessimistic.pml:82 - [flightFullMessageCount = (flightFullMessageCount+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->flightFullMessageCount;
		((P0 *)_this)->flightFullMessageCount = (((P0 *)_this)->flightFullMessageCount+1);
#ifdef VAR_RANGES
		logval("crs:flightFullMessageCount", ((P0 *)_this)->flightFullMessageCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 28 - Pessimistic.pml:84 - [((message==PAYMENT_SEAT))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((((P0 *)_this)->message==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 29 - Pessimistic.pml:88 - [seats[receivedSeat].seatStatus = ASSIGNED] (0:0:1 - 0)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus;
		now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus = 1;
#ifdef VAR_RANGES
		logval("seats[crs:receivedSeat].seatStatus", now.seats[ Index(((P0 *)_this)->receivedSeat, 3) ].seatStatus);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 30 - Pessimistic.pml:89 - [crsToClient[receivedCustomerId]!SUCCESS_SEAT,receivedSeat,receivedCustomerId] (0:0:0 - 0)
		IfNotBlocked
		reached[0][30] = 1;
		if (q_full(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ]);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedSeat); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->receivedCustomerId); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.crsToClient[ Index(((P0 *)_this)->receivedCustomerId, 4) ], 0, 5, ((P0 *)_this)->receivedSeat, ((P0 *)_this)->receivedCustomerId, 3);
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 31 - Pessimistic.pml:90 - [assignedSeats = (assignedSeats+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->assignedSeats;
		((P0 *)_this)->assignedSeats = (((P0 *)_this)->assignedSeats+1);
#ifdef VAR_RANGES
		logval("crs:assignedSeats", ((P0 *)_this)->assignedSeats);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 37 - Pessimistic.pml:95 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][37] = 1;
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

