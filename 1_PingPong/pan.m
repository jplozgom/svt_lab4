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

		 /* PROC :init: */
	case 3: // STATE 1 - PingPong.pml:111 - [(run Referee())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - PingPong.pml:112 - [(run Player1())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - PingPong.pml:113 - [(run Player2())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - PingPong.pml:114 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player2 */
	case 7: // STATE 1 - PingPong.pml:58 - [printf('hi I am player 2')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		Printf("hi I am player 2");
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 2 - PingPong.pml:64 - [chRefToPs?BALL] (0:0:0 - 1)
		reached[2][2] = 1;
		if (q_len(now.chRefToPs) == 0) continue;

		XX=1;
		if (1 != qrecv(now.chRefToPs, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.chRefToPs-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.chRefToPs, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.chRefToPs);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 3 - PingPong.pml:65 - [printf('P2 receives ball from ref')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		Printf("P2 receives ball from ref");
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 4 - PingPong.pml:66 - [chP1ToP2?BALL] (0:0:0 - 1)
		reached[2][4] = 1;
		if (q_len(now.chP1ToP2) == 0) continue;

		XX=1;
		if (1 != qrecv(now.chP1ToP2, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.chP1ToP2-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.chP1ToP2, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.chP1ToP2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 5 - PingPong.pml:67 - [printf('P2 receives from P1')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		Printf("P2 receives from P1");
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - PingPong.pml:70 - [pActiveBalls[0] = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((int)pActiveBalls[0]);
		pActiveBalls[0] = 0;
#ifdef VAR_RANGES
		logval("pActiveBalls[0]", ((int)pActiveBalls[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 9 - PingPong.pml:71 - [pActiveBalls[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		(trpt+1)->bup.oval = ((int)pActiveBalls[1]);
		pActiveBalls[1] = 1;
#ifdef VAR_RANGES
		logval("pActiveBalls[1]", ((int)pActiveBalls[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 10 - PingPong.pml:73 - [printf('P2 receives from P1, send ball ... P2 -> P1')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		Printf("P2 receives from P1, send ball ... P2 -> P1");
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - PingPong.pml:74 - [chP2ToP1!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (q_full(now.chP2ToP1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chP2ToP1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chP2ToP1, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 15 - PingPong.pml:77 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player1 */
	case 17: // STATE 1 - PingPong.pml:35 - [printf('hi I am player 1')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("hi I am player 1");
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 2 - PingPong.pml:42 - [chRefToPs?BALL] (0:0:0 - 1)
		reached[1][2] = 1;
		if (q_len(now.chRefToPs) == 0) continue;

		XX=1;
		if (1 != qrecv(now.chRefToPs, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.chRefToPs-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.chRefToPs, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.chRefToPs);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 3 - PingPong.pml:43 - [printf('P1 receives ball from ref')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		Printf("P1 receives ball from ref");
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 4 - PingPong.pml:44 - [chP2ToP1?BALL] (0:0:0 - 1)
		reached[1][4] = 1;
		if (q_len(now.chP2ToP1) == 0) continue;

		XX=1;
		if (1 != qrecv(now.chP2ToP1, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.chP2ToP1-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.chP2ToP1, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.chP2ToP1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 5 - PingPong.pml:45 - [printf('P1 receives from P2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		Printf("P1 receives from P2");
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - PingPong.pml:48 - [pActiveBalls[1] = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)pActiveBalls[1]);
		pActiveBalls[1] = 0;
#ifdef VAR_RANGES
		logval("pActiveBalls[1]", ((int)pActiveBalls[1]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 9 - PingPong.pml:49 - [pActiveBalls[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)pActiveBalls[0]);
		pActiveBalls[0] = 1;
#ifdef VAR_RANGES
		logval("pActiveBalls[0]", ((int)pActiveBalls[0]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 10 - PingPong.pml:51 - [printf('P1 receives from P2, send ball ... P1 -> P2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		Printf("P1 receives from P2, send ball ... P1 -> P2");
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 11 - PingPong.pml:52 - [chP1ToP2!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (q_full(now.chP1ToP2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chP1ToP2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chP1ToP2, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 15 - PingPong.pml:55 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Referee */
	case 27: // STATE 1 - PingPong.pml:30 - [chRefToPs!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.chRefToPs))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chRefToPs);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chRefToPs, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 2 - PingPong.pml:32 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
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

