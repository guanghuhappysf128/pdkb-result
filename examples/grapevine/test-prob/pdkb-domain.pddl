(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (not_secret_d)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_not_secret_d)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Ba_secret_d)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_not_secret_d)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bb_secret_d)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_not_secret_d)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Bc_secret_d)
        (Bd_not_secret_a)
        (Bd_not_secret_b)
        (Bd_not_secret_c)
        (Bd_not_secret_d)
        (Bd_secret_a)
        (Bd_secret_b)
        (Bd_secret_c)
        (Bd_secret_d)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_not_secret_d)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pa_secret_d)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_not_secret_d)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pb_secret_d)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_not_secret_d)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (Pc_secret_d)
        (Pd_not_secret_a)
        (Pd_not_secret_b)
        (Pd_not_secret_c)
        (Pd_not_secret_d)
        (Pd_secret_a)
        (Pd_secret_b)
        (Pd_secret_c)
        (Pd_secret_d)
        (at_a_l1)
        (at_a_l2)
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (at_d_l1)
        (at_d_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
    )

    (:action move_a_l1_l1
        :precondition (and (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #67268: origin
                    (at_a_l1)

                    ; #77808: origin
                    (not_at_a_l1)

                    ; #67268: <==negation-removal== 77808 (pos)
                    (not (at_a_l1))

                    ; #77808: <==negation-removal== 67268 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #15816: origin
                    (at_a_l2)

                    ; #77808: origin
                    (not_at_a_l1)

                    ; #67268: <==negation-removal== 77808 (pos)
                    (not (at_a_l1))

                    ; #82274: <==negation-removal== 15816 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #67268: origin
                    (at_a_l1)

                    ; #82274: origin
                    (not_at_a_l2)

                    ; #15816: <==negation-removal== 82274 (pos)
                    (not (at_a_l2))

                    ; #77808: <==negation-removal== 67268 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #15816: origin
                    (at_a_l2)

                    ; #82274: origin
                    (not_at_a_l2)

                    ; #15816: <==negation-removal== 82274 (pos)
                    (not (at_a_l2))

                    ; #82274: <==negation-removal== 15816 (pos)
                    (not (not_at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #71632: origin
                    (not_at_b_l1)

                    ; #73224: origin
                    (at_b_l1)

                    ; #71632: <==negation-removal== 73224 (pos)
                    (not (not_at_b_l1))

                    ; #73224: <==negation-removal== 71632 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #27658: origin
                    (at_b_l2)

                    ; #71632: origin
                    (not_at_b_l1)

                    ; #18280: <==negation-removal== 27658 (pos)
                    (not (not_at_b_l2))

                    ; #73224: <==negation-removal== 71632 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #18280: origin
                    (not_at_b_l2)

                    ; #73224: origin
                    (at_b_l1)

                    ; #27658: <==negation-removal== 18280 (pos)
                    (not (at_b_l2))

                    ; #71632: <==negation-removal== 73224 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #18280: origin
                    (not_at_b_l2)

                    ; #27658: origin
                    (at_b_l2)

                    ; #18280: <==negation-removal== 27658 (pos)
                    (not (not_at_b_l2))

                    ; #27658: <==negation-removal== 18280 (pos)
                    (not (at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #63917: origin
                    (not_at_c_l1)

                    ; #82698: origin
                    (at_c_l1)

                    ; #63917: <==negation-removal== 82698 (pos)
                    (not (not_at_c_l1))

                    ; #82698: <==negation-removal== 63917 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #40379: origin
                    (at_c_l2)

                    ; #63917: origin
                    (not_at_c_l1)

                    ; #52975: <==negation-removal== 40379 (pos)
                    (not (not_at_c_l2))

                    ; #82698: <==negation-removal== 63917 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #52975: origin
                    (not_at_c_l2)

                    ; #82698: origin
                    (at_c_l1)

                    ; #40379: <==negation-removal== 52975 (pos)
                    (not (at_c_l2))

                    ; #63917: <==negation-removal== 82698 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #40379: origin
                    (at_c_l2)

                    ; #52975: origin
                    (not_at_c_l2)

                    ; #40379: <==negation-removal== 52975 (pos)
                    (not (at_c_l2))

                    ; #52975: <==negation-removal== 40379 (pos)
                    (not (not_at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (at_d_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #37460: origin
                    (not_at_d_l1)

                    ; #66290: origin
                    (at_d_l1)

                    ; #37460: <==negation-removal== 66290 (pos)
                    (not (not_at_d_l1))

                    ; #66290: <==negation-removal== 37460 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (at_d_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #14451: origin
                    (at_d_l2)

                    ; #37460: origin
                    (not_at_d_l1)

                    ; #53268: <==negation-removal== 14451 (pos)
                    (not (not_at_d_l2))

                    ; #66290: <==negation-removal== 37460 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #53268: origin
                    (not_at_d_l2)

                    ; #66290: origin
                    (at_d_l1)

                    ; #14451: <==negation-removal== 53268 (pos)
                    (not (at_d_l2))

                    ; #37460: <==negation-removal== 66290 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #14451: origin
                    (at_d_l2)

                    ; #53268: origin
                    (not_at_d_l2)

                    ; #14451: <==negation-removal== 53268 (pos)
                    (not (at_d_l2))

                    ; #53268: <==negation-removal== 14451 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (at_a_l1)
                           (Pa_secret_a))
        :effect (and
                    ; #21444: <==closure== 66515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #24366: <==closure== 68097 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #41859: <==closure== 85843 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #42490: <==closure== 84969 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #68097: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #84969: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #85843: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #11464: <==uncertain_firing== 42490 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #14681: <==uncertain_firing== 84969 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #26359: <==uncertain_firing== 24366 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #39766: <==negation-removal== 24366 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #40624: <==uncertain_firing== 68097 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #41291: <==uncertain_firing== 85843 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #42273: <==uncertain_firing== 41859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #59888: <==negation-removal== 21444 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #62023: <==negation-removal== 68097 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #62160: <==negation-removal== 66515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #63268: <==uncertain_firing== 66515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #64031: <==uncertain_firing== 21444 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75893: <==negation-removal== 84969 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #78753: <==negation-removal== 42490 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84871: <==negation-removal== 85843 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #95689: <==negation-removal== 41859 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Ba_secret_a)
                           (at_a_l2)
                           (Pa_secret_a))
        :effect (and
                    ; #24455: <==closure== 87291 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #26972: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #40055: <==closure== 26972 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #47462: <==closure== 54485 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #54485: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #57824: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #58830: <==closure== 57824 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87291: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #18816: <==uncertain_firing== 47462 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #21525: <==negation-removal== 58830 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #21858: <==uncertain_firing== 26972 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #22986: <==uncertain_firing== 57824 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #25410: <==negation-removal== 26972 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #32314: <==uncertain_firing== 87291 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #45896: <==uncertain_firing== 24455 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #47110: <==negation-removal== 24455 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #50125: <==negation-removal== 87291 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #51263: <==negation-removal== 47462 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #64157: <==uncertain_firing== 58830 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #69516: <==uncertain_firing== 40055 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #75124: <==uncertain_firing== 54485 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #82069: <==negation-removal== 54485 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #87346: <==negation-removal== 57824 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #87654: <==negation-removal== 40055 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #20100: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #40145: <==closure== 84092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #42702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #54948: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #56391: <==closure== 54948 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #57254: <==closure== 42702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #84092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #88378: <==closure== 20100 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25387: <==negation-removal== 57254 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #36197: <==uncertain_firing== 84092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #36839: <==uncertain_firing== 56391 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47724: <==negation-removal== 54948 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #49805: <==uncertain_firing== 54948 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #53255: <==negation-removal== 84092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #58513: <==uncertain_firing== 42702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #60305: <==uncertain_firing== 20100 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #64248: <==uncertain_firing== 40145 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #71725: <==negation-removal== 40145 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #76752: <==uncertain_firing== 57254 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #83358: <==uncertain_firing== 88378 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #84475: <==negation-removal== 88378 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #85301: <==negation-removal== 56391 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #90439: <==negation-removal== 42702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #91005: <==negation-removal== 20100 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #24128: <==closure== 81858 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33808: <==closure== 37859 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #37859: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #66875: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #81858: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #83573: <==closure== 66875 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #88150: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #89628: <==closure== 88150 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13023: <==uncertain_firing== 66875 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #13411: <==uncertain_firing== 89628 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17300: <==uncertain_firing== 88150 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #22654: <==uncertain_firing== 24128 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #27233: <==uncertain_firing== 37859 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #30246: <==uncertain_firing== 33808 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36549: <==uncertain_firing== 83573 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #45498: <==uncertain_firing== 81858 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #47496: <==negation-removal== 66875 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #62217: <==negation-removal== 89628 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #75998: <==negation-removal== 37859 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #76411: <==negation-removal== 24128 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #79955: <==negation-removal== 83573 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #80176: <==negation-removal== 33808 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #80333: <==negation-removal== 88150 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #82998: <==negation-removal== 81858 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_c)
                           (Pa_secret_c))
        :effect (and
                    ; #10670: <==closure== 65906 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28404: <==closure== 55179 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #53814: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #55179: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #65906: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72808: <==closure== 81956 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #81956: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #97918: <==closure== 53814 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #12069: <==uncertain_firing== 28404 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #16827: <==negation-removal== 72808 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #25167: <==negation-removal== 97918 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #26249: <==uncertain_firing== 72808 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #39942: <==uncertain_firing== 97918 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #42549: <==uncertain_firing== 10670 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #51608: <==negation-removal== 10670 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #54076: <==negation-removal== 81956 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #54337: <==negation-removal== 53814 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #61594: <==uncertain_firing== 53814 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #61769: <==uncertain_firing== 55179 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #66000: <==negation-removal== 28404 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #71609: <==uncertain_firing== 65906 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #76483: <==uncertain_firing== 81956 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79980: <==negation-removal== 65906 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #89648: <==negation-removal== 55179 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_c)
                           (Pa_secret_c))
        :effect (and
                    ; #10079: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #11744: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #24635: <==closure== 79120 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #41176: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #44941: <==closure== 41176 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69949: <==closure== 10079 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #75623: <==closure== 11744 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #79120: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #21480: <==uncertain_firing== 41176 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #22438: <==uncertain_firing== 75623 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #23462: <==negation-removal== 75623 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #39169: <==negation-removal== 24635 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #49560: <==negation-removal== 79120 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #61122: <==uncertain_firing== 10079 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #70890: <==uncertain_firing== 24635 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #74809: <==negation-removal== 11744 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #75205: <==negation-removal== 10079 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #75666: <==uncertain_firing== 11744 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #77543: <==negation-removal== 41176 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #79546: <==uncertain_firing== 79120 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #83750: <==uncertain_firing== 69949 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #86767: <==uncertain_firing== 44941 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #90002: <==negation-removal== 69949 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #90884: <==negation-removal== 44941 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_d)
                           (Ba_secret_d))
        :effect (and
                    ; #37126: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #39750: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #45021: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #51710: <==closure== 39750 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #62911: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #66383: <==closure== 37126 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #69041: <==closure== 45021 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #83040: <==closure== 62911 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #14438: <==uncertain_firing== 51710 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #15598: <==negation-removal== 83040 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #18850: <==uncertain_firing== 66383 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #21963: <==uncertain_firing== 69041 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25720: <==negation-removal== 69041 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #28055: <==negation-removal== 45021 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #34734: <==uncertain_firing== 62911 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #42563: <==negation-removal== 51710 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #50615: <==uncertain_firing== 37126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #52142: <==uncertain_firing== 83040 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #57884: <==uncertain_firing== 45021 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57889: <==negation-removal== 62911 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #76754: <==uncertain_firing== 39750 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #79597: <==negation-removal== 37126 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #83090: <==negation-removal== 39750 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #83321: <==negation-removal== 66383 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_d)
                           (Ba_secret_d))
        :effect (and
                    ; #10989: <==closure== 65787 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23445: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #25314: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #34332: <==closure== 91818 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #63108: <==closure== 25314 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #65787: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #78046: <==closure== 23445 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #91818: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #12625: <==negation-removal== 78046 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #18412: <==negation-removal== 34332 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #19345: <==uncertain_firing== 78046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #23512: <==negation-removal== 23445 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29410: <==negation-removal== 65787 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36188: <==uncertain_firing== 23445 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #40617: <==negation-removal== 91818 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #42849: <==negation-removal== 10989 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #44086: <==uncertain_firing== 65787 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48527: <==uncertain_firing== 63108 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #48983: <==uncertain_firing== 91818 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #53668: <==uncertain_firing== 34332 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #62767: <==negation-removal== 25314 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #67105: <==uncertain_firing== 25314 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #68552: <==uncertain_firing== 10989 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #72552: <==negation-removal== 63108 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #21444: <==closure== 66515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #24366: <==closure== 68097 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #41859: <==closure== 85843 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #42490: <==closure== 84969 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #68097: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #84969: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #85843: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #11464: <==uncertain_firing== 42490 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #14681: <==uncertain_firing== 84969 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #26359: <==uncertain_firing== 24366 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #39766: <==negation-removal== 24366 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #40624: <==uncertain_firing== 68097 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #41291: <==uncertain_firing== 85843 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #42273: <==uncertain_firing== 41859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #59888: <==negation-removal== 21444 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #62023: <==negation-removal== 68097 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #62160: <==negation-removal== 66515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #63268: <==uncertain_firing== 66515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #64031: <==uncertain_firing== 21444 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75893: <==negation-removal== 84969 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #78753: <==negation-removal== 42490 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84871: <==negation-removal== 85843 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #95689: <==negation-removal== 41859 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #24455: <==closure== 87291 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #26972: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #40055: <==closure== 26972 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #47462: <==closure== 54485 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #54485: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #57824: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #58830: <==closure== 57824 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87291: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #18816: <==uncertain_firing== 47462 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #21525: <==negation-removal== 58830 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #21858: <==uncertain_firing== 26972 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #22986: <==uncertain_firing== 57824 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #25410: <==negation-removal== 26972 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #32314: <==uncertain_firing== 87291 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #45896: <==uncertain_firing== 24455 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #47110: <==negation-removal== 24455 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #50125: <==negation-removal== 87291 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #51263: <==negation-removal== 47462 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #64157: <==uncertain_firing== 58830 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #69516: <==uncertain_firing== 40055 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #75124: <==uncertain_firing== 54485 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #82069: <==negation-removal== 54485 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #87346: <==negation-removal== 57824 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #87654: <==negation-removal== 40055 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #20100: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #40145: <==closure== 84092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #42702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #54948: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #56391: <==closure== 54948 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #57254: <==closure== 42702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #84092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #88378: <==closure== 20100 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25387: <==negation-removal== 57254 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #36197: <==uncertain_firing== 84092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #36839: <==uncertain_firing== 56391 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47724: <==negation-removal== 54948 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #49805: <==uncertain_firing== 54948 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #53255: <==negation-removal== 84092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #58513: <==uncertain_firing== 42702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #60305: <==uncertain_firing== 20100 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #64248: <==uncertain_firing== 40145 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #71725: <==negation-removal== 40145 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #76752: <==uncertain_firing== 57254 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #83358: <==uncertain_firing== 88378 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #84475: <==negation-removal== 88378 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #85301: <==negation-removal== 56391 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #90439: <==negation-removal== 42702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #91005: <==negation-removal== 20100 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #24128: <==closure== 81858 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33808: <==closure== 37859 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #37859: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #66875: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #81858: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #83573: <==closure== 66875 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #88150: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #89628: <==closure== 88150 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13023: <==uncertain_firing== 66875 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #13411: <==uncertain_firing== 89628 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17300: <==uncertain_firing== 88150 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #22654: <==uncertain_firing== 24128 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #27233: <==uncertain_firing== 37859 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #30246: <==uncertain_firing== 33808 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36549: <==uncertain_firing== 83573 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #45498: <==uncertain_firing== 81858 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #47496: <==negation-removal== 66875 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #62217: <==negation-removal== 89628 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #75998: <==negation-removal== 37859 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #76411: <==negation-removal== 24128 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #79955: <==negation-removal== 83573 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #80176: <==negation-removal== 33808 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #80333: <==negation-removal== 88150 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #82998: <==negation-removal== 81858 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #10670: <==closure== 65906 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28404: <==closure== 55179 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #53814: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #55179: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #65906: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72808: <==closure== 81956 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #81956: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #97918: <==closure== 53814 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #12069: <==uncertain_firing== 28404 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #16827: <==negation-removal== 72808 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #25167: <==negation-removal== 97918 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #26249: <==uncertain_firing== 72808 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #39942: <==uncertain_firing== 97918 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #42549: <==uncertain_firing== 10670 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #51608: <==negation-removal== 10670 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #54076: <==negation-removal== 81956 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #54337: <==negation-removal== 53814 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #61594: <==uncertain_firing== 53814 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #61769: <==uncertain_firing== 55179 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #66000: <==negation-removal== 28404 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #71609: <==uncertain_firing== 65906 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #76483: <==uncertain_firing== 81956 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79980: <==negation-removal== 65906 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #89648: <==negation-removal== 55179 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #10079: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #11744: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #24635: <==closure== 79120 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #41176: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #44941: <==closure== 41176 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69949: <==closure== 10079 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #75623: <==closure== 11744 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #79120: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #21480: <==uncertain_firing== 41176 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #22438: <==uncertain_firing== 75623 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #23462: <==negation-removal== 75623 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #39169: <==negation-removal== 24635 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #49560: <==negation-removal== 79120 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #61122: <==uncertain_firing== 10079 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #70890: <==uncertain_firing== 24635 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #74809: <==negation-removal== 11744 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #75205: <==negation-removal== 10079 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #75666: <==uncertain_firing== 11744 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #77543: <==negation-removal== 41176 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #79546: <==uncertain_firing== 79120 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #83750: <==uncertain_firing== 69949 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #86767: <==uncertain_firing== 44941 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #90002: <==negation-removal== 69949 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #90884: <==negation-removal== 44941 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #37126: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #39750: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #45021: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #51710: <==closure== 39750 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #62911: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #66383: <==closure== 37126 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #69041: <==closure== 45021 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #83040: <==closure== 62911 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #14438: <==uncertain_firing== 51710 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #15598: <==negation-removal== 83040 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #18850: <==uncertain_firing== 66383 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #21963: <==uncertain_firing== 69041 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25720: <==negation-removal== 69041 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #28055: <==negation-removal== 45021 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #34734: <==uncertain_firing== 62911 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #42563: <==negation-removal== 51710 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #50615: <==uncertain_firing== 37126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #52142: <==uncertain_firing== 83040 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #57884: <==uncertain_firing== 45021 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57889: <==negation-removal== 62911 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #76754: <==uncertain_firing== 39750 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #79597: <==negation-removal== 37126 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #83090: <==negation-removal== 39750 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #83321: <==negation-removal== 66383 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l2))
        :effect (and
                    ; #10989: <==closure== 65787 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23445: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #25314: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #34332: <==closure== 91818 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #63108: <==closure== 25314 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #65787: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #78046: <==closure== 23445 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #91818: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #12625: <==negation-removal== 78046 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #18412: <==negation-removal== 34332 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #19345: <==uncertain_firing== 78046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #23512: <==negation-removal== 23445 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29410: <==negation-removal== 65787 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36188: <==uncertain_firing== 23445 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #40617: <==negation-removal== 91818 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #42849: <==negation-removal== 10989 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #44086: <==uncertain_firing== 65787 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48527: <==uncertain_firing== 63108 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #48983: <==uncertain_firing== 91818 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #53668: <==uncertain_firing== 34332 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #62767: <==negation-removal== 25314 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #67105: <==uncertain_firing== 25314 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #68552: <==uncertain_firing== 10989 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #72552: <==negation-removal== 63108 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #21444: <==closure== 66515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #24366: <==closure== 68097 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #41859: <==closure== 85843 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #42490: <==closure== 84969 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #68097: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #84969: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #85843: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #11464: <==uncertain_firing== 42490 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #14681: <==uncertain_firing== 84969 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #26359: <==uncertain_firing== 24366 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #39766: <==negation-removal== 24366 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #40624: <==uncertain_firing== 68097 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #41291: <==uncertain_firing== 85843 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #42273: <==uncertain_firing== 41859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #59888: <==negation-removal== 21444 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #62023: <==negation-removal== 68097 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #62160: <==negation-removal== 66515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #63268: <==uncertain_firing== 66515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #64031: <==uncertain_firing== 21444 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75893: <==negation-removal== 84969 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #78753: <==negation-removal== 42490 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84871: <==negation-removal== 85843 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #95689: <==negation-removal== 41859 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (at_c_l2)
                           (Pc_secret_a))
        :effect (and
                    ; #24455: <==closure== 87291 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #26972: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #40055: <==closure== 26972 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #47462: <==closure== 54485 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #54485: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #57824: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #58830: <==closure== 57824 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87291: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #18816: <==uncertain_firing== 47462 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #21525: <==negation-removal== 58830 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #21858: <==uncertain_firing== 26972 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #22986: <==uncertain_firing== 57824 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #25410: <==negation-removal== 26972 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #32314: <==uncertain_firing== 87291 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #45896: <==uncertain_firing== 24455 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #47110: <==negation-removal== 24455 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #50125: <==negation-removal== 87291 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #51263: <==negation-removal== 47462 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #64157: <==uncertain_firing== 58830 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #69516: <==uncertain_firing== 40055 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #75124: <==uncertain_firing== 54485 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #82069: <==negation-removal== 54485 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #87346: <==negation-removal== 57824 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #87654: <==negation-removal== 40055 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #20100: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #40145: <==closure== 84092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #42702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #54948: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #56391: <==closure== 54948 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #57254: <==closure== 42702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #84092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #88378: <==closure== 20100 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25387: <==negation-removal== 57254 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #36197: <==uncertain_firing== 84092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #36839: <==uncertain_firing== 56391 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47724: <==negation-removal== 54948 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #49805: <==uncertain_firing== 54948 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #53255: <==negation-removal== 84092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #58513: <==uncertain_firing== 42702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #60305: <==uncertain_firing== 20100 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #64248: <==uncertain_firing== 40145 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #71725: <==negation-removal== 40145 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #76752: <==uncertain_firing== 57254 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #83358: <==uncertain_firing== 88378 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #84475: <==negation-removal== 88378 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #85301: <==negation-removal== 56391 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #90439: <==negation-removal== 42702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #91005: <==negation-removal== 20100 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Bc_secret_b)
                           (at_c_l2)
                           (Pc_secret_b))
        :effect (and
                    ; #24128: <==closure== 81858 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33808: <==closure== 37859 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #37859: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #66875: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #81858: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #83573: <==closure== 66875 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #88150: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #89628: <==closure== 88150 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13023: <==uncertain_firing== 66875 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #13411: <==uncertain_firing== 89628 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17300: <==uncertain_firing== 88150 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #22654: <==uncertain_firing== 24128 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #27233: <==uncertain_firing== 37859 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #30246: <==uncertain_firing== 33808 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36549: <==uncertain_firing== 83573 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #45498: <==uncertain_firing== 81858 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #47496: <==negation-removal== 66875 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #62217: <==negation-removal== 89628 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #75998: <==negation-removal== 37859 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #76411: <==negation-removal== 24128 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #79955: <==negation-removal== 83573 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #80176: <==negation-removal== 33808 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #80333: <==negation-removal== 88150 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #82998: <==negation-removal== 81858 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #10670: <==closure== 65906 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28404: <==closure== 55179 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #53814: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #55179: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #65906: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72808: <==closure== 81956 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #81956: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #97918: <==closure== 53814 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #12069: <==uncertain_firing== 28404 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #16827: <==negation-removal== 72808 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #25167: <==negation-removal== 97918 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #26249: <==uncertain_firing== 72808 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #39942: <==uncertain_firing== 97918 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #42549: <==uncertain_firing== 10670 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #51608: <==negation-removal== 10670 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #54076: <==negation-removal== 81956 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #54337: <==negation-removal== 53814 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #61594: <==uncertain_firing== 53814 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #61769: <==uncertain_firing== 55179 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #66000: <==negation-removal== 28404 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #71609: <==uncertain_firing== 65906 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #76483: <==uncertain_firing== 81956 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79980: <==negation-removal== 65906 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #89648: <==negation-removal== 55179 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Bc_secret_c)
                           (Pc_secret_c)
                           (at_c_l2))
        :effect (and
                    ; #10079: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #11744: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #24635: <==closure== 79120 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #41176: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #44941: <==closure== 41176 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69949: <==closure== 10079 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #75623: <==closure== 11744 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #79120: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #21480: <==uncertain_firing== 41176 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #22438: <==uncertain_firing== 75623 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #23462: <==negation-removal== 75623 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #39169: <==negation-removal== 24635 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #49560: <==negation-removal== 79120 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #61122: <==uncertain_firing== 10079 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #70890: <==uncertain_firing== 24635 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #74809: <==negation-removal== 11744 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #75205: <==negation-removal== 10079 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #75666: <==uncertain_firing== 11744 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #77543: <==negation-removal== 41176 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #79546: <==uncertain_firing== 79120 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #83750: <==uncertain_firing== 69949 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #86767: <==uncertain_firing== 44941 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #90002: <==negation-removal== 69949 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #90884: <==negation-removal== 44941 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #37126: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #39750: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #45021: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #51710: <==closure== 39750 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #62911: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #66383: <==closure== 37126 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #69041: <==closure== 45021 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #83040: <==closure== 62911 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #14438: <==uncertain_firing== 51710 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #15598: <==negation-removal== 83040 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #18850: <==uncertain_firing== 66383 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #21963: <==uncertain_firing== 69041 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25720: <==negation-removal== 69041 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #28055: <==negation-removal== 45021 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #34734: <==uncertain_firing== 62911 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #42563: <==negation-removal== 51710 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #50615: <==uncertain_firing== 37126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #52142: <==uncertain_firing== 83040 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #57884: <==uncertain_firing== 45021 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57889: <==negation-removal== 62911 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #76754: <==uncertain_firing== 39750 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #79597: <==negation-removal== 37126 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #83090: <==negation-removal== 39750 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #83321: <==negation-removal== 66383 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (Pc_secret_d)
                           (at_c_l2)
                           (Bc_secret_d))
        :effect (and
                    ; #10989: <==closure== 65787 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23445: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #25314: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #34332: <==closure== 91818 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #63108: <==closure== 25314 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #65787: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #78046: <==closure== 23445 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #91818: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #12625: <==negation-removal== 78046 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #18412: <==negation-removal== 34332 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #19345: <==uncertain_firing== 78046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #23512: <==negation-removal== 23445 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29410: <==negation-removal== 65787 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36188: <==uncertain_firing== 23445 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #40617: <==negation-removal== 91818 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #42849: <==negation-removal== 10989 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #44086: <==uncertain_firing== 65787 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48527: <==uncertain_firing== 63108 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #48983: <==uncertain_firing== 91818 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #53668: <==uncertain_firing== 34332 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #62767: <==negation-removal== 25314 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #67105: <==uncertain_firing== 25314 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #68552: <==uncertain_firing== 10989 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #72552: <==negation-removal== 63108 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #21444: <==closure== 66515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #24366: <==closure== 68097 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #41859: <==closure== 85843 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #42490: <==closure== 84969 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #68097: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #84969: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #85843: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #11464: <==uncertain_firing== 42490 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #14681: <==uncertain_firing== 84969 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #26359: <==uncertain_firing== 24366 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #39766: <==negation-removal== 24366 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #40624: <==uncertain_firing== 68097 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #41291: <==uncertain_firing== 85843 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #42273: <==uncertain_firing== 41859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #59888: <==negation-removal== 21444 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #62023: <==negation-removal== 68097 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #62160: <==negation-removal== 66515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #63268: <==uncertain_firing== 66515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #64031: <==uncertain_firing== 21444 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75893: <==negation-removal== 84969 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #78753: <==negation-removal== 42490 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84871: <==negation-removal== 85843 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #95689: <==negation-removal== 41859 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Bd_secret_a)
                           (Pd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #24455: <==closure== 87291 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #26972: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #40055: <==closure== 26972 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #47462: <==closure== 54485 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #54485: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #57824: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #58830: <==closure== 57824 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87291: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #18816: <==uncertain_firing== 47462 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #21525: <==negation-removal== 58830 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #21858: <==uncertain_firing== 26972 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #22986: <==uncertain_firing== 57824 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #25410: <==negation-removal== 26972 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #32314: <==uncertain_firing== 87291 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #45896: <==uncertain_firing== 24455 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #47110: <==negation-removal== 24455 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #50125: <==negation-removal== 87291 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #51263: <==negation-removal== 47462 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #64157: <==uncertain_firing== 58830 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #69516: <==uncertain_firing== 40055 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #75124: <==uncertain_firing== 54485 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #82069: <==negation-removal== 54485 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #87346: <==negation-removal== 57824 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #87654: <==negation-removal== 40055 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_b)
                           (Bd_secret_b))
        :effect (and
                    ; #20100: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #40145: <==closure== 84092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #42702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #54948: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #56391: <==closure== 54948 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #57254: <==closure== 42702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #84092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #88378: <==closure== 20100 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25387: <==negation-removal== 57254 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #36197: <==uncertain_firing== 84092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #36839: <==uncertain_firing== 56391 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47724: <==negation-removal== 54948 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #49805: <==uncertain_firing== 54948 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #53255: <==negation-removal== 84092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #58513: <==uncertain_firing== 42702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #60305: <==uncertain_firing== 20100 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #64248: <==uncertain_firing== 40145 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #71725: <==negation-removal== 40145 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #76752: <==uncertain_firing== 57254 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #83358: <==uncertain_firing== 88378 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #84475: <==negation-removal== 88378 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #85301: <==negation-removal== 56391 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #90439: <==negation-removal== 42702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #91005: <==negation-removal== 20100 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Pd_secret_b)
                           (at_d_l2)
                           (Bd_secret_b))
        :effect (and
                    ; #24128: <==closure== 81858 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33808: <==closure== 37859 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #37859: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #66875: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #81858: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #83573: <==closure== 66875 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #88150: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #89628: <==closure== 88150 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13023: <==uncertain_firing== 66875 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #13411: <==uncertain_firing== 89628 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17300: <==uncertain_firing== 88150 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #22654: <==uncertain_firing== 24128 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #27233: <==uncertain_firing== 37859 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #30246: <==uncertain_firing== 33808 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36549: <==uncertain_firing== 83573 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #45498: <==uncertain_firing== 81858 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #47496: <==negation-removal== 66875 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #62217: <==negation-removal== 89628 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #75998: <==negation-removal== 37859 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #76411: <==negation-removal== 24128 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #79955: <==negation-removal== 83573 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #80176: <==negation-removal== 33808 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #80333: <==negation-removal== 88150 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #82998: <==negation-removal== 81858 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c))
        :effect (and
                    ; #10670: <==closure== 65906 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28404: <==closure== 55179 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #53814: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #55179: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #65906: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72808: <==closure== 81956 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #81956: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #97918: <==closure== 53814 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #12069: <==uncertain_firing== 28404 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #16827: <==negation-removal== 72808 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #25167: <==negation-removal== 97918 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #26249: <==uncertain_firing== 72808 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #39942: <==uncertain_firing== 97918 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #42549: <==uncertain_firing== 10670 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #51608: <==negation-removal== 10670 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #54076: <==negation-removal== 81956 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #54337: <==negation-removal== 53814 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #61594: <==uncertain_firing== 53814 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #61769: <==uncertain_firing== 55179 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #66000: <==negation-removal== 28404 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #71609: <==uncertain_firing== 65906 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #76483: <==uncertain_firing== 81956 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79980: <==negation-removal== 65906 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #89648: <==negation-removal== 55179 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #10079: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #11744: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #24635: <==closure== 79120 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #41176: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #44941: <==closure== 41176 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69949: <==closure== 10079 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #75623: <==closure== 11744 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #79120: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #21480: <==uncertain_firing== 41176 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #22438: <==uncertain_firing== 75623 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #23462: <==negation-removal== 75623 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #39169: <==negation-removal== 24635 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #49560: <==negation-removal== 79120 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #61122: <==uncertain_firing== 10079 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #70890: <==uncertain_firing== 24635 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #74809: <==negation-removal== 11744 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #75205: <==negation-removal== 10079 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #75666: <==uncertain_firing== 11744 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #77543: <==negation-removal== 41176 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #79546: <==uncertain_firing== 79120 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #83750: <==uncertain_firing== 69949 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #86767: <==uncertain_firing== 44941 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #90002: <==negation-removal== 69949 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #90884: <==negation-removal== 44941 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (Bd_secret_d))
        :effect (and
                    ; #37126: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #39750: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #45021: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #51710: <==closure== 39750 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #62911: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #66383: <==closure== 37126 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #69041: <==closure== 45021 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #83040: <==closure== 62911 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #14438: <==uncertain_firing== 51710 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #15598: <==negation-removal== 83040 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #18850: <==uncertain_firing== 66383 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #21963: <==uncertain_firing== 69041 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25720: <==negation-removal== 69041 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #28055: <==negation-removal== 45021 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #34734: <==uncertain_firing== 62911 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #42563: <==negation-removal== 51710 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #50615: <==uncertain_firing== 37126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #52142: <==uncertain_firing== 83040 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #57884: <==uncertain_firing== 45021 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57889: <==negation-removal== 62911 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #76754: <==uncertain_firing== 39750 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #79597: <==negation-removal== 37126 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #83090: <==negation-removal== 39750 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #83321: <==negation-removal== 66383 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Pd_secret_d)
                           (at_d_l2)
                           (Bd_secret_d))
        :effect (and
                    ; #10989: <==closure== 65787 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23445: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #25314: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #34332: <==closure== 91818 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #63108: <==closure== 25314 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #65787: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #78046: <==closure== 23445 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #91818: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #12625: <==negation-removal== 78046 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #18412: <==negation-removal== 34332 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #19345: <==uncertain_firing== 78046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #23512: <==negation-removal== 23445 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29410: <==negation-removal== 65787 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36188: <==uncertain_firing== 23445 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #40617: <==negation-removal== 91818 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #42849: <==negation-removal== 10989 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #44086: <==uncertain_firing== 65787 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48527: <==uncertain_firing== 63108 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #48983: <==uncertain_firing== 91818 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #53668: <==uncertain_firing== 34332 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #62767: <==negation-removal== 25314 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #67105: <==uncertain_firing== 25314 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #68552: <==uncertain_firing== 10989 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #72552: <==negation-removal== 63108 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))))

)