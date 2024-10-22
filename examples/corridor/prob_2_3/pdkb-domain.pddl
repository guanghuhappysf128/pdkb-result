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
        (Ba_Ba_not_secret)
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
        (Pc_Pc_secret)
        (Pc_secret)
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

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #63453: origin
                    (not_at_l1)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #28421: origin
                    (not_at_l2)

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #42096: origin
                    (not_at_l3)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #71785: origin
                    (not_at_l4)

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #63453: origin
                    (not_at_l1)

                    ; #73965: origin
                    (at_l2)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #28421: origin
                    (not_at_l2)

                    ; #73965: origin
                    (at_l2)

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #42096: origin
                    (not_at_l3)

                    ; #73965: origin
                    (at_l2)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #71785: origin
                    (not_at_l4)

                    ; #73965: origin
                    (at_l2)

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #63453: origin
                    (not_at_l1)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #28421: origin
                    (not_at_l2)

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #42096: origin
                    (not_at_l3)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #71785: origin
                    (not_at_l4)

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #63453: origin
                    (not_at_l1)

                    ; #95875: origin
                    (at_l4)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #28421: origin
                    (not_at_l2)

                    ; #95875: origin
                    (at_l4)

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #42096: origin
                    (not_at_l3)

                    ; #95875: origin
                    (at_l4)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #71785: origin
                    (not_at_l4)

                    ; #95875: origin
                    (at_l4)

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #63453: origin
                    (not_at_l1)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #63453: origin
                    (not_at_l1)

                    ; #73965: origin
                    (at_l2)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #63453: origin
                    (not_at_l1)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #63453: origin
                    (not_at_l1)

                    ; #95875: origin
                    (at_l4)

                    ; #20432: <==negation-removal== 63453 (pos)
                    (not (at_l1))

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #28421: origin
                    (not_at_l2)

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #28421: origin
                    (not_at_l2)

                    ; #73965: origin
                    (at_l2)

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (at_l2)
                           (succ_l2_l3))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #28421: origin
                    (not_at_l2)

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #28421: origin
                    (not_at_l2)

                    ; #95875: origin
                    (at_l4)

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))

                    ; #73965: <==negation-removal== 28421 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #42096: origin
                    (not_at_l3)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #42096: origin
                    (not_at_l3)

                    ; #73965: origin
                    (at_l2)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #42096: origin
                    (not_at_l3)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #42096: origin
                    (not_at_l3)

                    ; #95875: origin
                    (at_l4)

                    ; #19924: <==negation-removal== 42096 (pos)
                    (not (at_l3))

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #20432: origin
                    (at_l1)

                    ; #71785: origin
                    (not_at_l4)

                    ; #63453: <==negation-removal== 20432 (pos)
                    (not (not_at_l1))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #71785: origin
                    (not_at_l4)

                    ; #73965: origin
                    (at_l2)

                    ; #28421: <==negation-removal== 73965 (pos)
                    (not (not_at_l2))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #19924: origin
                    (at_l3)

                    ; #71785: origin
                    (not_at_l4)

                    ; #42096: <==negation-removal== 19924 (pos)
                    (not (not_at_l3))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #71785: origin
                    (not_at_l4)

                    ; #95875: origin
                    (at_l4)

                    ; #71785: <==negation-removal== 95875 (pos)
                    (not (not_at_l4))

                    ; #95875: <==negation-removal== 71785 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #27371: origin
                    (Ba_secret)

                    ; #30032: <==closure== 27371 (pos)
                    (Pa_secret)

                    ; #36488: <==closure== 68456 (pos)
                    (Pb_Pa_secret)

                    ; #51404: <==closure== 67048 (pos)
                    (Pc_Pa_secret)

                    ; #55338: <==commonly_known== 30032 (pos)
                    (Bb_Pa_secret)

                    ; #60443: <==commonly_known== 30032 (pos)
                    (Bc_Pa_secret)

                    ; #67048: <==commonly_known== 27371 (pos)
                    (Bc_Ba_secret)

                    ; #68456: <==commonly_known== 27371 (pos)
                    (Bb_Ba_secret)

                    ; #74708: <==commonly_known== 80759 (neg)
                    (Pb_Ba_secret)

                    ; #88895: <==commonly_known== 80759 (neg)
                    (Pc_Ba_secret)

                    ; #19414: <==negation-removal== 68456 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #28582: <==negation-removal== 88895 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #56981: <==negation-removal== 36488 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #69179: <==negation-removal== 30032 (pos)
                    (not (Ba_not_secret))

                    ; #79762: <==negation-removal== 67048 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #80759: <==negation-removal== 27371 (pos)
                    (not (Pa_not_secret))

                    ; #80821: <==negation-removal== 55338 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #83895: <==negation-removal== 74708 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #84484: <==negation-removal== 51404 (pos)
                    (not (Bc_Ba_not_secret))

                    ; #86837: <==negation-removal== 60443 (pos)
                    (not (Pc_Ba_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #15450: <==closure== 15791 (pos)
                    (Pb_secret)

                    ; #15719: <==closure== 86042 (pos)
                    (Pc_Pb_secret)

                    ; #15791: origin
                    (Bb_secret)

                    ; #16825: <==commonly_known== 30110 (neg)
                    (Pc_Bb_secret)

                    ; #20603: <==commonly_known== 30110 (neg)
                    (Pa_Bb_secret)

                    ; #47062: <==commonly_known== 15450 (pos)
                    (Bc_Pb_secret)

                    ; #51954: <==commonly_known== 15450 (pos)
                    (Ba_Pb_secret)

                    ; #84934: <==closure== 92010 (pos)
                    (Pa_Pb_secret)

                    ; #86042: <==commonly_known== 15791 (pos)
                    (Bc_Bb_secret)

                    ; #92010: <==commonly_known== 15791 (pos)
                    (Ba_Bb_secret)

                    ; #10321: <==negation-removal== 84934 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #12768: <==negation-removal== 15450 (pos)
                    (not (Bb_not_secret))

                    ; #26974: <==negation-removal== 15719 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #30110: <==negation-removal== 15791 (pos)
                    (not (Pb_not_secret))

                    ; #48213: <==negation-removal== 16825 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #51232: <==negation-removal== 47062 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #60495: <==negation-removal== 51954 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #70486: <==negation-removal== 86042 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #91254: <==negation-removal== 92010 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #92084: <==negation-removal== 20603 (pos)
                    (not (Ba_Pb_not_secret))))

    (:action shout-2
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l2))
        :effect (and
                    ; #12044: <==commonly_known== 58870 (neg)
                    (Pb_Bc_secret)

                    ; #13567: <==closure== 79729 (pos)
                    (Pc_secret)

                    ; #15450: <==closure== 15791 (pos)
                    (Pb_secret)

                    ; #15719: <==closure== 86042 (pos)
                    (Pc_Pb_secret)

                    ; #15791: origin
                    (Bb_secret)

                    ; #16825: <==commonly_known== 30110 (neg)
                    (Pc_Bb_secret)

                    ; #17559: <==commonly_known== 58870 (neg)
                    (Pa_Bc_secret)

                    ; #20603: <==commonly_known== 30110 (neg)
                    (Pa_Bb_secret)

                    ; #23183: <==commonly_known== 79729 (pos)
                    (Ba_Bc_secret)

                    ; #47062: <==commonly_known== 15450 (pos)
                    (Bc_Pb_secret)

                    ; #49774: <==commonly_known== 13567 (pos)
                    (Ba_Pc_secret)

                    ; #51954: <==commonly_known== 15450 (pos)
                    (Ba_Pb_secret)

                    ; #54245: <==commonly_known== 13567 (pos)
                    (Bb_Pc_secret)

                    ; #57076: <==closure== 73046 (pos)
                    (Pb_Pc_secret)

                    ; #73046: <==commonly_known== 79729 (pos)
                    (Bb_Bc_secret)

                    ; #79729: origin
                    (Bc_secret)

                    ; #81448: <==closure== 23183 (pos)
                    (Pa_Pc_secret)

                    ; #84934: <==closure== 92010 (pos)
                    (Pa_Pb_secret)

                    ; #86042: <==commonly_known== 15791 (pos)
                    (Bc_Bb_secret)

                    ; #92010: <==commonly_known== 15791 (pos)
                    (Ba_Bb_secret)

                    ; #10321: <==negation-removal== 84934 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #10380: <==negation-removal== 12044 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #10820: <==negation-removal== 73046 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #12768: <==negation-removal== 15450 (pos)
                    (not (Bb_not_secret))

                    ; #26974: <==negation-removal== 15719 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #30110: <==negation-removal== 15791 (pos)
                    (not (Pb_not_secret))

                    ; #31099: <==negation-removal== 49774 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #42790: <==negation-removal== 54245 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #44551: <==negation-removal== 13567 (pos)
                    (not (Bc_not_secret))

                    ; #48213: <==negation-removal== 16825 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #51232: <==negation-removal== 47062 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #58870: <==negation-removal== 79729 (pos)
                    (not (Pc_not_secret))

                    ; #59174: <==negation-removal== 17559 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #60495: <==negation-removal== 51954 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #63834: <==negation-removal== 81448 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #66237: <==negation-removal== 57076 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #70486: <==negation-removal== 86042 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #83013: <==negation-removal== 23183 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #91254: <==negation-removal== 92010 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #92084: <==negation-removal== 20603 (pos)
                    (not (Ba_Pb_not_secret))))

    (:action shout-3
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l3))
        :effect (and
                    ; #12044: <==commonly_known== 58870 (neg)
                    (Pb_Bc_secret)

                    ; #13567: <==closure== 79729 (pos)
                    (Pc_secret)

                    ; #15450: <==closure== 15791 (pos)
                    (Pb_secret)

                    ; #15719: <==closure== 86042 (pos)
                    (Pc_Pb_secret)

                    ; #15791: origin
                    (Bb_secret)

                    ; #16825: <==commonly_known== 30110 (neg)
                    (Pc_Bb_secret)

                    ; #17559: <==commonly_known== 58870 (neg)
                    (Pa_Bc_secret)

                    ; #20603: <==commonly_known== 30110 (neg)
                    (Pa_Bb_secret)

                    ; #23183: <==commonly_known== 79729 (pos)
                    (Ba_Bc_secret)

                    ; #47062: <==commonly_known== 15450 (pos)
                    (Bc_Pb_secret)

                    ; #49774: <==commonly_known== 13567 (pos)
                    (Ba_Pc_secret)

                    ; #51954: <==commonly_known== 15450 (pos)
                    (Ba_Pb_secret)

                    ; #54245: <==commonly_known== 13567 (pos)
                    (Bb_Pc_secret)

                    ; #57076: <==closure== 73046 (pos)
                    (Pb_Pc_secret)

                    ; #73046: <==commonly_known== 79729 (pos)
                    (Bb_Bc_secret)

                    ; #79729: origin
                    (Bc_secret)

                    ; #81448: <==closure== 23183 (pos)
                    (Pa_Pc_secret)

                    ; #84934: <==closure== 92010 (pos)
                    (Pa_Pb_secret)

                    ; #86042: <==commonly_known== 15791 (pos)
                    (Bc_Bb_secret)

                    ; #92010: <==commonly_known== 15791 (pos)
                    (Ba_Bb_secret)

                    ; #10321: <==negation-removal== 84934 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #10380: <==negation-removal== 12044 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #10820: <==negation-removal== 73046 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #12768: <==negation-removal== 15450 (pos)
                    (not (Bb_not_secret))

                    ; #26974: <==negation-removal== 15719 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #30110: <==negation-removal== 15791 (pos)
                    (not (Pb_not_secret))

                    ; #31099: <==negation-removal== 49774 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #42790: <==negation-removal== 54245 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #44551: <==negation-removal== 13567 (pos)
                    (not (Bc_not_secret))

                    ; #48213: <==negation-removal== 16825 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #51232: <==negation-removal== 47062 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #58870: <==negation-removal== 79729 (pos)
                    (not (Pc_not_secret))

                    ; #59174: <==negation-removal== 17559 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #60495: <==negation-removal== 51954 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #63834: <==negation-removal== 81448 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #66237: <==negation-removal== 57076 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #70486: <==negation-removal== 86042 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #83013: <==negation-removal== 23183 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #91254: <==negation-removal== 92010 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #92084: <==negation-removal== 20603 (pos)
                    (not (Ba_Pb_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #12044: <==commonly_known== 58870 (neg)
                    (Pb_Bc_secret)

                    ; #13567: <==closure== 79729 (pos)
                    (Pc_secret)

                    ; #17559: <==commonly_known== 58870 (neg)
                    (Pa_Bc_secret)

                    ; #23183: <==commonly_known== 79729 (pos)
                    (Ba_Bc_secret)

                    ; #49774: <==commonly_known== 13567 (pos)
                    (Ba_Pc_secret)

                    ; #54245: <==commonly_known== 13567 (pos)
                    (Bb_Pc_secret)

                    ; #57076: <==closure== 73046 (pos)
                    (Pb_Pc_secret)

                    ; #73046: <==commonly_known== 79729 (pos)
                    (Bb_Bc_secret)

                    ; #79729: origin
                    (Bc_secret)

                    ; #81448: <==closure== 23183 (pos)
                    (Pa_Pc_secret)

                    ; #10380: <==negation-removal== 12044 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #10820: <==negation-removal== 73046 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #31099: <==negation-removal== 49774 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #42790: <==negation-removal== 54245 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #44551: <==negation-removal== 13567 (pos)
                    (not (Bc_not_secret))

                    ; #58870: <==negation-removal== 79729 (pos)
                    (not (Pc_not_secret))

                    ; #59174: <==negation-removal== 17559 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #63834: <==negation-removal== 81448 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #66237: <==negation-removal== 57076 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #83013: <==negation-removal== 23183 (pos)
                    (not (Pa_Pc_not_secret))))

)