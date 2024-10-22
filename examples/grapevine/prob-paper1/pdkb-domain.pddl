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
                    ; #14038: origin
                    (at_a_l1)

                    ; #62129: origin
                    (not_at_a_l1)

                    ; #14038: <==negation-removal== 62129 (pos)
                    (not (at_a_l1))

                    ; #62129: <==negation-removal== 14038 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #62129: origin
                    (not_at_a_l1)

                    ; #67223: origin
                    (at_a_l2)

                    ; #14038: <==negation-removal== 62129 (pos)
                    (not (at_a_l1))

                    ; #61208: <==negation-removal== 67223 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #14038: origin
                    (at_a_l1)

                    ; #61208: origin
                    (not_at_a_l2)

                    ; #62129: <==negation-removal== 14038 (pos)
                    (not (not_at_a_l1))

                    ; #67223: <==negation-removal== 61208 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #61208: origin
                    (not_at_a_l2)

                    ; #67223: origin
                    (at_a_l2)

                    ; #61208: <==negation-removal== 67223 (pos)
                    (not (not_at_a_l2))

                    ; #67223: <==negation-removal== 61208 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #60557: origin
                    (at_b_l1)

                    ; #68651: origin
                    (not_at_b_l1)

                    ; #60557: <==negation-removal== 68651 (pos)
                    (not (at_b_l1))

                    ; #68651: <==negation-removal== 60557 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #41889: origin
                    (at_b_l2)

                    ; #68651: origin
                    (not_at_b_l1)

                    ; #30371: <==negation-removal== 41889 (pos)
                    (not (not_at_b_l2))

                    ; #60557: <==negation-removal== 68651 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #30371: origin
                    (not_at_b_l2)

                    ; #60557: origin
                    (at_b_l1)

                    ; #41889: <==negation-removal== 30371 (pos)
                    (not (at_b_l2))

                    ; #68651: <==negation-removal== 60557 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #30371: origin
                    (not_at_b_l2)

                    ; #41889: origin
                    (at_b_l2)

                    ; #30371: <==negation-removal== 41889 (pos)
                    (not (not_at_b_l2))

                    ; #41889: <==negation-removal== 30371 (pos)
                    (not (at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #13942: origin
                    (at_c_l1)

                    ; #49519: origin
                    (not_at_c_l1)

                    ; #13942: <==negation-removal== 49519 (pos)
                    (not (at_c_l1))

                    ; #49519: <==negation-removal== 13942 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #32861: origin
                    (at_c_l2)

                    ; #49519: origin
                    (not_at_c_l1)

                    ; #13374: <==negation-removal== 32861 (pos)
                    (not (not_at_c_l2))

                    ; #13942: <==negation-removal== 49519 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #13374: origin
                    (not_at_c_l2)

                    ; #13942: origin
                    (at_c_l1)

                    ; #32861: <==negation-removal== 13374 (pos)
                    (not (at_c_l2))

                    ; #49519: <==negation-removal== 13942 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_c_l2))
        :effect (and
                    ; #13374: origin
                    (not_at_c_l2)

                    ; #32861: origin
                    (at_c_l2)

                    ; #13374: <==negation-removal== 32861 (pos)
                    (not (not_at_c_l2))

                    ; #32861: <==negation-removal== 13374 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #58117: origin
                    (not_at_d_l1)

                    ; #96786: origin
                    (at_d_l1)

                    ; #58117: <==negation-removal== 96786 (pos)
                    (not (not_at_d_l1))

                    ; #96786: <==negation-removal== 58117 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #17194: origin
                    (at_d_l2)

                    ; #58117: origin
                    (not_at_d_l1)

                    ; #62957: <==negation-removal== 17194 (pos)
                    (not (not_at_d_l2))

                    ; #96786: <==negation-removal== 58117 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #62957: origin
                    (not_at_d_l2)

                    ; #96786: origin
                    (at_d_l1)

                    ; #17194: <==negation-removal== 62957 (pos)
                    (not (at_d_l2))

                    ; #58117: <==negation-removal== 96786 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #17194: origin
                    (at_d_l2)

                    ; #62957: origin
                    (not_at_d_l2)

                    ; #17194: <==negation-removal== 62957 (pos)
                    (not (at_d_l2))

                    ; #62957: <==negation-removal== 17194 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #22633: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #46425: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #49039: <==closure== 49585 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #49585: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #55464: <==closure== 22633 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #61708: <==closure== 46425 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #69079: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #89662: <==closure== 69079 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11114: <==negation-removal== 89662 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #11645: <==uncertain_firing== 22633 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #11899: <==uncertain_firing== 49039 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #15757: <==negation-removal== 22633 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28096: <==negation-removal== 46425 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #33086: <==negation-removal== 55464 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #37704: <==uncertain_firing== 49585 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50078: <==uncertain_firing== 69079 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #55706: <==uncertain_firing== 89662 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #61377: <==negation-removal== 69079 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #62676: <==uncertain_firing== 46425 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #64713: <==uncertain_firing== 55464 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #65279: <==negation-removal== 49585 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #73208: <==uncertain_firing== 61708 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #89831: <==negation-removal== 49039 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #91965: <==negation-removal== 61708 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #12600: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #16486: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #24726: <==closure== 67666 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #32948: <==closure== 16486 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #45532: <==closure== 63882 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #55742: <==closure== 12600 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63882: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #67666: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #11176: <==negation-removal== 32948 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15086: <==negation-removal== 63882 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #21168: <==uncertain_firing== 45532 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #24873: <==uncertain_firing== 67666 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34246: <==uncertain_firing== 32948 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #42704: <==negation-removal== 67666 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47827: <==uncertain_firing== 24726 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52145: <==negation-removal== 55742 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #53350: <==uncertain_firing== 16486 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #54035: <==uncertain_firing== 63882 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #62321: <==negation-removal== 12600 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #77216: <==uncertain_firing== 55742 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #82315: <==negation-removal== 16486 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #84239: <==negation-removal== 45532 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #89835: <==uncertain_firing== 12600 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #92026: <==negation-removal== 24726 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #19859: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #22890: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32340: <==closure== 22890 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #36321: <==closure== 19859 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #43269: <==closure== 79737 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #56655: <==closure== 68564 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #68564: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #79737: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #21497: <==uncertain_firing== 19859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #35667: <==negation-removal== 22890 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #37541: <==negation-removal== 68564 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #41472: <==negation-removal== 32340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #42733: <==negation-removal== 56655 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #43602: <==uncertain_firing== 22890 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #43677: <==uncertain_firing== 56655 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #51159: <==uncertain_firing== 36321 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #51795: <==negation-removal== 43269 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #57963: <==uncertain_firing== 68564 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #68667: <==negation-removal== 79737 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #75085: <==negation-removal== 19859 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81117: <==negation-removal== 36321 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #81471: <==uncertain_firing== 43269 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84272: <==uncertain_firing== 32340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #88960: <==uncertain_firing== 79737 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #21839: <==closure== 46562 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #23368: <==closure== 48238 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #46562: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47935: <==closure== 71017 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #48238: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #66710: <==closure== 86509 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #71017: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #86509: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20955: <==uncertain_firing== 21839 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #30610: <==uncertain_firing== 47935 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #44286: <==negation-removal== 47935 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #45345: <==negation-removal== 66710 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #50413: <==negation-removal== 46562 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #57822: <==negation-removal== 21839 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #57865: <==uncertain_firing== 23368 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #66501: <==uncertain_firing== 66710 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #68906: <==uncertain_firing== 71017 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69324: <==uncertain_firing== 46562 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #73589: <==uncertain_firing== 48238 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #80190: <==negation-removal== 71017 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #81337: <==negation-removal== 23368 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #85508: <==negation-removal== 48238 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #88859: <==negation-removal== 86509 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #90106: <==uncertain_firing== 86509 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #13194: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #21433: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #37225: <==closure== 21433 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #48003: <==closure== 13194 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #63300: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72495: <==closure== 63300 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #73348: <==closure== 73864 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #73864: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #16354: <==uncertain_firing== 63300 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #26601: <==negation-removal== 72495 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43862: <==negation-removal== 73348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #44605: <==uncertain_firing== 13194 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #54562: <==negation-removal== 63300 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #60133: <==uncertain_firing== 37225 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #61230: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #73772: <==negation-removal== 73864 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #75205: <==negation-removal== 21433 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #79794: <==uncertain_firing== 21433 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79947: <==negation-removal== 37225 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #84666: <==uncertain_firing== 73348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #86944: <==uncertain_firing== 73864 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #88116: <==negation-removal== 48003 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #89120: <==uncertain_firing== 48003 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #89170: <==negation-removal== 13194 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #19123: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #21114: <==closure== 33586 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #33586: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #43507: <==closure== 57580 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #52177: <==closure== 80904 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #57580: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #77288: <==closure== 19123 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #80904: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #13382: <==negation-removal== 52177 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #15172: <==uncertain_firing== 77288 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #22662: <==negation-removal== 33586 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #26389: <==uncertain_firing== 19123 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #28254: <==negation-removal== 43507 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #29368: <==uncertain_firing== 33586 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #33288: <==uncertain_firing== 21114 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #37266: <==uncertain_firing== 43507 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #37267: <==negation-removal== 77288 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #42964: <==negation-removal== 21114 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #45399: <==uncertain_firing== 80904 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #51843: <==uncertain_firing== 52177 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #62725: <==negation-removal== 19123 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #68661: <==negation-removal== 80904 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84407: <==uncertain_firing== 57580 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88028: <==negation-removal== 57580 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #10479: <==closure== 36543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15661: <==closure== 46485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #25552: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #36543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #39049: <==closure== 25552 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #39886: <==closure== 49583 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #46485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49583: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #15834: <==uncertain_firing== 39886 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #27828: <==negation-removal== 25552 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #34570: <==uncertain_firing== 36543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #38064: <==uncertain_firing== 39049 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #45031: <==negation-removal== 49583 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #52213: <==uncertain_firing== 25552 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #58263: <==negation-removal== 10479 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #62961: <==negation-removal== 46485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #63889: <==negation-removal== 15661 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #66489: <==negation-removal== 39049 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #67459: <==uncertain_firing== 49583 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #70149: <==uncertain_firing== 46485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #75583: <==negation-removal== 36543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #87299: <==uncertain_firing== 15661 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #91044: <==negation-removal== 39886 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #91581: <==uncertain_firing== 10479 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #16733: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #33063: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #33538: <==closure== 33063 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #37326: <==closure== 58679 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #46500: <==closure== 82546 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #58679: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #82546: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #88836: <==closure== 16733 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #17183: <==negation-removal== 46500 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #19483: <==uncertain_firing== 37326 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #22508: <==negation-removal== 88836 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #25472: <==uncertain_firing== 16733 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #39256: <==negation-removal== 82546 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #40372: <==negation-removal== 58679 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #45360: <==uncertain_firing== 33063 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #47783: <==negation-removal== 16733 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #48778: <==negation-removal== 33063 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #52064: <==uncertain_firing== 46500 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #56294: <==negation-removal== 33538 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #57092: <==negation-removal== 37326 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #57909: <==uncertain_firing== 33538 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #64614: <==uncertain_firing== 58679 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #87311: <==uncertain_firing== 88836 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #88118: <==uncertain_firing== 82546 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l1))
        :effect (and
                    ; #22633: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #46425: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #49039: <==closure== 49585 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #49585: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #55464: <==closure== 22633 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #61708: <==closure== 46425 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #69079: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #89662: <==closure== 69079 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11114: <==negation-removal== 89662 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #11645: <==uncertain_firing== 22633 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #11899: <==uncertain_firing== 49039 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #15757: <==negation-removal== 22633 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28096: <==negation-removal== 46425 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #33086: <==negation-removal== 55464 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #37704: <==uncertain_firing== 49585 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50078: <==uncertain_firing== 69079 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #55706: <==uncertain_firing== 89662 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #61377: <==negation-removal== 69079 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #62676: <==uncertain_firing== 46425 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #64713: <==uncertain_firing== 55464 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #65279: <==negation-removal== 49585 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #73208: <==uncertain_firing== 61708 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #89831: <==negation-removal== 49039 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #91965: <==negation-removal== 61708 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #12600: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #16486: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #24726: <==closure== 67666 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #32948: <==closure== 16486 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #45532: <==closure== 63882 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #55742: <==closure== 12600 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63882: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #67666: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #11176: <==negation-removal== 32948 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15086: <==negation-removal== 63882 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #21168: <==uncertain_firing== 45532 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #24873: <==uncertain_firing== 67666 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34246: <==uncertain_firing== 32948 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #42704: <==negation-removal== 67666 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47827: <==uncertain_firing== 24726 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52145: <==negation-removal== 55742 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #53350: <==uncertain_firing== 16486 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #54035: <==uncertain_firing== 63882 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #62321: <==negation-removal== 12600 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #77216: <==uncertain_firing== 55742 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #82315: <==negation-removal== 16486 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #84239: <==negation-removal== 45532 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #89835: <==uncertain_firing== 12600 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #92026: <==negation-removal== 24726 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #19859: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #22890: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32340: <==closure== 22890 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #36321: <==closure== 19859 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #43269: <==closure== 79737 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #56655: <==closure== 68564 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #68564: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #79737: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #21497: <==uncertain_firing== 19859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #35667: <==negation-removal== 22890 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #37541: <==negation-removal== 68564 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #41472: <==negation-removal== 32340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #42733: <==negation-removal== 56655 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #43602: <==uncertain_firing== 22890 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #43677: <==uncertain_firing== 56655 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #51159: <==uncertain_firing== 36321 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #51795: <==negation-removal== 43269 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #57963: <==uncertain_firing== 68564 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #68667: <==negation-removal== 79737 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #75085: <==negation-removal== 19859 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81117: <==negation-removal== 36321 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #81471: <==uncertain_firing== 43269 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84272: <==uncertain_firing== 32340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #88960: <==uncertain_firing== 79737 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #21839: <==closure== 46562 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #23368: <==closure== 48238 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #46562: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47935: <==closure== 71017 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #48238: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #66710: <==closure== 86509 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #71017: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #86509: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20955: <==uncertain_firing== 21839 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #30610: <==uncertain_firing== 47935 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #44286: <==negation-removal== 47935 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #45345: <==negation-removal== 66710 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #50413: <==negation-removal== 46562 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #57822: <==negation-removal== 21839 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #57865: <==uncertain_firing== 23368 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #66501: <==uncertain_firing== 66710 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #68906: <==uncertain_firing== 71017 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69324: <==uncertain_firing== 46562 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #73589: <==uncertain_firing== 48238 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #80190: <==negation-removal== 71017 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #81337: <==negation-removal== 23368 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #85508: <==negation-removal== 48238 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #88859: <==negation-removal== 86509 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #90106: <==uncertain_firing== 86509 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #13194: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #21433: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #37225: <==closure== 21433 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #48003: <==closure== 13194 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #63300: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72495: <==closure== 63300 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #73348: <==closure== 73864 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #73864: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #16354: <==uncertain_firing== 63300 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #26601: <==negation-removal== 72495 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43862: <==negation-removal== 73348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #44605: <==uncertain_firing== 13194 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #54562: <==negation-removal== 63300 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #60133: <==uncertain_firing== 37225 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #61230: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #73772: <==negation-removal== 73864 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #75205: <==negation-removal== 21433 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #79794: <==uncertain_firing== 21433 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79947: <==negation-removal== 37225 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #84666: <==uncertain_firing== 73348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #86944: <==uncertain_firing== 73864 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #88116: <==negation-removal== 48003 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #89120: <==uncertain_firing== 48003 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #89170: <==negation-removal== 13194 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #19123: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #21114: <==closure== 33586 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #33586: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #43507: <==closure== 57580 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #52177: <==closure== 80904 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #57580: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #77288: <==closure== 19123 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #80904: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #13382: <==negation-removal== 52177 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #15172: <==uncertain_firing== 77288 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #22662: <==negation-removal== 33586 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #26389: <==uncertain_firing== 19123 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #28254: <==negation-removal== 43507 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #29368: <==uncertain_firing== 33586 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #33288: <==uncertain_firing== 21114 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #37266: <==uncertain_firing== 43507 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #37267: <==negation-removal== 77288 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #42964: <==negation-removal== 21114 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #45399: <==uncertain_firing== 80904 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #51843: <==uncertain_firing== 52177 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #62725: <==negation-removal== 19123 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #68661: <==negation-removal== 80904 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84407: <==uncertain_firing== 57580 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88028: <==negation-removal== 57580 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Bb_secret_d)
                           (at_b_l1)
                           (Pb_secret_d))
        :effect (and
                    ; #10479: <==closure== 36543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15661: <==closure== 46485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #25552: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #36543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #39049: <==closure== 25552 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #39886: <==closure== 49583 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #46485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49583: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #15834: <==uncertain_firing== 39886 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #27828: <==negation-removal== 25552 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #34570: <==uncertain_firing== 36543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #38064: <==uncertain_firing== 39049 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #45031: <==negation-removal== 49583 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #52213: <==uncertain_firing== 25552 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #58263: <==negation-removal== 10479 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #62961: <==negation-removal== 46485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #63889: <==negation-removal== 15661 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #66489: <==negation-removal== 39049 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #67459: <==uncertain_firing== 49583 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #70149: <==uncertain_firing== 46485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #75583: <==negation-removal== 36543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #87299: <==uncertain_firing== 15661 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #91044: <==negation-removal== 39886 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #91581: <==uncertain_firing== 10479 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Bb_secret_d)
                           (Pb_secret_d)
                           (at_b_l2))
        :effect (and
                    ; #16733: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #33063: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #33538: <==closure== 33063 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #37326: <==closure== 58679 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #46500: <==closure== 82546 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #58679: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #82546: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #88836: <==closure== 16733 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #17183: <==negation-removal== 46500 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #19483: <==uncertain_firing== 37326 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #22508: <==negation-removal== 88836 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #25472: <==uncertain_firing== 16733 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #39256: <==negation-removal== 82546 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #40372: <==negation-removal== 58679 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #45360: <==uncertain_firing== 33063 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #47783: <==negation-removal== 16733 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #48778: <==negation-removal== 33063 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #52064: <==uncertain_firing== 46500 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #56294: <==negation-removal== 33538 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #57092: <==negation-removal== 37326 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #57909: <==uncertain_firing== 33538 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #64614: <==uncertain_firing== 58679 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #87311: <==uncertain_firing== 88836 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #88118: <==uncertain_firing== 82546 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #22633: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #46425: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #49039: <==closure== 49585 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #49585: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #55464: <==closure== 22633 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #61708: <==closure== 46425 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #69079: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #89662: <==closure== 69079 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11114: <==negation-removal== 89662 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #11645: <==uncertain_firing== 22633 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #11899: <==uncertain_firing== 49039 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #15757: <==negation-removal== 22633 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28096: <==negation-removal== 46425 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #33086: <==negation-removal== 55464 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #37704: <==uncertain_firing== 49585 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50078: <==uncertain_firing== 69079 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #55706: <==uncertain_firing== 89662 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #61377: <==negation-removal== 69079 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #62676: <==uncertain_firing== 46425 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #64713: <==uncertain_firing== 55464 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #65279: <==negation-removal== 49585 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #73208: <==uncertain_firing== 61708 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #89831: <==negation-removal== 49039 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #91965: <==negation-removal== 61708 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (Pc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #12600: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #16486: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #24726: <==closure== 67666 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #32948: <==closure== 16486 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #45532: <==closure== 63882 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #55742: <==closure== 12600 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63882: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #67666: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #11176: <==negation-removal== 32948 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15086: <==negation-removal== 63882 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #21168: <==uncertain_firing== 45532 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #24873: <==uncertain_firing== 67666 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34246: <==uncertain_firing== 32948 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #42704: <==negation-removal== 67666 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47827: <==uncertain_firing== 24726 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52145: <==negation-removal== 55742 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #53350: <==uncertain_firing== 16486 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #54035: <==uncertain_firing== 63882 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #62321: <==negation-removal== 12600 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #77216: <==uncertain_firing== 55742 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #82315: <==negation-removal== 16486 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #84239: <==negation-removal== 45532 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #89835: <==uncertain_firing== 12600 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #92026: <==negation-removal== 24726 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Pc_secret_b)
                           (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #19859: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #22890: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32340: <==closure== 22890 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #36321: <==closure== 19859 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #43269: <==closure== 79737 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #56655: <==closure== 68564 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #68564: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #79737: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #21497: <==uncertain_firing== 19859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #35667: <==negation-removal== 22890 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #37541: <==negation-removal== 68564 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #41472: <==negation-removal== 32340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #42733: <==negation-removal== 56655 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #43602: <==uncertain_firing== 22890 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #43677: <==uncertain_firing== 56655 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #51159: <==uncertain_firing== 36321 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #51795: <==negation-removal== 43269 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #57963: <==uncertain_firing== 68564 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #68667: <==negation-removal== 79737 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #75085: <==negation-removal== 19859 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81117: <==negation-removal== 36321 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #81471: <==uncertain_firing== 43269 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84272: <==uncertain_firing== 32340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #88960: <==uncertain_firing== 79737 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Pc_secret_b)
                           (at_c_l2)
                           (Bc_secret_b))
        :effect (and
                    ; #21839: <==closure== 46562 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #23368: <==closure== 48238 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #46562: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47935: <==closure== 71017 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #48238: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #66710: <==closure== 86509 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #71017: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #86509: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20955: <==uncertain_firing== 21839 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #30610: <==uncertain_firing== 47935 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #44286: <==negation-removal== 47935 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #45345: <==negation-removal== 66710 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #50413: <==negation-removal== 46562 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #57822: <==negation-removal== 21839 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #57865: <==uncertain_firing== 23368 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #66501: <==uncertain_firing== 66710 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #68906: <==uncertain_firing== 71017 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69324: <==uncertain_firing== 46562 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #73589: <==uncertain_firing== 48238 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #80190: <==negation-removal== 71017 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #81337: <==negation-removal== 23368 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #85508: <==negation-removal== 48238 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #88859: <==negation-removal== 86509 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #90106: <==uncertain_firing== 86509 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #13194: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #21433: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #37225: <==closure== 21433 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #48003: <==closure== 13194 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #63300: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72495: <==closure== 63300 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #73348: <==closure== 73864 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #73864: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #16354: <==uncertain_firing== 63300 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #26601: <==negation-removal== 72495 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43862: <==negation-removal== 73348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #44605: <==uncertain_firing== 13194 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #54562: <==negation-removal== 63300 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #60133: <==uncertain_firing== 37225 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #61230: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #73772: <==negation-removal== 73864 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #75205: <==negation-removal== 21433 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #79794: <==uncertain_firing== 21433 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79947: <==negation-removal== 37225 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #84666: <==uncertain_firing== 73348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #86944: <==uncertain_firing== 73864 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #88116: <==negation-removal== 48003 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #89120: <==uncertain_firing== 48003 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #89170: <==negation-removal== 13194 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Bc_secret_c)
                           (at_c_l2)
                           (Pc_secret_c))
        :effect (and
                    ; #19123: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #21114: <==closure== 33586 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #33586: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #43507: <==closure== 57580 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #52177: <==closure== 80904 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #57580: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #77288: <==closure== 19123 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #80904: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #13382: <==negation-removal== 52177 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #15172: <==uncertain_firing== 77288 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #22662: <==negation-removal== 33586 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #26389: <==uncertain_firing== 19123 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #28254: <==negation-removal== 43507 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #29368: <==uncertain_firing== 33586 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #33288: <==uncertain_firing== 21114 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #37266: <==uncertain_firing== 43507 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #37267: <==negation-removal== 77288 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #42964: <==negation-removal== 21114 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #45399: <==uncertain_firing== 80904 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #51843: <==uncertain_firing== 52177 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #62725: <==negation-removal== 19123 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #68661: <==negation-removal== 80904 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84407: <==uncertain_firing== 57580 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88028: <==negation-removal== 57580 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #10479: <==closure== 36543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15661: <==closure== 46485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #25552: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #36543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #39049: <==closure== 25552 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #39886: <==closure== 49583 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #46485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49583: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #15834: <==uncertain_firing== 39886 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #27828: <==negation-removal== 25552 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #34570: <==uncertain_firing== 36543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #38064: <==uncertain_firing== 39049 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #45031: <==negation-removal== 49583 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #52213: <==uncertain_firing== 25552 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #58263: <==negation-removal== 10479 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #62961: <==negation-removal== 46485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #63889: <==negation-removal== 15661 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #66489: <==negation-removal== 39049 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #67459: <==uncertain_firing== 49583 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #70149: <==uncertain_firing== 46485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #75583: <==negation-removal== 36543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #87299: <==uncertain_firing== 15661 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #91044: <==negation-removal== 39886 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #91581: <==uncertain_firing== 10479 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (Pc_secret_d)
                           (at_c_l2)
                           (Bc_secret_d))
        :effect (and
                    ; #16733: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #33063: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #33538: <==closure== 33063 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #37326: <==closure== 58679 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #46500: <==closure== 82546 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #58679: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #82546: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #88836: <==closure== 16733 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #17183: <==negation-removal== 46500 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #19483: <==uncertain_firing== 37326 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #22508: <==negation-removal== 88836 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #25472: <==uncertain_firing== 16733 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #39256: <==negation-removal== 82546 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #40372: <==negation-removal== 58679 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #45360: <==uncertain_firing== 33063 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #47783: <==negation-removal== 16733 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #48778: <==negation-removal== 33063 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #52064: <==uncertain_firing== 46500 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #56294: <==negation-removal== 33538 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #57092: <==negation-removal== 37326 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #57909: <==uncertain_firing== 33538 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #64614: <==uncertain_firing== 58679 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #87311: <==uncertain_firing== 88836 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #88118: <==uncertain_firing== 82546 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (at_d_l1))
        :effect (and
                    ; #22633: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #46425: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #49039: <==closure== 49585 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #49585: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #55464: <==closure== 22633 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #61708: <==closure== 46425 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #69079: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #89662: <==closure== 69079 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11114: <==negation-removal== 89662 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #11645: <==uncertain_firing== 22633 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #11899: <==uncertain_firing== 49039 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #15757: <==negation-removal== 22633 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28096: <==negation-removal== 46425 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #33086: <==negation-removal== 55464 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #37704: <==uncertain_firing== 49585 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50078: <==uncertain_firing== 69079 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #55706: <==uncertain_firing== 89662 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #61377: <==negation-removal== 69079 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #62676: <==uncertain_firing== 46425 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #64713: <==uncertain_firing== 55464 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #65279: <==negation-removal== 49585 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #73208: <==uncertain_firing== 61708 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #89831: <==negation-removal== 49039 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #91965: <==negation-removal== 61708 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #12600: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #16486: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #24726: <==closure== 67666 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #32948: <==closure== 16486 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #45532: <==closure== 63882 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #55742: <==closure== 12600 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63882: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #67666: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #11176: <==negation-removal== 32948 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15086: <==negation-removal== 63882 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #21168: <==uncertain_firing== 45532 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #24873: <==uncertain_firing== 67666 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34246: <==uncertain_firing== 32948 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #42704: <==negation-removal== 67666 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47827: <==uncertain_firing== 24726 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52145: <==negation-removal== 55742 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #53350: <==uncertain_firing== 16486 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #54035: <==uncertain_firing== 63882 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #62321: <==negation-removal== 12600 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #77216: <==uncertain_firing== 55742 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #82315: <==negation-removal== 16486 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #84239: <==negation-removal== 45532 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #89835: <==uncertain_firing== 12600 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #92026: <==negation-removal== 24726 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l1))
        :effect (and
                    ; #19859: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #22890: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32340: <==closure== 22890 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #36321: <==closure== 19859 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #43269: <==closure== 79737 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #56655: <==closure== 68564 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #68564: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #79737: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #21497: <==uncertain_firing== 19859 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #35667: <==negation-removal== 22890 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #37541: <==negation-removal== 68564 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #41472: <==negation-removal== 32340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #42733: <==negation-removal== 56655 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #43602: <==uncertain_firing== 22890 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #43677: <==uncertain_firing== 56655 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #51159: <==uncertain_firing== 36321 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #51795: <==negation-removal== 43269 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #57963: <==uncertain_firing== 68564 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #68667: <==negation-removal== 79737 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #75085: <==negation-removal== 19859 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81117: <==negation-removal== 36321 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #81471: <==uncertain_firing== 43269 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84272: <==uncertain_firing== 32340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #88960: <==uncertain_firing== 79737 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #21839: <==closure== 46562 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #23368: <==closure== 48238 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #46562: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47935: <==closure== 71017 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #48238: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #66710: <==closure== 86509 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #71017: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #86509: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20955: <==uncertain_firing== 21839 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #30610: <==uncertain_firing== 47935 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #44286: <==negation-removal== 47935 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #45345: <==negation-removal== 66710 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #50413: <==negation-removal== 46562 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #57822: <==negation-removal== 21839 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #57865: <==uncertain_firing== 23368 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #66501: <==uncertain_firing== 66710 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #68906: <==uncertain_firing== 71017 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69324: <==uncertain_firing== 46562 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #73589: <==uncertain_firing== 48238 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #80190: <==negation-removal== 71017 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #81337: <==negation-removal== 23368 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #85508: <==negation-removal== 48238 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #88859: <==negation-removal== 86509 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #90106: <==uncertain_firing== 86509 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (Pd_secret_c)
                           (at_d_l1))
        :effect (and
                    ; #13194: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #21433: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #37225: <==closure== 21433 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #48003: <==closure== 13194 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #63300: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72495: <==closure== 63300 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #73348: <==closure== 73864 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #73864: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #16354: <==uncertain_firing== 63300 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #26601: <==negation-removal== 72495 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43862: <==negation-removal== 73348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #44605: <==uncertain_firing== 13194 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #54562: <==negation-removal== 63300 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #60133: <==uncertain_firing== 37225 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #61230: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #73772: <==negation-removal== 73864 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #75205: <==negation-removal== 21433 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #79794: <==uncertain_firing== 21433 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79947: <==negation-removal== 37225 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #84666: <==uncertain_firing== 73348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #86944: <==uncertain_firing== 73864 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #88116: <==negation-removal== 48003 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #89120: <==uncertain_firing== 48003 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #89170: <==negation-removal== 13194 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_c)
                           (Pd_secret_c))
        :effect (and
                    ; #19123: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #21114: <==closure== 33586 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #33586: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #43507: <==closure== 57580 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #52177: <==closure== 80904 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #57580: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #77288: <==closure== 19123 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #80904: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #13382: <==negation-removal== 52177 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #15172: <==uncertain_firing== 77288 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #22662: <==negation-removal== 33586 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #26389: <==uncertain_firing== 19123 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #28254: <==negation-removal== 43507 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #29368: <==uncertain_firing== 33586 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #33288: <==uncertain_firing== 21114 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #37266: <==uncertain_firing== 43507 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #37267: <==negation-removal== 77288 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #42964: <==negation-removal== 21114 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #45399: <==uncertain_firing== 80904 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #51843: <==uncertain_firing== 52177 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #62725: <==negation-removal== 19123 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #68661: <==negation-removal== 80904 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84407: <==uncertain_firing== 57580 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88028: <==negation-removal== 57580 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (at_d_l1)
                           (Pd_secret_d))
        :effect (and
                    ; #10479: <==closure== 36543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15661: <==closure== 46485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #25552: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #36543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #39049: <==closure== 25552 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #39886: <==closure== 49583 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #46485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49583: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #15834: <==uncertain_firing== 39886 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #27828: <==negation-removal== 25552 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #34570: <==uncertain_firing== 36543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #38064: <==uncertain_firing== 39049 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #45031: <==negation-removal== 49583 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #52213: <==uncertain_firing== 25552 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #58263: <==negation-removal== 10479 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #62961: <==negation-removal== 46485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #63889: <==negation-removal== 15661 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #66489: <==negation-removal== 39049 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #67459: <==uncertain_firing== 49583 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #70149: <==uncertain_firing== 46485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #75583: <==negation-removal== 36543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #87299: <==uncertain_firing== 15661 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #91044: <==negation-removal== 39886 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #91581: <==uncertain_firing== 10479 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #16733: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #33063: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #33538: <==closure== 33063 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #37326: <==closure== 58679 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #46500: <==closure== 82546 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #58679: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #82546: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #88836: <==closure== 16733 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #17183: <==negation-removal== 46500 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #19483: <==uncertain_firing== 37326 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #22508: <==negation-removal== 88836 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #25472: <==uncertain_firing== 16733 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #39256: <==negation-removal== 82546 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #40372: <==negation-removal== 58679 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #45360: <==uncertain_firing== 33063 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #47783: <==negation-removal== 16733 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #48778: <==negation-removal== 33063 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #52064: <==uncertain_firing== 46500 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #56294: <==negation-removal== 33538 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #57092: <==negation-removal== 37326 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #57909: <==uncertain_firing== 33538 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #64614: <==uncertain_firing== 58679 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #87311: <==uncertain_firing== 88836 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #88118: <==uncertain_firing== 82546 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))))

)