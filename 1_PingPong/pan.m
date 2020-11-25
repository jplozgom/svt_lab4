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
	case 3: // STATE 1 - PingPong.pml:55 - [(run Referee())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - PingPong.pml:56 - [(run Player(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - PingPong.pml:57 - [(run Player(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - PingPong.pml:58 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player */
	case 7: // STATE 1 - PingPong.pml:35 - [printf('hi I am player %d',playerNumber)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("hi I am player %d", ((P1 *)_this)->playerNumber);
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - PingPong.pml:41 - [chRefToPs?BALL] (0:0:0 - 1)
		reached[1][3] = 1;
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
	case 9: // STATE 4 - PingPong.pml:42 - [printf('send a ball')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("send a ball");
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - PingPong.pml:44 - [((playerNumber==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((P1 *)_this)->playerNumber==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - PingPong.pml:44 - [chP1ToP2!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
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
	case 12: // STATE 7 - PingPong.pml:45 - [((playerNumber==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((P1 *)_this)->playerNumber==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - PingPong.pml:45 - [chP2ToP1!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
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
	case 14: // STATE 11 - PingPong.pml:47 - [chP1ToP2?BALL] (0:0:0 - 1)
		reached[1][11] = 1;
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
	case 15: // STATE 12 - PingPong.pml:47 - [printf('send ball')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("send ball");
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - PingPong.pml:47 - [chP2ToP1!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
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
	case 17: // STATE 14 - PingPong.pml:48 - [chP2ToP1?BALL] (0:0:0 - 1)
		reached[1][14] = 1;
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
	case 18: // STATE 15 - PingPong.pml:48 - [printf('send ball')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("send ball");
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 16 - PingPong.pml:48 - [chP1ToP2!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
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
	case 20: // STATE 22 - PingPong.pml:51 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Referee */
	case 21: // STATE 1 - PingPong.pml:30 - [chRefToPs!BALL] (0:0:0 - 1)
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
	case 22: // STATE 2 - PingPong.pml:32 - [-end-] (0:0:0 - 1)
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

