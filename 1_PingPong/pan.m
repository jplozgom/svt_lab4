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

		 /* CLAIM sanityCheckForAllBallsMustNotFailForCredit */
	case 3: // STATE 1 - _spin_nvr.tmp:12 - [(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==2))] (0:0:0 - 1)
		
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
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:13 - [(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==1))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:14 - [(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==0))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][5] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:15 - [((!(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==0))||!(1)))] (12:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][7] = 1;
		if (!(( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==0))|| !(1))))
			continue;
		/* merge: assert(!((!(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==0))||!(1))))(0, 8, 12) */
		reached[4][8] = 1;
		spin_assert( !(( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==0))|| !(1))), " !(( !(((((q_len(chP1ToP2)+q_len(chP2ToP1))+q_len(chRefToPs))+ballCount)==0))|| !(1)))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[4][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 15 - _spin_nvr.tmp:20 - [(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==2))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][15] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 20 - _spin_nvr.tmp:24 - [(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==1))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][20] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 25 - _spin_nvr.tmp:28 - [(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)==0))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][25] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 30 - _spin_nvr.tmp:32 - [(!(1))] (35:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][30] = 1;
		if (!( !(1)))
			continue;
		/* merge: assert(!(!(1)))(0, 31, 35) */
		reached[4][31] = 1;
		spin_assert( !( !(1)), " !( !(1))", II, tt, t);
		/* merge: .(goto)(0, 36, 35) */
		reached[4][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 39 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][39] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM alwaysAtMostOneBall */
	case 12: // STATE 1 - _spin_nvr.tmp:3 - [(!(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)<=1)))] (6:0:0 - 1)
		
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
		if (!( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)<=1))))
			continue;
		/* merge: assert(!(!(((((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount)<=1))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount)<=1))), " !( !(((((q_len(chP1ToP2)+q_len(chP2ToP1))+q_len(chRefToPs))+ballCount)<=1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 14: // STATE 1 - BrokenPingPong.pml:79 - [(run Referee())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - BrokenPingPong.pml:80 - [(run Player(1,chP2ToP1,chP1ToP2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, 1, now.chP2ToP1, now.chP1ToP2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - BrokenPingPong.pml:81 - [(run Player(2,chP1ToP2,chP2ToP1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 2, now.chP1ToP2, now.chP2ToP1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 4 - BrokenPingPong.pml:83 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player */
	case 18: // STATE 1 - BrokenPingPong.pml:47 - [printf('hi I am player %d',playerNumber)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("hi I am player %d", ((P1 *)_this)->playerNumber);
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 5 - BrokenPingPong.pml:53 - [D_STEP53]
		if (!(((q_len(now.chRefToPs))
		&& (1 == qrecv(now.chRefToPs, 0, 0, 0)))))
			continue;

		reached[1][5] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_016_0: /* 2 */
		if (q_len(now.chRefToPs) == 0) Uerror("block in d_step seq");

		XX=1;
		if (1 != qrecv(now.chRefToPs, 0, 0, 0)) Uerror("block in d_step seq");
		qrecv(now.chRefToPs, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.chRefToPs);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
S_017_0: /* 2 */
		now.ballCount = (now.ballCount+1);
#ifdef VAR_RANGES
		logval("ballCount", now.ballCount);
#endif
		;
S_018_0: /* 2 */
		Printf("P%d receives ball from ref", ((P1 *)_this)->playerNumber);
		goto S_025_0;
S_025_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 4; goto P999;

	case 20: // STATE 9 - BrokenPingPong.pml:57 - [D_STEP57]
		if (!(((q_len(((P1 *)_this)->receiving))
		&& (1 == qrecv(((P1 *)_this)->receiving, 0, 0, 0)))))
			continue;

		reached[1][9] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_020_0: /* 2 */
		if (q_len(((P1 *)_this)->receiving) == 0) Uerror("block in d_step seq");

		XX=1;
		if (1 != qrecv(((P1 *)_this)->receiving, 0, 0, 0)) Uerror("block in d_step seq");
		qrecv(((P1 *)_this)->receiving, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)_this)->receiving);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
S_021_0: /* 2 */
		now.ballCount = (now.ballCount+1);
#ifdef VAR_RANGES
		logval("ballCount", now.ballCount);
#endif
		;
S_022_0: /* 2 */
		Printf("P%d receives from other player", ((P1 *)_this)->playerNumber);
		goto S_025_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 4; goto P999;

	case 21: // STATE 12 - BrokenPingPong.pml:62 - [printf('balls %d \\n',(((len(chP1ToP2)+len(chP2ToP1))+len(chRefToPs))+ballCount))] (0:0:0 - 3)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("balls %d \n", (((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+q_len(now.chRefToPs))+now.ballCount));
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 13 - BrokenPingPong.pml:64 - [printf('P%d receives from other, send ball to other',playerNumber)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		Printf("P%d receives from other, send ball to other", ((P1 *)_this)->playerNumber);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 16 - BrokenPingPong.pml:65 - [D_STEP65]
		if ((boq != -1) || !(!q_full(((P1 *)_this)->sending)))
			continue;

		reached[1][16] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_028_0: /* 2 */
		if (q_full(((P1 *)_this)->sending))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)_this)->sending);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)_this)->sending, 0, 1, 1);
S_029_0: /* 2 */
		now.ballCount = (now.ballCount-1);
#ifdef VAR_RANGES
		logval("ballCount", now.ballCount);
#endif
		;
		goto S_032_0;
S_032_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 2; goto P999;

	case 24: // STATE 20 - BrokenPingPong.pml:72 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Referee */
	case 25: // STATE 1 - BrokenPingPong.pml:31 - [chRefToPs!BALL] (0:0:0 - 1)
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
	case 26: // STATE 6 - BrokenPingPong.pml:37 - [chP1ToP2?BALL] (0:0:0 - 1)
		reached[0][6] = 1;
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
	case 27: // STATE 7 - BrokenPingPong.pml:38 - [chRefToPs!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
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
	case 28: // STATE 8 - BrokenPingPong.pml:39 - [chP2ToP1?BALL] (0:0:0 - 1)
		reached[0][8] = 1;
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
	case 29: // STATE 9 - BrokenPingPong.pml:40 - [chRefToPs!BALL] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
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
	case 30: // STATE 15 - BrokenPingPong.pml:43 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
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

