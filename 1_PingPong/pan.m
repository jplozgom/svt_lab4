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

		 /* CLAIM allBallsCannotBeConstantMustNotFailForCredit */
	case 3: // STATE 1 - _spin_nvr.tmp:28 - [(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==2))] (0:0:0 - 1)
		
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
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:29 - [(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==1))] (0:0:0 - 1)
		
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
		reached[6][3] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:30 - [(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==0))] (0:0:0 - 1)
		
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
		reached[6][5] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:31 - [(!(1))] (12:0:0 - 1)
		
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
		reached[6][7] = 1;
		if (!( !(1)))
			continue;
		/* merge: assert(!(!(1)))(0, 8, 12) */
		reached[6][8] = 1;
		spin_assert( !( !(1)), " !( !(1))", II, tt, t);
		/* merge: .(goto)(0, 13, 12) */
		reached[6][13] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 15 - _spin_nvr.tmp:36 - [(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==2))] (0:0:0 - 1)
		
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
		reached[6][15] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 20 - _spin_nvr.tmp:40 - [(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==1))] (0:0:0 - 1)
		
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
		reached[6][20] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 25 - _spin_nvr.tmp:44 - [(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==0))] (0:0:0 - 1)
		
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
		reached[6][25] = 1;
		if (!(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 30 - _spin_nvr.tmp:48 - [(!(1))] (35:0:0 - 1)
		
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
		reached[6][30] = 1;
		if (!( !(1)))
			continue;
		/* merge: assert(!(!(1)))(0, 31, 35) */
		reached[6][31] = 1;
		spin_assert( !( !(1)), " !( !(1))", II, tt, t);
		/* merge: .(goto)(0, 36, 35) */
		reached[6][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 39 - _spin_nvr.tmp:53 - [-end-] (0:0:0 - 1)
		
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
		reached[6][39] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM initiallyNoBallsMustNotFailForCredit */
	case 12: // STATE 1 - _spin_nvr.tmp:14 - [((!(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==0))||!(1)))] (6:0:0 - 1)
		
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
		if (!(( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==0))|| !(1))))
			continue;
		/* merge: assert(!((!(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==0))||!(1))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !(( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==0))|| !(1))), " !(( !(((((q_len(chP1ToP2)+q_len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==0))|| !(1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 9 - _spin_nvr.tmp:19 - [(!(1))] (14:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][9] = 1;
		if (!( !(1)))
			continue;
		/* merge: assert(!(!(1)))(0, 10, 14) */
		reached[5][10] = 1;
		spin_assert( !( !(1)), " !( !(1))", II, tt, t);
		/* merge: .(goto)(0, 15, 14) */
		reached[5][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 18 - _spin_nvr.tmp:24 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM singleBallForever */
	case 15: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==0)))&&!(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==1))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==0)))&& !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:8 - [(!(((((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1])==1)))] (0:0:0 - 1)
		
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
		if (!( !(((((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 18: // STATE 1 - PingPong.pml:91 - [(run Referee())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - PingPong.pml:92 - [(run Player1())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - PingPong.pml:93 - [(run Player2())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 4 - PingPong.pml:95 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player2 */
	case 22: // STATE 1 - PingPong.pml:67 - [printf('hi I am player 2')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		Printf("hi I am player 2");
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 2 - PingPong.pml:73 - [chRefToPs?BALL] (0:0:0 - 1)
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
	case 24: // STATE 3 - PingPong.pml:74 - [pActiveBalls[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = now.pActiveBalls[1];
		now.pActiveBalls[1] = 1;
#ifdef VAR_RANGES
		logval("pActiveBalls[1]", now.pActiveBalls[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 4 - PingPong.pml:75 - [printf('P2 receives ball from ref')] (0:13:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		Printf("P2 receives ball from ref");
		/* merge: .(goto)(13, 9, 13) */
		reached[2][9] = 1;
		;
		/* merge: printf('P2 receives from P1, send ball ... P2 -> P1')(13, 10, 13) */
		reached[2][10] = 1;
		Printf("P2 receives from P1, send ball ... P2 -> P1");
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 5 - PingPong.pml:76 - [chP1ToP2?BALL] (0:0:0 - 1)
		reached[2][5] = 1;
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
	case 27: // STATE 6 - PingPong.pml:77 - [pActiveBalls[1] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = now.pActiveBalls[1];
		now.pActiveBalls[1] = 1;
#ifdef VAR_RANGES
		logval("pActiveBalls[1]", now.pActiveBalls[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 7 - PingPong.pml:78 - [printf('P2 receives ball from P1')] (0:13:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		Printf("P2 receives ball from P1");
		/* merge: .(goto)(13, 9, 13) */
		reached[2][9] = 1;
		;
		/* merge: printf('P2 receives from P1, send ball ... P2 -> P1')(13, 10, 13) */
		reached[2][10] = 1;
		Printf("P2 receives from P1, send ball ... P2 -> P1");
		_m = 3; goto P999; /* 2 */
	case 29: // STATE 10 - PingPong.pml:82 - [printf('P2 receives from P1, send ball ... P2 -> P1')] (0:13:0 - 3)
		IfNotBlocked
		reached[2][10] = 1;
		Printf("P2 receives from P1, send ball ... P2 -> P1");
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 13 - PingPong.pml:83 - [D_STEP83]
		if ((boq != -1) || !(!q_full(now.chP2ToP1)))
			continue;

		reached[2][13] = 1;
		reached[2][t->st] = 1;
		reached[2][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_030_0: /* 2 */
		if (q_full(now.chP2ToP1))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chP2ToP1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chP2ToP1, 0, 1, 1);
S_031_0: /* 2 */
		now.pActiveBalls[1] = 0;
#ifdef VAR_RANGES
		logval("pActiveBalls[1]", now.pActiveBalls[1]);
#endif
		;
		goto S_034_0;
S_034_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 2; goto P999;

	case 31: // STATE 17 - PingPong.pml:88 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player1 */
	case 32: // STATE 1 - PingPong.pml:40 - [printf('hi I am player 1')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("hi I am player 1");
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 2 - PingPong.pml:47 - [chRefToPs?BALL] (0:0:0 - 1)
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
	case 34: // STATE 3 - PingPong.pml:48 - [pActiveBalls[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.pActiveBalls[0];
		now.pActiveBalls[0] = 1;
#ifdef VAR_RANGES
		logval("pActiveBalls[0]", now.pActiveBalls[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 4 - PingPong.pml:49 - [printf('P1 receives ball from ref')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("P1 receives ball from ref");
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 5 - PingPong.pml:50 - [chP2ToP1?BALL] (0:0:0 - 1)
		reached[1][5] = 1;
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
	case 37: // STATE 6 - PingPong.pml:51 - [pActiveBalls[0] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.pActiveBalls[0];
		now.pActiveBalls[0] = 1;
#ifdef VAR_RANGES
		logval("pActiveBalls[0]", now.pActiveBalls[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 7 - PingPong.pml:52 - [printf('P1 receives from P2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		Printf("P1 receives from P2");
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 10 - PingPong.pml:54 - [printf('balls %d \\n',(((len(chP1ToP2)+len(chP2ToP1))+pActiveBalls[0])+pActiveBalls[1]))] (0:0:0 - 3)
		IfNotBlocked
		reached[1][10] = 1;
		Printf("balls %d \n", (((q_len(now.chP1ToP2)+q_len(now.chP2ToP1))+now.pActiveBalls[0])+now.pActiveBalls[1]));
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 11 - PingPong.pml:56 - [printf('P1 receives from P2, send ball ... P1 -> P2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		Printf("P1 receives from P2, send ball ... P1 -> P2");
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 14 - PingPong.pml:57 - [D_STEP57]
		if ((boq != -1) || !(!q_full(now.chP1ToP2)))
			continue;

		reached[1][14] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_013_0: /* 2 */
		if (q_full(now.chP1ToP2))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.chP1ToP2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.chP1ToP2, 0, 1, 1);
S_014_0: /* 2 */
		now.pActiveBalls[0] = 0;
#ifdef VAR_RANGES
		logval("pActiveBalls[0]", now.pActiveBalls[0]);
#endif
		;
		goto S_017_0;
S_017_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 2; goto P999;

	case 42: // STATE 18 - PingPong.pml:64 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Referee */
	case 43: // STATE 1 - PingPong.pml:35 - [chRefToPs!BALL] (0:0:0 - 1)
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
	case 44: // STATE 2 - PingPong.pml:36 - [-end-] (0:0:0 - 1)
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

