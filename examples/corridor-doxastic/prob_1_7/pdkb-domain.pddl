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
        :precondition (and (at_l1)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #48694: <==closure== 82748 (pos)
                    (Pd_not_secret)

                    ; #74160: origin
                    (Bb_not_secret)

                    ; #78918: <==closure== 74160 (pos)
                    (Pb_not_secret)

                    ; #82748: origin
                    (Bd_not_secret)

                    ; #84487: origin
                    (Bf_not_secret)

                    ; #85522: <==closure== 84487 (pos)
                    (Pf_not_secret)

                    ; #26614: <==negation-removal== 74160 (pos)
                    (not (Pb_secret))

                    ; #29449: <==negation-removal== 48694 (pos)
                    (not (Bd_secret))

                    ; #37499: <==negation-removal== 84487 (pos)
                    (not (Pf_secret))

                    ; #52000: <==negation-removal== 78918 (pos)
                    (not (Bb_secret))

                    ; #63324: <==negation-removal== 85522 (pos)
                    (not (Bf_secret))

                    ; #70308: <==negation-removal== 82748 (pos)
                    (not (Pd_secret))))

    (:action fib-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #21599: origin
                    (Bc_not_secret)

                    ; #30856: <==closure== 41633 (pos)
                    (Pe_not_secret)

                    ; #41633: origin
                    (Be_not_secret)

                    ; #48694: <==closure== 82748 (pos)
                    (Pd_not_secret)

                    ; #65543: <==closure== 21599 (pos)
                    (Pc_not_secret)

                    ; #74160: origin
                    (Bb_not_secret)

                    ; #78918: <==closure== 74160 (pos)
                    (Pb_not_secret)

                    ; #82748: origin
                    (Bd_not_secret)

                    ; #84487: origin
                    (Bf_not_secret)

                    ; #85522: <==closure== 84487 (pos)
                    (Pf_not_secret)

                    ; #11515: <==negation-removal== 21599 (pos)
                    (not (Pc_secret))

                    ; #26614: <==negation-removal== 74160 (pos)
                    (not (Pb_secret))

                    ; #29449: <==negation-removal== 48694 (pos)
                    (not (Bd_secret))

                    ; #37499: <==negation-removal== 84487 (pos)
                    (not (Pf_secret))

                    ; #52000: <==negation-removal== 78918 (pos)
                    (not (Bb_secret))

                    ; #54461: <==negation-removal== 65543 (pos)
                    (not (Bc_secret))

                    ; #63324: <==negation-removal== 85522 (pos)
                    (not (Bf_secret))

                    ; #70308: <==negation-removal== 82748 (pos)
                    (not (Pd_secret))

                    ; #76096: <==negation-removal== 41633 (pos)
                    (not (Pe_secret))

                    ; #85337: <==negation-removal== 30856 (pos)
                    (not (Be_secret))))

    (:action fib-3
        :precondition (and (at_l3)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #20440: <==closure== 57396 (pos)
                    (Pg_not_secret)

                    ; #21599: origin
                    (Bc_not_secret)

                    ; #30856: <==closure== 41633 (pos)
                    (Pe_not_secret)

                    ; #41633: origin
                    (Be_not_secret)

                    ; #57396: origin
                    (Bg_not_secret)

                    ; #65543: <==closure== 21599 (pos)
                    (Pc_not_secret)

                    ; #74160: origin
                    (Bb_not_secret)

                    ; #78918: <==closure== 74160 (pos)
                    (Pb_not_secret)

                    ; #84487: origin
                    (Bf_not_secret)

                    ; #85522: <==closure== 84487 (pos)
                    (Pf_not_secret)

                    ; #11515: <==negation-removal== 21599 (pos)
                    (not (Pc_secret))

                    ; #26614: <==negation-removal== 74160 (pos)
                    (not (Pb_secret))

                    ; #33990: <==negation-removal== 57396 (pos)
                    (not (Pg_secret))

                    ; #37499: <==negation-removal== 84487 (pos)
                    (not (Pf_secret))

                    ; #52000: <==negation-removal== 78918 (pos)
                    (not (Bb_secret))

                    ; #54461: <==negation-removal== 65543 (pos)
                    (not (Bc_secret))

                    ; #63324: <==negation-removal== 85522 (pos)
                    (not (Bf_secret))

                    ; #75172: <==negation-removal== 20440 (pos)
                    (not (Bg_secret))

                    ; #76096: <==negation-removal== 41633 (pos)
                    (not (Pe_secret))

                    ; #85337: <==negation-removal== 30856 (pos)
                    (not (Be_secret))))

    (:action fib-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #20440: <==closure== 57396 (pos)
                    (Pg_not_secret)

                    ; #21599: origin
                    (Bc_not_secret)

                    ; #30856: <==closure== 41633 (pos)
                    (Pe_not_secret)

                    ; #41633: origin
                    (Be_not_secret)

                    ; #57396: origin
                    (Bg_not_secret)

                    ; #65543: <==closure== 21599 (pos)
                    (Pc_not_secret)

                    ; #11515: <==negation-removal== 21599 (pos)
                    (not (Pc_secret))

                    ; #33990: <==negation-removal== 57396 (pos)
                    (not (Pg_secret))

                    ; #54461: <==negation-removal== 65543 (pos)
                    (not (Bc_secret))

                    ; #75172: <==negation-removal== 20440 (pos)
                    (not (Bg_secret))

                    ; #76096: <==negation-removal== 41633 (pos)
                    (not (Pe_secret))

                    ; #85337: <==negation-removal== 30856 (pos)
                    (not (Be_secret))))

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #32301: origin
                    (at_l1)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #32301: origin
                    (at_l1)

                    ; #78993: origin
                    (not_at_l2)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #32301: origin
                    (at_l1)

                    ; #84568: origin
                    (not_at_l3)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #32301: origin
                    (at_l1)

                    ; #40675: origin
                    (not_at_l4)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #37659: origin
                    (at_l2)

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #37659: origin
                    (at_l2)

                    ; #78993: origin
                    (not_at_l2)

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #37659: origin
                    (at_l2)

                    ; #84568: origin
                    (not_at_l3)

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #37659: origin
                    (at_l2)

                    ; #40675: origin
                    (not_at_l4)

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #83722: origin
                    (at_l3)

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #78993: origin
                    (not_at_l2)

                    ; #83722: origin
                    (at_l3)

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #83722: origin
                    (at_l3)

                    ; #84568: origin
                    (not_at_l3)

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #40675: origin
                    (not_at_l4)

                    ; #83722: origin
                    (at_l3)

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #52064: origin
                    (at_l4)

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #52064: origin
                    (at_l4)

                    ; #78993: origin
                    (not_at_l2)

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #52064: origin
                    (at_l4)

                    ; #84568: origin
                    (not_at_l3)

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #40675: origin
                    (not_at_l4)

                    ; #52064: origin
                    (at_l4)

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #32301: origin
                    (at_l1)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #37659: origin
                    (at_l2)

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #83722: origin
                    (at_l3)

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #23803: origin
                    (not_at_l1)

                    ; #52064: origin
                    (at_l4)

                    ; #32301: <==negation-removal== 23803 (pos)
                    (not (at_l1))

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #32301: origin
                    (at_l1)

                    ; #78993: origin
                    (not_at_l2)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #37659: origin
                    (at_l2)

                    ; #78993: origin
                    (not_at_l2)

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #78993: origin
                    (not_at_l2)

                    ; #83722: origin
                    (at_l3)

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #52064: origin
                    (at_l4)

                    ; #78993: origin
                    (not_at_l2)

                    ; #37659: <==negation-removal== 78993 (pos)
                    (not (at_l2))

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #32301: origin
                    (at_l1)

                    ; #84568: origin
                    (not_at_l3)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #37659: origin
                    (at_l2)

                    ; #84568: origin
                    (not_at_l3)

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #83722: origin
                    (at_l3)

                    ; #84568: origin
                    (not_at_l3)

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #52064: origin
                    (at_l4)

                    ; #84568: origin
                    (not_at_l3)

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))

                    ; #83722: <==negation-removal== 84568 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #32301: origin
                    (at_l1)

                    ; #40675: origin
                    (not_at_l4)

                    ; #23803: <==negation-removal== 32301 (pos)
                    (not (not_at_l1))

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #37659: origin
                    (at_l2)

                    ; #40675: origin
                    (not_at_l4)

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))

                    ; #78993: <==negation-removal== 37659 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #40675: origin
                    (not_at_l4)

                    ; #83722: origin
                    (at_l3)

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))

                    ; #84568: <==negation-removal== 83722 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #40675: origin
                    (not_at_l4)

                    ; #52064: origin
                    (at_l4)

                    ; #40675: <==negation-removal== 52064 (pos)
                    (not (not_at_l4))

                    ; #52064: <==negation-removal== 40675 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #26603: <==closure== 73543 (pos)
                    (Pa_secret)

                    ; #73543: origin
                    (Ba_secret)

                    ; #31500: <==negation-removal== 26603 (pos)
                    (not (Ba_not_secret))

                    ; #82909: <==negation-removal== 73543 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #26614: <==closure== 52000 (pos)
                    (Pb_secret)

                    ; #29449: origin
                    (Bd_secret)

                    ; #37499: <==closure== 63324 (pos)
                    (Pf_secret)

                    ; #52000: origin
                    (Bb_secret)

                    ; #63324: origin
                    (Bf_secret)

                    ; #70308: <==closure== 29449 (pos)
                    (Pd_secret)

                    ; #48694: <==negation-removal== 29449 (pos)
                    (not (Pd_not_secret))

                    ; #74160: <==negation-removal== 26614 (pos)
                    (not (Bb_not_secret))

                    ; #78918: <==negation-removal== 52000 (pos)
                    (not (Pb_not_secret))

                    ; #82748: <==negation-removal== 70308 (pos)
                    (not (Bd_not_secret))

                    ; #84487: <==negation-removal== 37499 (pos)
                    (not (Bf_not_secret))

                    ; #85522: <==negation-removal== 63324 (pos)
                    (not (Pf_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #11515: <==closure== 54461 (pos)
                    (Pc_secret)

                    ; #26614: <==closure== 52000 (pos)
                    (Pb_secret)

                    ; #29449: origin
                    (Bd_secret)

                    ; #37499: <==closure== 63324 (pos)
                    (Pf_secret)

                    ; #52000: origin
                    (Bb_secret)

                    ; #54461: origin
                    (Bc_secret)

                    ; #63324: origin
                    (Bf_secret)

                    ; #70308: <==closure== 29449 (pos)
                    (Pd_secret)

                    ; #76096: <==closure== 85337 (pos)
                    (Pe_secret)

                    ; #85337: origin
                    (Be_secret)

                    ; #21599: <==negation-removal== 11515 (pos)
                    (not (Bc_not_secret))

                    ; #30856: <==negation-removal== 85337 (pos)
                    (not (Pe_not_secret))

                    ; #41633: <==negation-removal== 76096 (pos)
                    (not (Be_not_secret))

                    ; #48694: <==negation-removal== 29449 (pos)
                    (not (Pd_not_secret))

                    ; #65543: <==negation-removal== 54461 (pos)
                    (not (Pc_not_secret))

                    ; #74160: <==negation-removal== 26614 (pos)
                    (not (Bb_not_secret))

                    ; #78918: <==negation-removal== 52000 (pos)
                    (not (Pb_not_secret))

                    ; #82748: <==negation-removal== 70308 (pos)
                    (not (Bd_not_secret))

                    ; #84487: <==negation-removal== 37499 (pos)
                    (not (Bf_not_secret))

                    ; #85522: <==negation-removal== 63324 (pos)
                    (not (Pf_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #11515: <==closure== 54461 (pos)
                    (Pc_secret)

                    ; #26614: <==closure== 52000 (pos)
                    (Pb_secret)

                    ; #33990: <==closure== 75172 (pos)
                    (Pg_secret)

                    ; #37499: <==closure== 63324 (pos)
                    (Pf_secret)

                    ; #52000: origin
                    (Bb_secret)

                    ; #54461: origin
                    (Bc_secret)

                    ; #63324: origin
                    (Bf_secret)

                    ; #75172: origin
                    (Bg_secret)

                    ; #76096: <==closure== 85337 (pos)
                    (Pe_secret)

                    ; #85337: origin
                    (Be_secret)

                    ; #20440: <==negation-removal== 75172 (pos)
                    (not (Pg_not_secret))

                    ; #21599: <==negation-removal== 11515 (pos)
                    (not (Bc_not_secret))

                    ; #30856: <==negation-removal== 85337 (pos)
                    (not (Pe_not_secret))

                    ; #41633: <==negation-removal== 76096 (pos)
                    (not (Be_not_secret))

                    ; #57396: <==negation-removal== 33990 (pos)
                    (not (Bg_not_secret))

                    ; #65543: <==negation-removal== 54461 (pos)
                    (not (Pc_not_secret))

                    ; #74160: <==negation-removal== 26614 (pos)
                    (not (Bb_not_secret))

                    ; #78918: <==negation-removal== 52000 (pos)
                    (not (Pb_not_secret))

                    ; #84487: <==negation-removal== 37499 (pos)
                    (not (Bf_not_secret))

                    ; #85522: <==negation-removal== 63324 (pos)
                    (not (Pf_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #11515: <==closure== 54461 (pos)
                    (Pc_secret)

                    ; #33990: <==closure== 75172 (pos)
                    (Pg_secret)

                    ; #54461: origin
                    (Bc_secret)

                    ; #75172: origin
                    (Bg_secret)

                    ; #76096: <==closure== 85337 (pos)
                    (Pe_secret)

                    ; #85337: origin
                    (Be_secret)

                    ; #20440: <==negation-removal== 75172 (pos)
                    (not (Pg_not_secret))

                    ; #21599: <==negation-removal== 11515 (pos)
                    (not (Bc_not_secret))

                    ; #30856: <==negation-removal== 85337 (pos)
                    (not (Pe_not_secret))

                    ; #41633: <==negation-removal== 76096 (pos)
                    (not (Be_not_secret))

                    ; #57396: <==negation-removal== 33990 (pos)
                    (not (Bg_not_secret))

                    ; #65543: <==negation-removal== 54461 (pos)
                    (not (Pc_not_secret))))

)