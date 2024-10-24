(define (domain corridor)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_l1)
        (not_at_l2)
        (not_at_l3)
        (not_at_l4)
        (not_secret)
        (not_succ_l1_l1)
        (not_succ_l1_l2)
        (not_succ_l1_l3)
        (not_succ_l1_l4)
        (not_succ_l2_l1)
        (not_succ_l2_l2)
        (not_succ_l2_l3)
        (not_succ_l2_l4)
        (not_succ_l3_l1)
        (not_succ_l3_l2)
        (not_succ_l3_l3)
        (not_succ_l3_l4)
        (not_succ_l4_l1)
        (not_succ_l4_l2)
        (not_succ_l4_l3)
        (not_succ_l4_l4)
        (Ba_not_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_secret)
        (Bd_not_secret)
        (Bd_secret)
        (Be_not_secret)
        (Be_secret)
        (Bf_not_secret)
        (Bf_secret)
        (Bg_not_secret)
        (Bg_secret)
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
        (Pd_not_secret)
        (Pd_secret)
        (Pe_not_secret)
        (Pe_secret)
        (Pf_not_secret)
        (Pf_secret)
        (Pg_not_secret)
        (Pg_secret)
        (at_l1)
        (at_l2)
        (at_l3)
        (at_l4)
        (secret)
        (succ_l1_l1)
        (succ_l1_l2)
        (succ_l1_l3)
        (succ_l1_l4)
        (succ_l2_l1)
        (succ_l2_l2)
        (succ_l2_l3)
        (succ_l2_l4)
        (succ_l3_l1)
        (succ_l3_l2)
        (succ_l3_l3)
        (succ_l3_l4)
        (succ_l4_l1)
        (succ_l4_l2)
        (succ_l4_l3)
        (succ_l4_l4)
    )

    (:action fib-1
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #29505: origin
                    (Bd_not_secret)

                    ; #36907: <==closure== 73997 (pos)
                    (Pb_not_secret)

                    ; #39859: <==closure== 84924 (pos)
                    (Pf_not_secret)

                    ; #61054: <==closure== 29505 (pos)
                    (Pd_not_secret)

                    ; #73997: origin
                    (Bb_not_secret)

                    ; #84924: origin
                    (Bf_not_secret)

                    ; #22158: <==negation-removal== 29505 (pos)
                    (not (Pd_secret))

                    ; #28099: <==negation-removal== 39859 (pos)
                    (not (Bf_secret))

                    ; #42251: <==negation-removal== 73997 (pos)
                    (not (Pb_secret))

                    ; #57910: <==negation-removal== 84924 (pos)
                    (not (Pf_secret))

                    ; #61435: <==negation-removal== 61054 (pos)
                    (not (Bd_secret))

                    ; #75720: <==negation-removal== 36907 (pos)
                    (not (Bb_secret))))

    (:action fib-2
        :precondition (and (at_l2)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #29505: origin
                    (Bd_not_secret)

                    ; #36907: <==closure== 73997 (pos)
                    (Pb_not_secret)

                    ; #39859: <==closure== 84924 (pos)
                    (Pf_not_secret)

                    ; #48171: <==closure== 70756 (pos)
                    (Pc_not_secret)

                    ; #61054: <==closure== 29505 (pos)
                    (Pd_not_secret)

                    ; #70756: origin
                    (Bc_not_secret)

                    ; #73997: origin
                    (Bb_not_secret)

                    ; #77725: <==closure== 90783 (pos)
                    (Pe_not_secret)

                    ; #84924: origin
                    (Bf_not_secret)

                    ; #90783: origin
                    (Be_not_secret)

                    ; #22158: <==negation-removal== 29505 (pos)
                    (not (Pd_secret))

                    ; #28099: <==negation-removal== 39859 (pos)
                    (not (Bf_secret))

                    ; #42251: <==negation-removal== 73997 (pos)
                    (not (Pb_secret))

                    ; #57910: <==negation-removal== 84924 (pos)
                    (not (Pf_secret))

                    ; #61435: <==negation-removal== 61054 (pos)
                    (not (Bd_secret))

                    ; #63218: <==negation-removal== 70756 (pos)
                    (not (Pc_secret))

                    ; #65072: <==negation-removal== 77725 (pos)
                    (not (Be_secret))

                    ; #74640: <==negation-removal== 90783 (pos)
                    (not (Pe_secret))

                    ; #75720: <==negation-removal== 36907 (pos)
                    (not (Bb_secret))

                    ; #83096: <==negation-removal== 48171 (pos)
                    (not (Bc_secret))))

    (:action fib-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #36907: <==closure== 73997 (pos)
                    (Pb_not_secret)

                    ; #39859: <==closure== 84924 (pos)
                    (Pf_not_secret)

                    ; #41981: <==closure== 45447 (pos)
                    (Pg_not_secret)

                    ; #45447: origin
                    (Bg_not_secret)

                    ; #48171: <==closure== 70756 (pos)
                    (Pc_not_secret)

                    ; #70756: origin
                    (Bc_not_secret)

                    ; #73997: origin
                    (Bb_not_secret)

                    ; #77725: <==closure== 90783 (pos)
                    (Pe_not_secret)

                    ; #84924: origin
                    (Bf_not_secret)

                    ; #90783: origin
                    (Be_not_secret)

                    ; #28099: <==negation-removal== 39859 (pos)
                    (not (Bf_secret))

                    ; #41190: <==negation-removal== 45447 (pos)
                    (not (Pg_secret))

                    ; #42251: <==negation-removal== 73997 (pos)
                    (not (Pb_secret))

                    ; #57910: <==negation-removal== 84924 (pos)
                    (not (Pf_secret))

                    ; #63218: <==negation-removal== 70756 (pos)
                    (not (Pc_secret))

                    ; #65072: <==negation-removal== 77725 (pos)
                    (not (Be_secret))

                    ; #74640: <==negation-removal== 90783 (pos)
                    (not (Pe_secret))

                    ; #75720: <==negation-removal== 36907 (pos)
                    (not (Bb_secret))

                    ; #76660: <==negation-removal== 41981 (pos)
                    (not (Bg_secret))

                    ; #83096: <==negation-removal== 48171 (pos)
                    (not (Bc_secret))))

    (:action fib-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #41981: <==closure== 45447 (pos)
                    (Pg_not_secret)

                    ; #45447: origin
                    (Bg_not_secret)

                    ; #48171: <==closure== 70756 (pos)
                    (Pc_not_secret)

                    ; #70756: origin
                    (Bc_not_secret)

                    ; #77725: <==closure== 90783 (pos)
                    (Pe_not_secret)

                    ; #90783: origin
                    (Be_not_secret)

                    ; #41190: <==negation-removal== 45447 (pos)
                    (not (Pg_secret))

                    ; #63218: <==negation-removal== 70756 (pos)
                    (not (Pc_secret))

                    ; #65072: <==negation-removal== 77725 (pos)
                    (not (Be_secret))

                    ; #74640: <==negation-removal== 90783 (pos)
                    (not (Pe_secret))

                    ; #76660: <==negation-removal== 41981 (pos)
                    (not (Bg_secret))

                    ; #83096: <==negation-removal== 48171 (pos)
                    (not (Bc_secret))))

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #34543: origin
                    (not_at_l1)

                    ; #77512: origin
                    (at_l1)

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #23252: origin
                    (not_at_l2)

                    ; #77512: origin
                    (at_l1)

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #75603: origin
                    (not_at_l3)

                    ; #77512: origin
                    (at_l1)

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #52211: origin
                    (not_at_l4)

                    ; #77512: origin
                    (at_l1)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #34543: origin
                    (not_at_l1)

                    ; #73863: origin
                    (at_l2)

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #23252: origin
                    (not_at_l2)

                    ; #73863: origin
                    (at_l2)

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #73863: origin
                    (at_l2)

                    ; #75603: origin
                    (not_at_l3)

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #52211: origin
                    (not_at_l4)

                    ; #73863: origin
                    (at_l2)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #34543: origin
                    (not_at_l1)

                    ; #53834: origin
                    (at_l3)

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #23252: origin
                    (not_at_l2)

                    ; #53834: origin
                    (at_l3)

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #53834: origin
                    (at_l3)

                    ; #75603: origin
                    (not_at_l3)

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #52211: origin
                    (not_at_l4)

                    ; #53834: origin
                    (at_l3)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #34543: origin
                    (not_at_l1)

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #23252: origin
                    (not_at_l2)

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #75603: origin
                    (not_at_l3)

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #52211: origin
                    (not_at_l4)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #34543: origin
                    (not_at_l1)

                    ; #77512: origin
                    (at_l1)

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #34543: origin
                    (not_at_l1)

                    ; #73863: origin
                    (at_l2)

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #34543: origin
                    (not_at_l1)

                    ; #53834: origin
                    (at_l3)

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #34543: origin
                    (not_at_l1)

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))

                    ; #77512: <==negation-removal== 34543 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #23252: origin
                    (not_at_l2)

                    ; #77512: origin
                    (at_l1)

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #23252: origin
                    (not_at_l2)

                    ; #73863: origin
                    (at_l2)

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (at_l2)
                           (succ_l2_l3))
        :effect (and
                    ; #23252: origin
                    (not_at_l2)

                    ; #53834: origin
                    (at_l3)

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #23252: origin
                    (not_at_l2)

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))

                    ; #73863: <==negation-removal== 23252 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #75603: origin
                    (not_at_l3)

                    ; #77512: origin
                    (at_l1)

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #73863: origin
                    (at_l2)

                    ; #75603: origin
                    (not_at_l3)

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #53834: origin
                    (at_l3)

                    ; #75603: origin
                    (not_at_l3)

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #75603: origin
                    (not_at_l3)

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))

                    ; #53834: <==negation-removal== 75603 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #52211: origin
                    (not_at_l4)

                    ; #77512: origin
                    (at_l1)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #34543: <==negation-removal== 77512 (pos)
                    (not (not_at_l1))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #52211: origin
                    (not_at_l4)

                    ; #73863: origin
                    (at_l2)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #23252: <==negation-removal== 73863 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #52211: origin
                    (not_at_l4)

                    ; #53834: origin
                    (at_l3)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #75603: <==negation-removal== 53834 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #15046: origin
                    (at_l4)

                    ; #52211: origin
                    (not_at_l4)

                    ; #15046: <==negation-removal== 52211 (pos)
                    (not (at_l4))

                    ; #52211: <==negation-removal== 15046 (pos)
                    (not (not_at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #70795: <==closure== 91572 (pos)
                    (Pa_secret)

                    ; #91572: origin
                    (Ba_secret)

                    ; #36792: <==negation-removal== 70795 (pos)
                    (not (Ba_not_secret))

                    ; #73503: <==negation-removal== 91572 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #22158: <==closure== 61435 (pos)
                    (Pd_secret)

                    ; #28099: origin
                    (Bf_secret)

                    ; #42251: <==closure== 75720 (pos)
                    (Pb_secret)

                    ; #57910: <==closure== 28099 (pos)
                    (Pf_secret)

                    ; #61435: origin
                    (Bd_secret)

                    ; #75720: origin
                    (Bb_secret)

                    ; #29505: <==negation-removal== 22158 (pos)
                    (not (Bd_not_secret))

                    ; #36907: <==negation-removal== 75720 (pos)
                    (not (Pb_not_secret))

                    ; #39859: <==negation-removal== 28099 (pos)
                    (not (Pf_not_secret))

                    ; #61054: <==negation-removal== 61435 (pos)
                    (not (Pd_not_secret))

                    ; #73997: <==negation-removal== 42251 (pos)
                    (not (Bb_not_secret))

                    ; #84924: <==negation-removal== 57910 (pos)
                    (not (Bf_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #22158: <==closure== 61435 (pos)
                    (Pd_secret)

                    ; #28099: origin
                    (Bf_secret)

                    ; #42251: <==closure== 75720 (pos)
                    (Pb_secret)

                    ; #57910: <==closure== 28099 (pos)
                    (Pf_secret)

                    ; #61435: origin
                    (Bd_secret)

                    ; #63218: <==closure== 83096 (pos)
                    (Pc_secret)

                    ; #65072: origin
                    (Be_secret)

                    ; #74640: <==closure== 65072 (pos)
                    (Pe_secret)

                    ; #75720: origin
                    (Bb_secret)

                    ; #83096: origin
                    (Bc_secret)

                    ; #29505: <==negation-removal== 22158 (pos)
                    (not (Bd_not_secret))

                    ; #36907: <==negation-removal== 75720 (pos)
                    (not (Pb_not_secret))

                    ; #39859: <==negation-removal== 28099 (pos)
                    (not (Pf_not_secret))

                    ; #48171: <==negation-removal== 83096 (pos)
                    (not (Pc_not_secret))

                    ; #61054: <==negation-removal== 61435 (pos)
                    (not (Pd_not_secret))

                    ; #70756: <==negation-removal== 63218 (pos)
                    (not (Bc_not_secret))

                    ; #73997: <==negation-removal== 42251 (pos)
                    (not (Bb_not_secret))

                    ; #77725: <==negation-removal== 65072 (pos)
                    (not (Pe_not_secret))

                    ; #84924: <==negation-removal== 57910 (pos)
                    (not (Bf_not_secret))

                    ; #90783: <==negation-removal== 74640 (pos)
                    (not (Be_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #28099: origin
                    (Bf_secret)

                    ; #41190: <==closure== 76660 (pos)
                    (Pg_secret)

                    ; #42251: <==closure== 75720 (pos)
                    (Pb_secret)

                    ; #57910: <==closure== 28099 (pos)
                    (Pf_secret)

                    ; #63218: <==closure== 83096 (pos)
                    (Pc_secret)

                    ; #65072: origin
                    (Be_secret)

                    ; #74640: <==closure== 65072 (pos)
                    (Pe_secret)

                    ; #75720: origin
                    (Bb_secret)

                    ; #76660: origin
                    (Bg_secret)

                    ; #83096: origin
                    (Bc_secret)

                    ; #36907: <==negation-removal== 75720 (pos)
                    (not (Pb_not_secret))

                    ; #39859: <==negation-removal== 28099 (pos)
                    (not (Pf_not_secret))

                    ; #41981: <==negation-removal== 76660 (pos)
                    (not (Pg_not_secret))

                    ; #45447: <==negation-removal== 41190 (pos)
                    (not (Bg_not_secret))

                    ; #48171: <==negation-removal== 83096 (pos)
                    (not (Pc_not_secret))

                    ; #70756: <==negation-removal== 63218 (pos)
                    (not (Bc_not_secret))

                    ; #73997: <==negation-removal== 42251 (pos)
                    (not (Bb_not_secret))

                    ; #77725: <==negation-removal== 65072 (pos)
                    (not (Pe_not_secret))

                    ; #84924: <==negation-removal== 57910 (pos)
                    (not (Bf_not_secret))

                    ; #90783: <==negation-removal== 74640 (pos)
                    (not (Be_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #41190: <==closure== 76660 (pos)
                    (Pg_secret)

                    ; #63218: <==closure== 83096 (pos)
                    (Pc_secret)

                    ; #65072: origin
                    (Be_secret)

                    ; #74640: <==closure== 65072 (pos)
                    (Pe_secret)

                    ; #76660: origin
                    (Bg_secret)

                    ; #83096: origin
                    (Bc_secret)

                    ; #41981: <==negation-removal== 76660 (pos)
                    (not (Pg_not_secret))

                    ; #45447: <==negation-removal== 41190 (pos)
                    (not (Bg_not_secret))

                    ; #48171: <==negation-removal== 83096 (pos)
                    (not (Pc_not_secret))

                    ; #70756: <==negation-removal== 63218 (pos)
                    (not (Bc_not_secret))

                    ; #77725: <==negation-removal== 65072 (pos)
                    (not (Pe_not_secret))

                    ; #90783: <==negation-removal== 74640 (pos)
                    (not (Be_not_secret))))

)