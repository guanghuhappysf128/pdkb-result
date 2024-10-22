(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_a_l3)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_b_l3)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_c_l3)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_at_d_l3)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l1_l3)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_connected_l2_l3)
        (not_connected_l3_l1)
        (not_connected_l3_l2)
        (not_connected_l3_l3)
        (not_initialized)
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
        (at_a_l3)
        (at_b_l1)
        (at_b_l2)
        (at_b_l3)
        (at_c_l1)
        (at_c_l2)
        (at_c_l3)
        (at_d_l1)
        (at_d_l2)
        (at_d_l3)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l1_l3)
        (connected_l2_l1)
        (connected_l2_l2)
        (connected_l2_l3)
        (connected_l3_l1)
        (connected_l3_l2)
        (connected_l3_l3)
        (initialized)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
    )

    (:action fib_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #22755: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #51492: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #51977: <==closure== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #59757: <==closure== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #65139: <==closure== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #67510: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #75295: <==closure== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #78669: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #14427: <==uncertain_firing== 22755 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #14992: <==uncertain_firing== 59757 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #15958: <==negation-removal== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #17795: <==negation-removal== 59757 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #27714: <==uncertain_firing== 65139 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #33976: <==negation-removal== 65139 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #36975: <==uncertain_firing== 75295 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #47237: <==negation-removal== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #48043: <==uncertain_firing== 51492 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #48997: <==negation-removal== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #50435: <==negation-removal== 75295 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #51278: <==uncertain_firing== 67510 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #53701: <==uncertain_firing== 51977 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #58692: <==negation-removal== 51977 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64773: <==uncertain_firing== 78669 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66318: <==negation-removal== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #10852: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #17658: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #20844: <==closure== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #31696: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #50656: <==closure== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #62566: <==closure== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #84467: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #85933: <==closure== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #13140: <==uncertain_firing== 31696 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #25702: <==uncertain_firing== 62566 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #26020: <==negation-removal== 20844 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #30599: <==negation-removal== 62566 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37048: <==uncertain_firing== 84467 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #50388: <==negation-removal== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #50944: <==negation-removal== 50656 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #56797: <==negation-removal== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #59959: <==negation-removal== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #67489: <==negation-removal== 85933 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72383: <==negation-removal== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #73813: <==uncertain_firing== 10852 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83136: <==uncertain_firing== 50656 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #85625: <==uncertain_firing== 17658 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #89911: <==uncertain_firing== 20844 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91052: <==uncertain_firing== 85933 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #22144: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #31161: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #33845: <==closure== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #51999: <==closure== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #71593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #74488: <==closure== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #79459: <==closure== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #82617: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #12049: <==negation-removal== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #13595: <==negation-removal== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #17275: <==uncertain_firing== 22144 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #18106: <==uncertain_firing== 31161 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #28993: <==negation-removal== 33845 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #29560: <==negation-removal== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #39112: <==uncertain_firing== 51999 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #40957: <==negation-removal== 51999 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #54378: <==negation-removal== 79459 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #56671: <==uncertain_firing== 33845 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #68098: <==uncertain_firing== 71593 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #70643: <==uncertain_firing== 82617 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #78266: <==negation-removal== 74488 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #83380: <==uncertain_firing== 74488 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #90036: <==uncertain_firing== 79459 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #94591: <==negation-removal== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l1)
                           (Ba_secret_b))
        :effect (and
                    ; #16155: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #19565: <==closure== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #43965: <==closure== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #61829: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #70561: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #73950: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #76694: <==closure== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #91645: <==closure== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #14595: <==uncertain_firing== 76694 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #22552: <==negation-removal== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #27346: <==negation-removal== 43965 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #27998: <==negation-removal== 76694 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #38626: <==negation-removal== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #39206: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #40893: <==negation-removal== 19565 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #42919: <==negation-removal== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #42950: <==negation-removal== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52701: <==uncertain_firing== 43965 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #57732: <==negation-removal== 91645 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #67691: <==uncertain_firing== 91645 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #69745: <==uncertain_firing== 70561 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71137: <==uncertain_firing== 61829 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #85168: <==uncertain_firing== 19565 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #89439: <==uncertain_firing== 16155 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #29706: <==closure== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #35213: <==closure== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54378: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #54751: <==closure== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #56682: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #69972: <==closure== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #78491: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #86712: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #18616: <==uncertain_firing== 54378 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19364: <==uncertain_firing== 78491 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #21055: <==negation-removal== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #21388: <==negation-removal== 29706 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #25877: <==uncertain_firing== 29706 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29090: <==negation-removal== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #29612: <==negation-removal== 35213 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #35968: <==uncertain_firing== 54751 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #47958: <==negation-removal== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #51594: <==uncertain_firing== 69972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52301: <==negation-removal== 54751 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #52341: <==uncertain_firing== 56682 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #64688: <==uncertain_firing== 86712 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #80745: <==negation-removal== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #81844: <==negation-removal== 69972 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #83507: <==uncertain_firing== 35213 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l3)
                           (Ba_secret_b))
        :effect (and
                    ; #18216: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #35837: <==closure== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39781: <==closure== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #45430: <==closure== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #49542: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #78523: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #87854: <==closure== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #90078: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #13223: <==negation-removal== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #15730: <==uncertain_firing== 35837 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21968: <==negation-removal== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #26290: <==negation-removal== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #26734: <==negation-removal== 35837 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #26812: <==uncertain_firing== 87854 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #32829: <==uncertain_firing== 49542 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #35568: <==negation-removal== 39781 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #37576: <==uncertain_firing== 45430 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61185: <==negation-removal== 45430 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #61627: <==uncertain_firing== 78523 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #69397: <==negation-removal== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #75370: <==uncertain_firing== 18216 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #82520: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84447: <==negation-removal== 87854 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #87115: <==uncertain_firing== 39781 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l1)
                           (Ba_secret_c))
        :effect (and
                    ; #15836: <==closure== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #32609: <==closure== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #45245: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #46411: <==closure== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71008: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #71703: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #73561: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #81795: <==closure== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #10080: <==negation-removal== 32609 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #13275: <==negation-removal== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21024: <==uncertain_firing== 45245 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #25692: <==uncertain_firing== 15836 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #32308: <==uncertain_firing== 32609 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #34879: <==negation-removal== 15836 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35568: <==negation-removal== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #37996: <==negation-removal== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #40064: <==uncertain_firing== 81795 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51463: <==negation-removal== 81795 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #69660: <==uncertain_firing== 73561 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #73809: <==negation-removal== 46411 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #81333: <==uncertain_firing== 71008 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #85161: <==uncertain_firing== 46411 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87435: <==negation-removal== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #88893: <==uncertain_firing== 71703 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #10194: <==closure== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #30010: <==closure== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39912: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45107: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #48202: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #79790: <==closure== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #88017: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #88912: <==closure== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #17466: <==uncertain_firing== 10194 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #19190: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #24420: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35371: <==uncertain_firing== 88912 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38144: <==negation-removal== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47696: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #54434: <==uncertain_firing== 39912 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #59319: <==negation-removal== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59617: <==negation-removal== 79790 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #60089: <==uncertain_firing== 79790 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #73814: <==negation-removal== 88912 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #82190: <==negation-removal== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #84950: <==negation-removal== 30010 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #85615: <==negation-removal== 10194 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #87458: <==uncertain_firing== 48202 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #90058: <==uncertain_firing== 30010 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l3)
                           (Ba_secret_c))
        :effect (and
                    ; #11615: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #15202: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #27379: <==closure== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #33136: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #40227: <==closure== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #44061: <==closure== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #68918: <==closure== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #94113: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #11223: <==uncertain_firing== 44061 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #11352: <==uncertain_firing== 68918 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #20687: <==negation-removal== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #32960: <==negation-removal== 27379 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35899: <==uncertain_firing== 27379 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #40694: <==uncertain_firing== 11615 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #42400: <==uncertain_firing== 94113 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #46069: <==negation-removal== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #50934: <==uncertain_firing== 15202 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #57336: <==uncertain_firing== 40227 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #68652: <==negation-removal== 40227 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #75253: <==negation-removal== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #85944: <==negation-removal== 44061 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #86072: <==uncertain_firing== 33136 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #87891: <==negation-removal== 68918 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #89113: <==negation-removal== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d))
        :effect (and
                    ; #12127: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #17337: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #21924: <==closure== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #57952: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59561: <==closure== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #75199: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #84711: <==closure== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #91168: <==closure== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #14939: <==uncertain_firing== 12127 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #37166: <==uncertain_firing== 59561 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #39453: <==uncertain_firing== 75199 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #49194: <==negation-removal== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #54350: <==uncertain_firing== 21924 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60778: <==uncertain_firing== 91168 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #61656: <==negation-removal== 84711 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #66531: <==uncertain_firing== 84711 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69713: <==negation-removal== 21924 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #72018: <==uncertain_firing== 57952 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #74424: <==uncertain_firing== 17337 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77029: <==negation-removal== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #77938: <==negation-removal== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #80336: <==negation-removal== 91168 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #84752: <==negation-removal== 59561 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #92182: <==negation-removal== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l2)
                           (Pa_secret_d))
        :effect (and
                    ; #17136: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #21112: <==closure== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #30922: <==closure== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #44788: <==closure== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #49337: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #65640: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #75720: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #82490: <==closure== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #15427: <==uncertain_firing== 49337 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #17236: <==negation-removal== 82490 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #21836: <==negation-removal== 21112 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #26558: <==uncertain_firing== 44788 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31376: <==uncertain_firing== 82490 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #34621: <==negation-removal== 44788 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #36154: <==negation-removal== 30922 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #53361: <==negation-removal== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60060: <==negation-removal== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #67737: <==uncertain_firing== 21112 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #69454: <==negation-removal== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72147: <==uncertain_firing== 75720 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72766: <==uncertain_firing== 65640 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #73891: <==negation-removal== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #82168: <==uncertain_firing== 30922 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #88556: <==uncertain_firing== 17136 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l3)
                           (Pa_secret_d))
        :effect (and
                    ; #14497: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14824: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #31992: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #37864: <==closure== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #44705: <==closure== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #54680: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #65599: <==closure== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #71100: <==closure== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #19818: <==negation-removal== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #20408: <==uncertain_firing== 14824 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #23731: <==uncertain_firing== 71100 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #28435: <==uncertain_firing== 31992 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #34125: <==negation-removal== 71100 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #36545: <==uncertain_firing== 44705 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49943: <==negation-removal== 65599 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #56165: <==negation-removal== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #57397: <==negation-removal== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #57481: <==negation-removal== 37864 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #58241: <==negation-removal== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #62228: <==uncertain_firing== 54680 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #64410: <==uncertain_firing== 65599 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #65820: <==negation-removal== 44705 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #72671: <==uncertain_firing== 14497 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #76656: <==uncertain_firing== 37864 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a))
        :effect (and
                    ; #22755: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #51492: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #51977: <==closure== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #59757: <==closure== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #65139: <==closure== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #67510: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #75295: <==closure== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #78669: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #14427: <==uncertain_firing== 22755 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #14992: <==uncertain_firing== 59757 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #15958: <==negation-removal== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #17795: <==negation-removal== 59757 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #27714: <==uncertain_firing== 65139 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #33976: <==negation-removal== 65139 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #36975: <==uncertain_firing== 75295 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #47237: <==negation-removal== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #48043: <==uncertain_firing== 51492 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #48997: <==negation-removal== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #50435: <==negation-removal== 75295 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #51278: <==uncertain_firing== 67510 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #53701: <==uncertain_firing== 51977 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #58692: <==negation-removal== 51977 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64773: <==uncertain_firing== 78669 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66318: <==negation-removal== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #10852: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #17658: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #20844: <==closure== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #31696: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #50656: <==closure== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #62566: <==closure== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #84467: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #85933: <==closure== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #13140: <==uncertain_firing== 31696 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #25702: <==uncertain_firing== 62566 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #26020: <==negation-removal== 20844 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #30599: <==negation-removal== 62566 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37048: <==uncertain_firing== 84467 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #50388: <==negation-removal== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #50944: <==negation-removal== 50656 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #56797: <==negation-removal== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #59959: <==negation-removal== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #67489: <==negation-removal== 85933 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72383: <==negation-removal== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #73813: <==uncertain_firing== 10852 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83136: <==uncertain_firing== 50656 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #85625: <==uncertain_firing== 17658 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #89911: <==uncertain_firing== 20844 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91052: <==uncertain_firing== 85933 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l3)
                           (Pb_secret_a))
        :effect (and
                    ; #22144: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #31161: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #33845: <==closure== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #51999: <==closure== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #71593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #74488: <==closure== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #79459: <==closure== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #82617: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #12049: <==negation-removal== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #13595: <==negation-removal== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #17275: <==uncertain_firing== 22144 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #18106: <==uncertain_firing== 31161 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #28993: <==negation-removal== 33845 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #29560: <==negation-removal== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #39112: <==uncertain_firing== 51999 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #40957: <==negation-removal== 51999 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #54378: <==negation-removal== 79459 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #56671: <==uncertain_firing== 33845 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #68098: <==uncertain_firing== 71593 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #70643: <==uncertain_firing== 82617 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #78266: <==negation-removal== 74488 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #83380: <==uncertain_firing== 74488 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #90036: <==uncertain_firing== 79459 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #94591: <==negation-removal== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #16155: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #19565: <==closure== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #43965: <==closure== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #61829: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #70561: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #73950: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #76694: <==closure== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #91645: <==closure== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #14595: <==uncertain_firing== 76694 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #22552: <==negation-removal== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #27346: <==negation-removal== 43965 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #27998: <==negation-removal== 76694 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #38626: <==negation-removal== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #39206: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #40893: <==negation-removal== 19565 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #42919: <==negation-removal== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #42950: <==negation-removal== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52701: <==uncertain_firing== 43965 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #57732: <==negation-removal== 91645 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #67691: <==uncertain_firing== 91645 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #69745: <==uncertain_firing== 70561 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71137: <==uncertain_firing== 61829 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #85168: <==uncertain_firing== 19565 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #89439: <==uncertain_firing== 16155 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized))
        :effect (and
                    ; #29706: <==closure== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #35213: <==closure== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54378: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #54751: <==closure== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #56682: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #69972: <==closure== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #78491: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #86712: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #18616: <==uncertain_firing== 54378 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19364: <==uncertain_firing== 78491 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #21055: <==negation-removal== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #21388: <==negation-removal== 29706 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #25877: <==uncertain_firing== 29706 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29090: <==negation-removal== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #29612: <==negation-removal== 35213 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #35968: <==uncertain_firing== 54751 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #47958: <==negation-removal== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #51594: <==uncertain_firing== 69972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52301: <==negation-removal== 54751 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #52341: <==uncertain_firing== 56682 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #64688: <==uncertain_firing== 86712 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #80745: <==negation-removal== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #81844: <==negation-removal== 69972 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #83507: <==uncertain_firing== 35213 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (initialized)
                           (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l3))
        :effect (and
                    ; #18216: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #35837: <==closure== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39781: <==closure== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #45430: <==closure== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #49542: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #78523: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #87854: <==closure== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #90078: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #13223: <==negation-removal== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #15730: <==uncertain_firing== 35837 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21968: <==negation-removal== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #26290: <==negation-removal== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #26734: <==negation-removal== 35837 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #26812: <==uncertain_firing== 87854 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #32829: <==uncertain_firing== 49542 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #35568: <==negation-removal== 39781 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #37576: <==uncertain_firing== 45430 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61185: <==negation-removal== 45430 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #61627: <==uncertain_firing== 78523 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #69397: <==negation-removal== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #75370: <==uncertain_firing== 18216 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #82520: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84447: <==negation-removal== 87854 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #87115: <==uncertain_firing== 39781 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #15836: <==closure== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #32609: <==closure== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #45245: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #46411: <==closure== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71008: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #71703: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #73561: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #81795: <==closure== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #10080: <==negation-removal== 32609 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #13275: <==negation-removal== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21024: <==uncertain_firing== 45245 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #25692: <==uncertain_firing== 15836 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #32308: <==uncertain_firing== 32609 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #34879: <==negation-removal== 15836 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35568: <==negation-removal== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #37996: <==negation-removal== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #40064: <==uncertain_firing== 81795 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51463: <==negation-removal== 81795 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #69660: <==uncertain_firing== 73561 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #73809: <==negation-removal== 46411 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #81333: <==uncertain_firing== 71008 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #85161: <==uncertain_firing== 46411 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87435: <==negation-removal== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #88893: <==uncertain_firing== 71703 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c)
                           (Pb_secret_c)
                           (initialized))
        :effect (and
                    ; #10194: <==closure== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #30010: <==closure== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39912: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45107: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #48202: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #79790: <==closure== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #88017: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #88912: <==closure== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #17466: <==uncertain_firing== 10194 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #19190: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #24420: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35371: <==uncertain_firing== 88912 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38144: <==negation-removal== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47696: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #54434: <==uncertain_firing== 39912 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #59319: <==negation-removal== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59617: <==negation-removal== 79790 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #60089: <==uncertain_firing== 79790 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #73814: <==negation-removal== 88912 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #82190: <==negation-removal== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #84950: <==negation-removal== 30010 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #85615: <==negation-removal== 10194 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #87458: <==uncertain_firing== 48202 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #90058: <==uncertain_firing== 30010 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (initialized)
                           (Bb_secret_c)
                           (at_b_l3)
                           (Pb_secret_c))
        :effect (and
                    ; #11615: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #15202: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #27379: <==closure== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #33136: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #40227: <==closure== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #44061: <==closure== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #68918: <==closure== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #94113: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #11223: <==uncertain_firing== 44061 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #11352: <==uncertain_firing== 68918 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #20687: <==negation-removal== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #32960: <==negation-removal== 27379 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35899: <==uncertain_firing== 27379 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #40694: <==uncertain_firing== 11615 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #42400: <==uncertain_firing== 94113 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #46069: <==negation-removal== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #50934: <==uncertain_firing== 15202 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #57336: <==uncertain_firing== 40227 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #68652: <==negation-removal== 40227 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #75253: <==negation-removal== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #85944: <==negation-removal== 44061 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #86072: <==uncertain_firing== 33136 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #87891: <==negation-removal== 68918 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #89113: <==negation-removal== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #12127: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #17337: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #21924: <==closure== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #57952: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59561: <==closure== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #75199: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #84711: <==closure== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #91168: <==closure== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #14939: <==uncertain_firing== 12127 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #37166: <==uncertain_firing== 59561 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #39453: <==uncertain_firing== 75199 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #49194: <==negation-removal== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #54350: <==uncertain_firing== 21924 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60778: <==uncertain_firing== 91168 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #61656: <==negation-removal== 84711 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #66531: <==uncertain_firing== 84711 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69713: <==negation-removal== 21924 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #72018: <==uncertain_firing== 57952 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #74424: <==uncertain_firing== 17337 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77029: <==negation-removal== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #77938: <==negation-removal== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #80336: <==negation-removal== 91168 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #84752: <==negation-removal== 59561 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #92182: <==negation-removal== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (initialized))
        :effect (and
                    ; #17136: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #21112: <==closure== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #30922: <==closure== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #44788: <==closure== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #49337: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #65640: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #75720: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #82490: <==closure== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #15427: <==uncertain_firing== 49337 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #17236: <==negation-removal== 82490 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #21836: <==negation-removal== 21112 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #26558: <==uncertain_firing== 44788 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31376: <==uncertain_firing== 82490 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #34621: <==negation-removal== 44788 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #36154: <==negation-removal== 30922 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #53361: <==negation-removal== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60060: <==negation-removal== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #67737: <==uncertain_firing== 21112 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #69454: <==negation-removal== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72147: <==uncertain_firing== 75720 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72766: <==uncertain_firing== 65640 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #73891: <==negation-removal== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #82168: <==uncertain_firing== 30922 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #88556: <==uncertain_firing== 17136 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #14497: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14824: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #31992: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #37864: <==closure== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #44705: <==closure== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #54680: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #65599: <==closure== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #71100: <==closure== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #19818: <==negation-removal== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #20408: <==uncertain_firing== 14824 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #23731: <==uncertain_firing== 71100 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #28435: <==uncertain_firing== 31992 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #34125: <==negation-removal== 71100 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #36545: <==uncertain_firing== 44705 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49943: <==negation-removal== 65599 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #56165: <==negation-removal== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #57397: <==negation-removal== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #57481: <==negation-removal== 37864 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #58241: <==negation-removal== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #62228: <==uncertain_firing== 54680 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #64410: <==uncertain_firing== 65599 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #65820: <==negation-removal== 44705 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #72671: <==uncertain_firing== 14497 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #76656: <==uncertain_firing== 37864 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #22755: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #51492: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #51977: <==closure== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #59757: <==closure== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #65139: <==closure== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #67510: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #75295: <==closure== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #78669: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #14427: <==uncertain_firing== 22755 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #14992: <==uncertain_firing== 59757 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #15958: <==negation-removal== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #17795: <==negation-removal== 59757 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #27714: <==uncertain_firing== 65139 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #33976: <==negation-removal== 65139 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #36975: <==uncertain_firing== 75295 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #47237: <==negation-removal== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #48043: <==uncertain_firing== 51492 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #48997: <==negation-removal== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #50435: <==negation-removal== 75295 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #51278: <==uncertain_firing== 67510 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #53701: <==uncertain_firing== 51977 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #58692: <==negation-removal== 51977 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64773: <==uncertain_firing== 78669 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66318: <==negation-removal== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (initialized)
                           (Pc_secret_a)
                           (at_c_l2)
                           (Bc_secret_a))
        :effect (and
                    ; #10852: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #17658: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #20844: <==closure== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #31696: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #50656: <==closure== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #62566: <==closure== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #84467: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #85933: <==closure== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #13140: <==uncertain_firing== 31696 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #25702: <==uncertain_firing== 62566 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #26020: <==negation-removal== 20844 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #30599: <==negation-removal== 62566 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37048: <==uncertain_firing== 84467 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #50388: <==negation-removal== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #50944: <==negation-removal== 50656 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #56797: <==negation-removal== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #59959: <==negation-removal== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #67489: <==negation-removal== 85933 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72383: <==negation-removal== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #73813: <==uncertain_firing== 10852 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83136: <==uncertain_firing== 50656 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #85625: <==uncertain_firing== 17658 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #89911: <==uncertain_firing== 20844 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91052: <==uncertain_firing== 85933 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #22144: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #31161: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #33845: <==closure== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #51999: <==closure== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #71593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #74488: <==closure== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #79459: <==closure== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #82617: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #12049: <==negation-removal== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #13595: <==negation-removal== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #17275: <==uncertain_firing== 22144 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #18106: <==uncertain_firing== 31161 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #28993: <==negation-removal== 33845 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #29560: <==negation-removal== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #39112: <==uncertain_firing== 51999 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #40957: <==negation-removal== 51999 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #54378: <==negation-removal== 79459 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #56671: <==uncertain_firing== 33845 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #68098: <==uncertain_firing== 71593 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #70643: <==uncertain_firing== 82617 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #78266: <==negation-removal== 74488 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #83380: <==uncertain_firing== 74488 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #90036: <==uncertain_firing== 79459 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #94591: <==negation-removal== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (initialized)
                           (Pc_secret_b)
                           (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #16155: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #19565: <==closure== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #43965: <==closure== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #61829: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #70561: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #73950: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #76694: <==closure== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #91645: <==closure== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #14595: <==uncertain_firing== 76694 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #22552: <==negation-removal== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #27346: <==negation-removal== 43965 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #27998: <==negation-removal== 76694 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #38626: <==negation-removal== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #39206: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #40893: <==negation-removal== 19565 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #42919: <==negation-removal== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #42950: <==negation-removal== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52701: <==uncertain_firing== 43965 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #57732: <==negation-removal== 91645 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #67691: <==uncertain_firing== 91645 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #69745: <==uncertain_firing== 70561 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71137: <==uncertain_firing== 61829 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #85168: <==uncertain_firing== 19565 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #89439: <==uncertain_firing== 16155 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (initialized)
                           (Pc_secret_b)
                           (Bc_secret_b)
                           (at_c_l2))
        :effect (and
                    ; #29706: <==closure== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #35213: <==closure== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54378: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #54751: <==closure== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #56682: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #69972: <==closure== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #78491: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #86712: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #18616: <==uncertain_firing== 54378 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19364: <==uncertain_firing== 78491 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #21055: <==negation-removal== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #21388: <==negation-removal== 29706 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #25877: <==uncertain_firing== 29706 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29090: <==negation-removal== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #29612: <==negation-removal== 35213 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #35968: <==uncertain_firing== 54751 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #47958: <==negation-removal== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #51594: <==uncertain_firing== 69972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52301: <==negation-removal== 54751 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #52341: <==uncertain_firing== 56682 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #64688: <==uncertain_firing== 86712 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #80745: <==negation-removal== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #81844: <==negation-removal== 69972 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #83507: <==uncertain_firing== 35213 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #18216: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #35837: <==closure== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39781: <==closure== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #45430: <==closure== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #49542: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #78523: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #87854: <==closure== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #90078: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #13223: <==negation-removal== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #15730: <==uncertain_firing== 35837 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21968: <==negation-removal== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #26290: <==negation-removal== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #26734: <==negation-removal== 35837 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #26812: <==uncertain_firing== 87854 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #32829: <==uncertain_firing== 49542 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #35568: <==negation-removal== 39781 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #37576: <==uncertain_firing== 45430 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61185: <==negation-removal== 45430 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #61627: <==uncertain_firing== 78523 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #69397: <==negation-removal== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #75370: <==uncertain_firing== 18216 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #82520: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84447: <==negation-removal== 87854 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #87115: <==uncertain_firing== 39781 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #15836: <==closure== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #32609: <==closure== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #45245: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #46411: <==closure== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71008: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #71703: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #73561: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #81795: <==closure== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #10080: <==negation-removal== 32609 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #13275: <==negation-removal== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21024: <==uncertain_firing== 45245 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #25692: <==uncertain_firing== 15836 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #32308: <==uncertain_firing== 32609 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #34879: <==negation-removal== 15836 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35568: <==negation-removal== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #37996: <==negation-removal== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #40064: <==uncertain_firing== 81795 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51463: <==negation-removal== 81795 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #69660: <==uncertain_firing== 73561 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #73809: <==negation-removal== 46411 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #81333: <==uncertain_firing== 71008 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #85161: <==uncertain_firing== 46411 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87435: <==negation-removal== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #88893: <==uncertain_firing== 71703 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c)
                           (at_c_l2))
        :effect (and
                    ; #10194: <==closure== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #30010: <==closure== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39912: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45107: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #48202: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #79790: <==closure== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #88017: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #88912: <==closure== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #17466: <==uncertain_firing== 10194 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #19190: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #24420: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35371: <==uncertain_firing== 88912 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38144: <==negation-removal== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47696: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #54434: <==uncertain_firing== 39912 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #59319: <==negation-removal== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59617: <==negation-removal== 79790 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #60089: <==uncertain_firing== 79790 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #73814: <==negation-removal== 88912 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #82190: <==negation-removal== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #84950: <==negation-removal== 30010 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #85615: <==negation-removal== 10194 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #87458: <==uncertain_firing== 48202 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #90058: <==uncertain_firing== 30010 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_c)
                           (initialized)
                           (Bc_secret_c))
        :effect (and
                    ; #11615: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #15202: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #27379: <==closure== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #33136: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #40227: <==closure== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #44061: <==closure== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #68918: <==closure== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #94113: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #11223: <==uncertain_firing== 44061 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #11352: <==uncertain_firing== 68918 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #20687: <==negation-removal== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #32960: <==negation-removal== 27379 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35899: <==uncertain_firing== 27379 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #40694: <==uncertain_firing== 11615 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #42400: <==uncertain_firing== 94113 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #46069: <==negation-removal== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #50934: <==uncertain_firing== 15202 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #57336: <==uncertain_firing== 40227 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #68652: <==negation-removal== 40227 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #75253: <==negation-removal== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #85944: <==negation-removal== 44061 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #86072: <==uncertain_firing== 33136 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #87891: <==negation-removal== 68918 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #89113: <==negation-removal== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #12127: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #17337: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #21924: <==closure== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #57952: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59561: <==closure== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #75199: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #84711: <==closure== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #91168: <==closure== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #14939: <==uncertain_firing== 12127 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #37166: <==uncertain_firing== 59561 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #39453: <==uncertain_firing== 75199 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #49194: <==negation-removal== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #54350: <==uncertain_firing== 21924 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60778: <==uncertain_firing== 91168 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #61656: <==negation-removal== 84711 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #66531: <==uncertain_firing== 84711 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69713: <==negation-removal== 21924 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #72018: <==uncertain_firing== 57952 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #74424: <==uncertain_firing== 17337 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77029: <==negation-removal== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #77938: <==negation-removal== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #80336: <==negation-removal== 91168 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #84752: <==negation-removal== 59561 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #92182: <==negation-removal== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (initialized)
                           (Bc_secret_d)
                           (at_c_l2)
                           (Pc_secret_d))
        :effect (and
                    ; #17136: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #21112: <==closure== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #30922: <==closure== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #44788: <==closure== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #49337: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #65640: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #75720: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #82490: <==closure== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #15427: <==uncertain_firing== 49337 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #17236: <==negation-removal== 82490 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #21836: <==negation-removal== 21112 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #26558: <==uncertain_firing== 44788 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31376: <==uncertain_firing== 82490 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #34621: <==negation-removal== 44788 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #36154: <==negation-removal== 30922 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #53361: <==negation-removal== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60060: <==negation-removal== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #67737: <==uncertain_firing== 21112 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #69454: <==negation-removal== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72147: <==uncertain_firing== 75720 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72766: <==uncertain_firing== 65640 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #73891: <==negation-removal== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #82168: <==uncertain_firing== 30922 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #88556: <==uncertain_firing== 17136 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_d)
                           (initialized)
                           (Pc_secret_d))
        :effect (and
                    ; #14497: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14824: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #31992: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #37864: <==closure== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #44705: <==closure== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #54680: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #65599: <==closure== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #71100: <==closure== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #19818: <==negation-removal== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #20408: <==uncertain_firing== 14824 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #23731: <==uncertain_firing== 71100 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #28435: <==uncertain_firing== 31992 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #34125: <==negation-removal== 71100 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #36545: <==uncertain_firing== 44705 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49943: <==negation-removal== 65599 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #56165: <==negation-removal== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #57397: <==negation-removal== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #57481: <==negation-removal== 37864 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #58241: <==negation-removal== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #62228: <==uncertain_firing== 54680 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #64410: <==uncertain_firing== 65599 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #65820: <==negation-removal== 44705 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #72671: <==uncertain_firing== 14497 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #76656: <==uncertain_firing== 37864 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (at_d_l1)
                           (initialized)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #22755: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #51492: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #51977: <==closure== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #59757: <==closure== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #65139: <==closure== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #67510: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #75295: <==closure== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #78669: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #14427: <==uncertain_firing== 22755 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #14992: <==uncertain_firing== 59757 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #15958: <==negation-removal== 51492 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #17795: <==negation-removal== 59757 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #27714: <==uncertain_firing== 65139 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #33976: <==negation-removal== 65139 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #36975: <==uncertain_firing== 75295 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #47237: <==negation-removal== 22755 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #48043: <==uncertain_firing== 51492 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #48997: <==negation-removal== 67510 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #50435: <==negation-removal== 75295 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #51278: <==uncertain_firing== 67510 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #53701: <==uncertain_firing== 51977 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #58692: <==negation-removal== 51977 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64773: <==uncertain_firing== 78669 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66318: <==negation-removal== 78669 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (initialized)
                           (at_d_l2))
        :effect (and
                    ; #10852: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #17658: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #20844: <==closure== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #31696: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #50656: <==closure== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #62566: <==closure== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #84467: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #85933: <==closure== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #13140: <==uncertain_firing== 31696 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #25702: <==uncertain_firing== 62566 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #26020: <==negation-removal== 20844 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #30599: <==negation-removal== 62566 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37048: <==uncertain_firing== 84467 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #50388: <==negation-removal== 10852 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #50944: <==negation-removal== 50656 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #56797: <==negation-removal== 31696 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #59959: <==negation-removal== 84467 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #67489: <==negation-removal== 85933 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72383: <==negation-removal== 17658 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #73813: <==uncertain_firing== 10852 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83136: <==uncertain_firing== 50656 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #85625: <==uncertain_firing== 17658 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #89911: <==uncertain_firing== 20844 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91052: <==uncertain_firing== 85933 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l2))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (initialized)
                           (at_d_l3))
        :effect (and
                    ; #22144: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #31161: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #33845: <==closure== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #51999: <==closure== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #71593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #74488: <==closure== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #79459: <==closure== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #82617: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #12049: <==negation-removal== 22144 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #13595: <==negation-removal== 31161 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #17275: <==uncertain_firing== 22144 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #18106: <==uncertain_firing== 31161 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #28993: <==negation-removal== 33845 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #29560: <==negation-removal== 71593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #39112: <==uncertain_firing== 51999 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #40957: <==negation-removal== 51999 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #54378: <==negation-removal== 79459 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #56671: <==uncertain_firing== 33845 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #68098: <==uncertain_firing== 71593 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #70643: <==uncertain_firing== 82617 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #78266: <==negation-removal== 74488 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #83380: <==uncertain_firing== 74488 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #90036: <==uncertain_firing== 79459 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #94591: <==negation-removal== 82617 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #16155: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #19565: <==closure== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #43965: <==closure== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #61829: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #70561: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #73950: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #76694: <==closure== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #91645: <==closure== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #14595: <==uncertain_firing== 76694 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #22552: <==negation-removal== 61829 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #27346: <==negation-removal== 43965 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #27998: <==negation-removal== 76694 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #38626: <==negation-removal== 16155 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #39206: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #40893: <==negation-removal== 19565 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #42919: <==negation-removal== 73950 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #42950: <==negation-removal== 70561 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52701: <==uncertain_firing== 43965 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #57732: <==negation-removal== 91645 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #67691: <==uncertain_firing== 91645 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #69745: <==uncertain_firing== 70561 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71137: <==uncertain_firing== 61829 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #85168: <==uncertain_firing== 19565 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #89439: <==uncertain_firing== 16155 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l1))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (initialized)
                           (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l2))
        :effect (and
                    ; #29706: <==closure== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #35213: <==closure== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54378: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #54751: <==closure== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #56682: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #69972: <==closure== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #78491: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #86712: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #18616: <==uncertain_firing== 54378 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19364: <==uncertain_firing== 78491 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #21055: <==negation-removal== 86712 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #21388: <==negation-removal== 29706 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #25877: <==uncertain_firing== 29706 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29090: <==negation-removal== 78491 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #29612: <==negation-removal== 35213 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #35968: <==uncertain_firing== 54751 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #47958: <==negation-removal== 54378 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #51594: <==uncertain_firing== 69972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52301: <==negation-removal== 54751 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #52341: <==uncertain_firing== 56682 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #64688: <==uncertain_firing== 86712 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #80745: <==negation-removal== 56682 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #81844: <==negation-removal== 69972 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #83507: <==uncertain_firing== 35213 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (initialized)
                           (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l3))
        :effect (and
                    ; #18216: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #35837: <==closure== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39781: <==closure== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #45430: <==closure== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #49542: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #78523: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #87854: <==closure== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #90078: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #13223: <==negation-removal== 49542 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #15730: <==uncertain_firing== 35837 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21968: <==negation-removal== 90078 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #26290: <==negation-removal== 78523 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #26734: <==negation-removal== 35837 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #26812: <==uncertain_firing== 87854 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #32829: <==uncertain_firing== 49542 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #35568: <==negation-removal== 39781 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #37576: <==uncertain_firing== 45430 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61185: <==negation-removal== 45430 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #61627: <==uncertain_firing== 78523 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #69397: <==negation-removal== 18216 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #75370: <==uncertain_firing== 18216 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #82520: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84447: <==negation-removal== 87854 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #87115: <==uncertain_firing== 39781 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #15836: <==closure== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #32609: <==closure== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #45245: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #46411: <==closure== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71008: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #71703: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #73561: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #81795: <==closure== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #10080: <==negation-removal== 32609 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #13275: <==negation-removal== 71703 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21024: <==uncertain_firing== 45245 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #25692: <==uncertain_firing== 15836 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #32308: <==uncertain_firing== 32609 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #34879: <==negation-removal== 15836 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35568: <==negation-removal== 71008 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #37996: <==negation-removal== 73561 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #40064: <==uncertain_firing== 81795 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51463: <==negation-removal== 81795 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #69660: <==uncertain_firing== 73561 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #73809: <==negation-removal== 46411 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #81333: <==uncertain_firing== 71008 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #85161: <==uncertain_firing== 46411 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l1))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87435: <==negation-removal== 45245 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #88893: <==uncertain_firing== 71703 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l2))
        :effect (and
                    ; #10194: <==closure== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #30010: <==closure== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39912: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45107: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #48202: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #79790: <==closure== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #88017: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #88912: <==closure== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #17466: <==uncertain_firing== 10194 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #19190: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #24420: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35371: <==uncertain_firing== 88912 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38144: <==negation-removal== 48202 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47696: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #54434: <==uncertain_firing== 39912 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #59319: <==negation-removal== 88017 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59617: <==negation-removal== 79790 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #60089: <==uncertain_firing== 79790 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #73814: <==negation-removal== 88912 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #82190: <==negation-removal== 39912 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #84950: <==negation-removal== 30010 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #85615: <==negation-removal== 10194 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #87458: <==uncertain_firing== 48202 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #90058: <==uncertain_firing== 30010 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l3))
        :effect (and
                    ; #11615: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #15202: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #27379: <==closure== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #33136: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #40227: <==closure== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #44061: <==closure== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #68918: <==closure== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #94113: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #11223: <==uncertain_firing== 44061 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #11352: <==uncertain_firing== 68918 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #20687: <==negation-removal== 15202 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #32960: <==negation-removal== 27379 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35899: <==uncertain_firing== 27379 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #40694: <==uncertain_firing== 11615 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #42400: <==uncertain_firing== 94113 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l3))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #46069: <==negation-removal== 11615 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #50934: <==uncertain_firing== 15202 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #57336: <==uncertain_firing== 40227 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #68652: <==negation-removal== 40227 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #75253: <==negation-removal== 33136 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #85944: <==negation-removal== 44061 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #86072: <==uncertain_firing== 33136 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #87891: <==negation-removal== 68918 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #89113: <==negation-removal== 94113 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d))
        :effect (and
                    ; #12127: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #17337: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #21924: <==closure== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #57952: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59561: <==closure== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #75199: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #84711: <==closure== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #91168: <==closure== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #14939: <==uncertain_firing== 12127 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #37166: <==uncertain_firing== 59561 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #39453: <==uncertain_firing== 75199 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #49194: <==negation-removal== 17337 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #54350: <==uncertain_firing== 21924 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60778: <==uncertain_firing== 91168 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #61656: <==negation-removal== 84711 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #66531: <==uncertain_firing== 84711 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69713: <==negation-removal== 21924 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #72018: <==uncertain_firing== 57952 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #74424: <==uncertain_firing== 17337 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l1))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77029: <==negation-removal== 12127 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #77938: <==negation-removal== 75199 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #80336: <==negation-removal== 91168 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #84752: <==negation-removal== 59561 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #92182: <==negation-removal== 57952 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (at_d_l2)
                           (Bd_secret_d))
        :effect (and
                    ; #17136: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #21112: <==closure== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #30922: <==closure== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #44788: <==closure== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #49337: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #65640: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #75720: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #82490: <==closure== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #15427: <==uncertain_firing== 49337 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #17236: <==negation-removal== 82490 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #21836: <==negation-removal== 21112 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #26558: <==uncertain_firing== 44788 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31376: <==uncertain_firing== 82490 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #34621: <==negation-removal== 44788 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #36154: <==negation-removal== 30922 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #53361: <==negation-removal== 75720 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60060: <==negation-removal== 49337 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #67737: <==uncertain_firing== 21112 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #69454: <==negation-removal== 65640 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72147: <==uncertain_firing== 75720 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72766: <==uncertain_firing== 65640 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #73891: <==negation-removal== 17136 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #82168: <==uncertain_firing== 30922 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #88556: <==uncertain_firing== 17136 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (at_d_l3)
                           (Bd_secret_d))
        :effect (and
                    ; #14497: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14824: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #31992: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #37864: <==closure== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #44705: <==closure== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #54680: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #65599: <==closure== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #71100: <==closure== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #19818: <==negation-removal== 14497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #20408: <==uncertain_firing== 14824 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #23731: <==uncertain_firing== 71100 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #28435: <==uncertain_firing== 31992 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #34125: <==negation-removal== 71100 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #36545: <==uncertain_firing== 44705 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49943: <==negation-removal== 65599 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #56165: <==negation-removal== 14824 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #57397: <==negation-removal== 31992 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #57481: <==negation-removal== 37864 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #58241: <==negation-removal== 54680 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #62228: <==uncertain_firing== 54680 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #64410: <==uncertain_firing== 65599 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #65820: <==negation-removal== 44705 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #72671: <==uncertain_firing== 14497 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #76656: <==uncertain_firing== 37864 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #22033: origin
                    (Bd_secret_d)

                    ; #24683: origin
                    (Bb_secret_b)

                    ; #31673: <==closure== 22033 (pos)
                    (Pd_secret_d)

                    ; #39781: origin
                    (Bc_secret_c)

                    ; #43300: <==closure== 39781 (pos)
                    (Pc_secret_c)

                    ; #45998: origin
                    (initialized)

                    ; #51008: <==closure== 91410 (pos)
                    (Pa_secret_a)

                    ; #65978: <==closure== 24683 (pos)
                    (Pb_secret_b)

                    ; #91410: origin
                    (Ba_secret_a)

                    ; #18624: <==negation-removal== 65978 (pos)
                    (not (Bb_not_secret_b))

                    ; #40015: <==negation-removal== 43300 (pos)
                    (not (Bc_not_secret_c))

                    ; #53607: <==negation-removal== 91410 (pos)
                    (not (Pa_not_secret_a))

                    ; #59763: <==negation-removal== 51008 (pos)
                    (not (Ba_not_secret_a))

                    ; #59976: <==negation-removal== 39781 (pos)
                    (not (Pc_not_secret_c))

                    ; #70315: <==negation-removal== 31673 (pos)
                    (not (Bd_not_secret_d))

                    ; #81070: <==negation-removal== 45998 (pos)
                    (not (not_initialized))

                    ; #90563: <==negation-removal== 24683 (pos)
                    (not (Pb_not_secret_b))

                    ; #95177: <==negation-removal== 22033 (pos)
                    (not (Pd_not_secret_d))))

    (:action move_a_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_a_l1))
        :effect (and
                    ; #12616: origin
                    (not_at_a_l1)

                    ; #78273: origin
                    (at_a_l1)

                    ; #12616: <==negation-removal== 78273 (pos)
                    (not (not_at_a_l1))

                    ; #78273: <==negation-removal== 12616 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (initialized)
                           (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #12616: origin
                    (not_at_a_l1)

                    ; #89399: origin
                    (at_a_l2)

                    ; #63595: <==negation-removal== 89399 (pos)
                    (not (not_at_a_l2))

                    ; #78273: <==negation-removal== 12616 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_a_l1))
        :effect (and
                    ; #12616: origin
                    (not_at_a_l1)

                    ; #32046: origin
                    (at_a_l3)

                    ; #16161: <==negation-removal== 32046 (pos)
                    (not (not_at_a_l3))

                    ; #78273: <==negation-removal== 12616 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #63595: origin
                    (not_at_a_l2)

                    ; #78273: origin
                    (at_a_l1)

                    ; #12616: <==negation-removal== 78273 (pos)
                    (not (not_at_a_l1))

                    ; #89399: <==negation-removal== 63595 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #63595: origin
                    (not_at_a_l2)

                    ; #89399: origin
                    (at_a_l2)

                    ; #63595: <==negation-removal== 89399 (pos)
                    (not (not_at_a_l2))

                    ; #89399: <==negation-removal== 63595 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (connected_l2_l3)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #32046: origin
                    (at_a_l3)

                    ; #63595: origin
                    (not_at_a_l2)

                    ; #16161: <==negation-removal== 32046 (pos)
                    (not (not_at_a_l3))

                    ; #89399: <==negation-removal== 63595 (pos)
                    (not (at_a_l2))))

    (:action move_a_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_a_l3))
        :effect (and
                    ; #16161: origin
                    (not_at_a_l3)

                    ; #78273: origin
                    (at_a_l1)

                    ; #12616: <==negation-removal== 78273 (pos)
                    (not (not_at_a_l1))

                    ; #32046: <==negation-removal== 16161 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l2
        :precondition (and (initialized)
                           (connected_l3_l2)
                           (at_a_l3))
        :effect (and
                    ; #16161: origin
                    (not_at_a_l3)

                    ; #89399: origin
                    (at_a_l2)

                    ; #32046: <==negation-removal== 16161 (pos)
                    (not (at_a_l3))

                    ; #63595: <==negation-removal== 89399 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_a_l3))
        :effect (and
                    ; #16161: origin
                    (not_at_a_l3)

                    ; #32046: origin
                    (at_a_l3)

                    ; #16161: <==negation-removal== 32046 (pos)
                    (not (not_at_a_l3))

                    ; #32046: <==negation-removal== 16161 (pos)
                    (not (at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #18337: origin
                    (at_b_l1)

                    ; #66385: origin
                    (not_at_b_l1)

                    ; #18337: <==negation-removal== 66385 (pos)
                    (not (at_b_l1))

                    ; #66385: <==negation-removal== 18337 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (initialized)
                           (at_b_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #66385: origin
                    (not_at_b_l1)

                    ; #66533: origin
                    (at_b_l2)

                    ; #18337: <==negation-removal== 66385 (pos)
                    (not (at_b_l1))

                    ; #46702: <==negation-removal== 66533 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l1_l3
        :precondition (and (initialized)
                           (at_b_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #35593: origin
                    (at_b_l3)

                    ; #66385: origin
                    (not_at_b_l1)

                    ; #18337: <==negation-removal== 66385 (pos)
                    (not (at_b_l1))

                    ; #35899: <==negation-removal== 35593 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (initialized)
                           (connected_l2_l1))
        :effect (and
                    ; #18337: origin
                    (at_b_l1)

                    ; #46702: origin
                    (not_at_b_l2)

                    ; #66385: <==negation-removal== 18337 (pos)
                    (not (not_at_b_l1))

                    ; #66533: <==negation-removal== 46702 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (initialized)
                           (connected_l2_l2))
        :effect (and
                    ; #46702: origin
                    (not_at_b_l2)

                    ; #66533: origin
                    (at_b_l2)

                    ; #46702: <==negation-removal== 66533 (pos)
                    (not (not_at_b_l2))

                    ; #66533: <==negation-removal== 46702 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (at_b_l2)
                           (initialized)
                           (connected_l2_l3))
        :effect (and
                    ; #35593: origin
                    (at_b_l3)

                    ; #46702: origin
                    (not_at_b_l2)

                    ; #35899: <==negation-removal== 35593 (pos)
                    (not (not_at_b_l3))

                    ; #66533: <==negation-removal== 46702 (pos)
                    (not (at_b_l2))))

    (:action move_b_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_b_l3))
        :effect (and
                    ; #18337: origin
                    (at_b_l1)

                    ; #35899: origin
                    (not_at_b_l3)

                    ; #35593: <==negation-removal== 35899 (pos)
                    (not (at_b_l3))

                    ; #66385: <==negation-removal== 18337 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l3_l2
        :precondition (and (initialized)
                           (connected_l3_l2)
                           (at_b_l3))
        :effect (and
                    ; #35899: origin
                    (not_at_b_l3)

                    ; #66533: origin
                    (at_b_l2)

                    ; #35593: <==negation-removal== 35899 (pos)
                    (not (at_b_l3))

                    ; #46702: <==negation-removal== 66533 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_b_l3))
        :effect (and
                    ; #35593: origin
                    (at_b_l3)

                    ; #35899: origin
                    (not_at_b_l3)

                    ; #35593: <==negation-removal== 35899 (pos)
                    (not (at_b_l3))

                    ; #35899: <==negation-removal== 35593 (pos)
                    (not (not_at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #10532: origin
                    (at_c_l1)

                    ; #69054: origin
                    (not_at_c_l1)

                    ; #10532: <==negation-removal== 69054 (pos)
                    (not (at_c_l1))

                    ; #69054: <==negation-removal== 10532 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #59546: origin
                    (at_c_l2)

                    ; #69054: origin
                    (not_at_c_l1)

                    ; #10532: <==negation-removal== 69054 (pos)
                    (not (at_c_l1))

                    ; #17668: <==negation-removal== 59546 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l1_l3
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #39918: origin
                    (at_c_l3)

                    ; #69054: origin
                    (not_at_c_l1)

                    ; #10532: <==negation-removal== 69054 (pos)
                    (not (at_c_l1))

                    ; #72218: <==negation-removal== 39918 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_c_l2))
        :effect (and
                    ; #10532: origin
                    (at_c_l1)

                    ; #17668: origin
                    (not_at_c_l2)

                    ; #59546: <==negation-removal== 17668 (pos)
                    (not (at_c_l2))

                    ; #69054: <==negation-removal== 10532 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (initialized)
                           (connected_l2_l2)
                           (at_c_l2))
        :effect (and
                    ; #17668: origin
                    (not_at_c_l2)

                    ; #59546: origin
                    (at_c_l2)

                    ; #17668: <==negation-removal== 59546 (pos)
                    (not (not_at_c_l2))

                    ; #59546: <==negation-removal== 17668 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (connected_l2_l3)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #17668: origin
                    (not_at_c_l2)

                    ; #39918: origin
                    (at_c_l3)

                    ; #59546: <==negation-removal== 17668 (pos)
                    (not (at_c_l2))

                    ; #72218: <==negation-removal== 39918 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (at_c_l3)
                           (connected_l3_l1)
                           (initialized))
        :effect (and
                    ; #10532: origin
                    (at_c_l1)

                    ; #72218: origin
                    (not_at_c_l3)

                    ; #39918: <==negation-removal== 72218 (pos)
                    (not (at_c_l3))

                    ; #69054: <==negation-removal== 10532 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l3_l2
        :precondition (and (at_c_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #59546: origin
                    (at_c_l2)

                    ; #72218: origin
                    (not_at_c_l3)

                    ; #17668: <==negation-removal== 59546 (pos)
                    (not (not_at_c_l2))

                    ; #39918: <==negation-removal== 72218 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (at_c_l3)
                           (connected_l3_l3)
                           (initialized))
        :effect (and
                    ; #39918: origin
                    (at_c_l3)

                    ; #72218: origin
                    (not_at_c_l3)

                    ; #39918: <==negation-removal== 72218 (pos)
                    (not (at_c_l3))

                    ; #72218: <==negation-removal== 39918 (pos)
                    (not (not_at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (at_d_l1)
                           (connected_l1_l1)
                           (initialized))
        :effect (and
                    ; #47099: origin
                    (not_at_d_l1)

                    ; #60155: origin
                    (at_d_l1)

                    ; #47099: <==negation-removal== 60155 (pos)
                    (not (not_at_d_l1))

                    ; #60155: <==negation-removal== 47099 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (at_d_l1)
                           (initialized)
                           (connected_l1_l2))
        :effect (and
                    ; #47099: origin
                    (not_at_d_l1)

                    ; #69853: origin
                    (at_d_l2)

                    ; #60155: <==negation-removal== 47099 (pos)
                    (not (at_d_l1))

                    ; #70611: <==negation-removal== 69853 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l1_l3
        :precondition (and (at_d_l1)
                           (connected_l1_l3)
                           (initialized))
        :effect (and
                    ; #20055: origin
                    (at_d_l3)

                    ; #47099: origin
                    (not_at_d_l1)

                    ; #46892: <==negation-removal== 20055 (pos)
                    (not (not_at_d_l3))

                    ; #60155: <==negation-removal== 47099 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #60155: origin
                    (at_d_l1)

                    ; #70611: origin
                    (not_at_d_l2)

                    ; #47099: <==negation-removal== 60155 (pos)
                    (not (not_at_d_l1))

                    ; #69853: <==negation-removal== 70611 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (initialized)
                           (connected_l2_l2)
                           (at_d_l2))
        :effect (and
                    ; #69853: origin
                    (at_d_l2)

                    ; #70611: origin
                    (not_at_d_l2)

                    ; #69853: <==negation-removal== 70611 (pos)
                    (not (at_d_l2))

                    ; #70611: <==negation-removal== 69853 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (connected_l2_l3)
                           (initialized)
                           (at_d_l2))
        :effect (and
                    ; #20055: origin
                    (at_d_l3)

                    ; #70611: origin
                    (not_at_d_l2)

                    ; #46892: <==negation-removal== 20055 (pos)
                    (not (not_at_d_l3))

                    ; #69853: <==negation-removal== 70611 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_d_l3))
        :effect (and
                    ; #46892: origin
                    (not_at_d_l3)

                    ; #60155: origin
                    (at_d_l1)

                    ; #20055: <==negation-removal== 46892 (pos)
                    (not (at_d_l3))

                    ; #47099: <==negation-removal== 60155 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l3_l2
        :precondition (and (initialized)
                           (connected_l3_l2)
                           (at_d_l3))
        :effect (and
                    ; #46892: origin
                    (not_at_d_l3)

                    ; #69853: origin
                    (at_d_l2)

                    ; #20055: <==negation-removal== 46892 (pos)
                    (not (at_d_l3))

                    ; #70611: <==negation-removal== 69853 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_d_l3))
        :effect (and
                    ; #20055: origin
                    (at_d_l3)

                    ; #46892: origin
                    (not_at_d_l3)

                    ; #20055: <==negation-removal== 46892 (pos)
                    (not (at_d_l3))

                    ; #46892: <==negation-removal== 20055 (pos)
                    (not (not_at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #25493: <==closure== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #28268: <==closure== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #32978: <==closure== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41552: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #56836: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #77356: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #79633: <==closure== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #84619: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #12938: <==negation-removal== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21246: <==uncertain_firing== 77356 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #21626: <==uncertain_firing== 32978 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #23234: <==negation-removal== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27071: <==uncertain_firing== 28268 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #30763: <==uncertain_firing== 56836 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #32306: <==uncertain_firing== 84619 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #42548: <==uncertain_firing== 41552 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #54444: <==uncertain_firing== 25493 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #55833: <==negation-removal== 79633 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #59686: <==negation-removal== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60357: <==negation-removal== 25493 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #67821: <==uncertain_firing== 79633 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #70213: <==negation-removal== 28268 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73515: <==negation-removal== 32978 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #83597: <==negation-removal== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #17567: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #36896: <==closure== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #45337: <==closure== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #59384: <==closure== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #60996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #75947: <==closure== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #83320: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #91892: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #11050: <==negation-removal== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34053: <==negation-removal== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #37538: <==uncertain_firing== 75947 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38989: <==negation-removal== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #48624: <==uncertain_firing== 83320 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #50002: <==uncertain_firing== 59384 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #52848: <==uncertain_firing== 91892 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53254: <==negation-removal== 75947 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #53875: <==negation-removal== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #57229: <==negation-removal== 59384 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #72318: <==negation-removal== 45337 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #79756: <==negation-removal== 36896 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #80992: <==uncertain_firing== 60996 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #89559: <==uncertain_firing== 36896 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #91118: <==uncertain_firing== 45337 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #94428: <==uncertain_firing== 17567 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #24187: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #29018: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #57809: <==closure== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #64269: <==closure== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #64396: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #72757: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #83915: <==closure== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #91717: <==closure== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #15574: <==negation-removal== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #16818: <==negation-removal== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #18933: <==negation-removal== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26442: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #29184: <==uncertain_firing== 83915 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #29355: <==uncertain_firing== 91717 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #33988: <==negation-removal== 91717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #42841: <==uncertain_firing== 64396 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53639: <==uncertain_firing== 57809 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #62488: <==negation-removal== 83915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #62571: <==uncertain_firing== 24187 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67755: <==uncertain_firing== 64269 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #67859: <==uncertain_firing== 29018 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #68181: <==negation-removal== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #89933: <==negation-removal== 64269 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #90098: <==negation-removal== 57809 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l1)
                           (Ba_secret_b))
        :effect (and
                    ; #19458: <==closure== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #40880: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #43589: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #45832: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #66909: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #71995: <==closure== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #82641: <==closure== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89012: <==closure== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #11124: <==negation-removal== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #13346: <==negation-removal== 82641 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #22632: <==uncertain_firing== 82641 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27457: <==negation-removal== 71995 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #30319: <==uncertain_firing== 89012 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #31666: <==uncertain_firing== 66909 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #34353: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #51235: <==uncertain_firing== 40880 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #53553: <==negation-removal== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #55336: <==negation-removal== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #61947: <==negation-removal== 19458 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #68588: <==negation-removal== 89012 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #69764: <==negation-removal== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88555: <==uncertain_firing== 43589 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #89752: <==uncertain_firing== 45832 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89972: <==uncertain_firing== 71995 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #21593: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #26224: <==closure== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #28931: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #35087: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #49043: <==closure== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #57414: <==closure== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #58284: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #77805: <==closure== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #20320: <==negation-removal== 26224 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #30843: <==negation-removal== 57414 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #35406: <==negation-removal== 77805 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #36520: <==negation-removal== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #41801: <==negation-removal== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #52375: <==uncertain_firing== 57414 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #53385: <==negation-removal== 49043 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #54217: <==uncertain_firing== 35087 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #62851: <==uncertain_firing== 26224 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_b)))

                    ; #72200: <==uncertain_firing== 28931 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #72268: <==uncertain_firing== 21593 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #73273: <==negation-removal== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #75915: <==negation-removal== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #76735: <==uncertain_firing== 58284 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_b)))

                    ; #86601: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #90938: <==uncertain_firing== 77805 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l3)
                           (Ba_secret_b))
        :effect (and
                    ; #12951: <==closure== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #20521: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #31765: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #33329: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #57721: <==closure== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #63701: <==closure== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #75766: <==closure== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #90970: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #16696: <==uncertain_firing== 33329 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #24543: <==negation-removal== 63701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #31418: <==negation-removal== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #32560: <==negation-removal== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #43384: <==negation-removal== 12951 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49826: <==uncertain_firing== 75766 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #51913: <==negation-removal== 75766 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #59658: <==uncertain_firing== 57721 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #60251: <==uncertain_firing== 12951 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #65119: <==uncertain_firing== 63701 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #74566: <==uncertain_firing== 31765 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #76781: <==uncertain_firing== 90970 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #82571: <==negation-removal== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #83378: <==negation-removal== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #87911: <==uncertain_firing== 20521 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #89494: <==negation-removal== 57721 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l1)
                           (Ba_secret_c))
        :effect (and
                    ; #53484: <==closure== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #58320: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #61996: <==closure== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #63658: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #79007: <==closure== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #88017: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #88609: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #89715: <==closure== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #12352: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #14319: <==uncertain_firing== 53484 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #17324: <==uncertain_firing== 58320 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #20157: <==negation-removal== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25398: <==uncertain_firing== 61996 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #26797: <==uncertain_firing== 63658 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #28282: <==negation-removal== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #42691: <==negation-removal== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #60300: <==uncertain_firing== 88609 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #62135: <==negation-removal== 53484 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #65664: <==uncertain_firing== 79007 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #68214: <==negation-removal== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #71733: <==negation-removal== 61996 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #74747: <==negation-removal== 89715 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #82251: <==uncertain_firing== 89715 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90829: <==negation-removal== 79007 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #18769: <==closure== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #26755: <==closure== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #32445: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #36777: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #41171: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #45263: <==closure== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #63585: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #87994: <==closure== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #12679: <==negation-removal== 45263 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #15129: <==uncertain_firing== 36777 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #18300: <==negation-removal== 87994 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #19665: <==uncertain_firing== 45263 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #20207: <==uncertain_firing== 26755 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22925: <==negation-removal== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #28777: <==negation-removal== 26755 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #40285: <==uncertain_firing== 18769 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #43181: <==negation-removal== 18769 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #44511: <==uncertain_firing== 41171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #54717: <==uncertain_firing== 87994 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #56205: <==negation-removal== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #61721: <==negation-removal== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #89764: <==negation-removal== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #92093: <==uncertain_firing== 32445 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #92816: <==uncertain_firing== 63585 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l3)
                           (Ba_secret_c))
        :effect (and
                    ; #26975: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #38717: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #40702: <==closure== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #50747: <==closure== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #51971: <==closure== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #67161: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #80076: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #91609: <==closure== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #10857: <==uncertain_firing== 26975 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #11167: <==uncertain_firing== 51971 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #15013: <==uncertain_firing== 67161 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #15964: <==uncertain_firing== 50747 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #25839: <==negation-removal== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #30982: <==negation-removal== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #31240: <==negation-removal== 50747 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33637: <==negation-removal== 91609 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #41645: <==negation-removal== 40702 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #42645: <==negation-removal== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #59656: <==uncertain_firing== 38717 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #64782: <==uncertain_firing== 80076 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #66680: <==negation-removal== 51971 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #71798: <==negation-removal== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #75066: <==uncertain_firing== 40702 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84957: <==uncertain_firing== 91609 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d))
        :effect (and
                    ; #17588: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #22622: <==closure== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #27852: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #33338: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48567: <==closure== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #55243: <==closure== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #91501: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #92083: <==closure== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #30076: <==negation-removal== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #32390: <==negation-removal== 48567 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #33721: <==negation-removal== 92083 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #33960: <==uncertain_firing== 55243 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #56936: <==negation-removal== 55243 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #68834: <==uncertain_firing== 48567 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #72929: <==uncertain_firing== 17588 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74749: <==negation-removal== 22622 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #77167: <==negation-removal== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #78068: <==uncertain_firing== 27852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82881: <==uncertain_firing== 91501 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #86102: <==negation-removal== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #86554: <==uncertain_firing== 22622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #89748: <==uncertain_firing== 92083 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #91760: <==negation-removal== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #98236: <==uncertain_firing== 33338 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l2)
                           (Pa_secret_d))
        :effect (and
                    ; #10727: <==closure== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #14253: <==closure== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #15137: <==closure== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #24968: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #25150: <==closure== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #44000: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #50710: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #62356: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #11808: <==negation-removal== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #12885: <==uncertain_firing== 15137 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #15503: <==negation-removal== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #15950: <==uncertain_firing== 25150 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #32316: <==negation-removal== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #37587: <==negation-removal== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #40991: <==uncertain_firing== 62356 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #46080: <==negation-removal== 10727 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #61332: <==uncertain_firing== 44000 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #66341: <==uncertain_firing== 24968 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #70377: <==uncertain_firing== 50710 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #74541: <==uncertain_firing== 10727 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #78100: <==negation-removal== 25150 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #80093: <==uncertain_firing== 14253 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #87926: <==negation-removal== 15137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #91311: <==negation-removal== 14253 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l3)
                           (Pa_secret_d))
        :effect (and
                    ; #13502: <==closure== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #31668: <==closure== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #32802: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #74467: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #81221: <==closure== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83619: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #84482: <==closure== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85044: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #18362: <==uncertain_firing== 84482 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #21087: <==negation-removal== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #22235: <==negation-removal== 84482 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #25442: <==uncertain_firing== 32802 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #31123: <==uncertain_firing== 13502 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #44975: <==negation-removal== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #50410: <==uncertain_firing== 81221 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50766: <==negation-removal== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #51230: <==uncertain_firing== 31668 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #62060: <==uncertain_firing== 85044 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #65710: <==negation-removal== 81221 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #72514: <==uncertain_firing== 74467 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74129: <==negation-removal== 13502 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #74755: <==negation-removal== 31668 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78733: <==negation-removal== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #79038: <==uncertain_firing== 83619 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a))
        :effect (and
                    ; #25493: <==closure== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #28268: <==closure== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #32978: <==closure== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41552: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #56836: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #77356: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #79633: <==closure== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #84619: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #12938: <==negation-removal== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21246: <==uncertain_firing== 77356 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #21626: <==uncertain_firing== 32978 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #23234: <==negation-removal== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27071: <==uncertain_firing== 28268 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #30763: <==uncertain_firing== 56836 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #32306: <==uncertain_firing== 84619 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #42548: <==uncertain_firing== 41552 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #54444: <==uncertain_firing== 25493 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #55833: <==negation-removal== 79633 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #59686: <==negation-removal== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60357: <==negation-removal== 25493 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #67821: <==uncertain_firing== 79633 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #70213: <==negation-removal== 28268 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73515: <==negation-removal== 32978 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #83597: <==negation-removal== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #17567: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #36896: <==closure== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #45337: <==closure== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #59384: <==closure== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #60996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #75947: <==closure== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #83320: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #91892: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #11050: <==negation-removal== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34053: <==negation-removal== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #37538: <==uncertain_firing== 75947 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38989: <==negation-removal== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #48624: <==uncertain_firing== 83320 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #50002: <==uncertain_firing== 59384 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #52848: <==uncertain_firing== 91892 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53254: <==negation-removal== 75947 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #53875: <==negation-removal== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #57229: <==negation-removal== 59384 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #72318: <==negation-removal== 45337 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #79756: <==negation-removal== 36896 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #80992: <==uncertain_firing== 60996 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #89559: <==uncertain_firing== 36896 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #91118: <==uncertain_firing== 45337 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #94428: <==uncertain_firing== 17567 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l3)
                           (Pb_secret_a))
        :effect (and
                    ; #24187: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #29018: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #57809: <==closure== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #64269: <==closure== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #64396: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #72757: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #83915: <==closure== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #91717: <==closure== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #15574: <==negation-removal== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #16818: <==negation-removal== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #18933: <==negation-removal== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26442: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #29184: <==uncertain_firing== 83915 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #29355: <==uncertain_firing== 91717 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #33988: <==negation-removal== 91717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #42841: <==uncertain_firing== 64396 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53639: <==uncertain_firing== 57809 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #62488: <==negation-removal== 83915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #62571: <==uncertain_firing== 24187 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67755: <==uncertain_firing== 64269 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #67859: <==uncertain_firing== 29018 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #68181: <==negation-removal== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #89933: <==negation-removal== 64269 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #90098: <==negation-removal== 57809 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #19458: <==closure== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #40880: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #43589: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #45832: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #66909: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #71995: <==closure== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #82641: <==closure== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89012: <==closure== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #11124: <==negation-removal== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #13346: <==negation-removal== 82641 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #22632: <==uncertain_firing== 82641 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27457: <==negation-removal== 71995 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #30319: <==uncertain_firing== 89012 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #31666: <==uncertain_firing== 66909 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #34353: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #51235: <==uncertain_firing== 40880 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #53553: <==negation-removal== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #55336: <==negation-removal== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #61947: <==negation-removal== 19458 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #68588: <==negation-removal== 89012 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #69764: <==negation-removal== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88555: <==uncertain_firing== 43589 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #89752: <==uncertain_firing== 45832 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89972: <==uncertain_firing== 71995 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized))
        :effect (and
                    ; #21593: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #26224: <==closure== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #28931: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #35087: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #49043: <==closure== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #57414: <==closure== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #58284: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #77805: <==closure== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #20320: <==negation-removal== 26224 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #30843: <==negation-removal== 57414 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #35406: <==negation-removal== 77805 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #36520: <==negation-removal== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #41801: <==negation-removal== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #52375: <==uncertain_firing== 57414 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #53385: <==negation-removal== 49043 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #54217: <==uncertain_firing== 35087 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #62851: <==uncertain_firing== 26224 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_b)))

                    ; #72200: <==uncertain_firing== 28931 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #72268: <==uncertain_firing== 21593 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #73273: <==negation-removal== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #75915: <==negation-removal== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #76735: <==uncertain_firing== 58284 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_b)))

                    ; #86601: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #90938: <==uncertain_firing== 77805 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (initialized)
                           (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l3))
        :effect (and
                    ; #12951: <==closure== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #20521: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #31765: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #33329: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #57721: <==closure== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #63701: <==closure== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #75766: <==closure== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #90970: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #16696: <==uncertain_firing== 33329 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #24543: <==negation-removal== 63701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #31418: <==negation-removal== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #32560: <==negation-removal== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #43384: <==negation-removal== 12951 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49826: <==uncertain_firing== 75766 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #51913: <==negation-removal== 75766 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #59658: <==uncertain_firing== 57721 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #60251: <==uncertain_firing== 12951 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #65119: <==uncertain_firing== 63701 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #74566: <==uncertain_firing== 31765 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #76781: <==uncertain_firing== 90970 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #82571: <==negation-removal== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #83378: <==negation-removal== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #87911: <==uncertain_firing== 20521 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #89494: <==negation-removal== 57721 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #53484: <==closure== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #58320: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #61996: <==closure== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #63658: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #79007: <==closure== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #88017: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #88609: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #89715: <==closure== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #12352: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #14319: <==uncertain_firing== 53484 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #17324: <==uncertain_firing== 58320 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #20157: <==negation-removal== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25398: <==uncertain_firing== 61996 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #26797: <==uncertain_firing== 63658 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #28282: <==negation-removal== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #42691: <==negation-removal== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #60300: <==uncertain_firing== 88609 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #62135: <==negation-removal== 53484 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #65664: <==uncertain_firing== 79007 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #68214: <==negation-removal== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #71733: <==negation-removal== 61996 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #74747: <==negation-removal== 89715 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #82251: <==uncertain_firing== 89715 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90829: <==negation-removal== 79007 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c)
                           (Pb_secret_c)
                           (initialized))
        :effect (and
                    ; #18769: <==closure== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #26755: <==closure== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #32445: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #36777: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #41171: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #45263: <==closure== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #63585: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #87994: <==closure== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #12679: <==negation-removal== 45263 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #15129: <==uncertain_firing== 36777 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #18300: <==negation-removal== 87994 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #19665: <==uncertain_firing== 45263 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #20207: <==uncertain_firing== 26755 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22925: <==negation-removal== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #28777: <==negation-removal== 26755 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #40285: <==uncertain_firing== 18769 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #43181: <==negation-removal== 18769 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #44511: <==uncertain_firing== 41171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #54717: <==uncertain_firing== 87994 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #56205: <==negation-removal== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #61721: <==negation-removal== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #89764: <==negation-removal== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #92093: <==uncertain_firing== 32445 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #92816: <==uncertain_firing== 63585 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (initialized)
                           (Bb_secret_c)
                           (at_b_l3)
                           (Pb_secret_c))
        :effect (and
                    ; #26975: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #38717: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #40702: <==closure== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #50747: <==closure== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #51971: <==closure== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #67161: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #80076: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #91609: <==closure== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #10857: <==uncertain_firing== 26975 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #11167: <==uncertain_firing== 51971 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #15013: <==uncertain_firing== 67161 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #15964: <==uncertain_firing== 50747 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #25839: <==negation-removal== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #30982: <==negation-removal== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #31240: <==negation-removal== 50747 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33637: <==negation-removal== 91609 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #41645: <==negation-removal== 40702 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #42645: <==negation-removal== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #59656: <==uncertain_firing== 38717 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #64782: <==uncertain_firing== 80076 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #66680: <==negation-removal== 51971 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #71798: <==negation-removal== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #75066: <==uncertain_firing== 40702 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84957: <==uncertain_firing== 91609 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #17588: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #22622: <==closure== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #27852: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #33338: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48567: <==closure== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #55243: <==closure== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #91501: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #92083: <==closure== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #30076: <==negation-removal== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #32390: <==negation-removal== 48567 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #33721: <==negation-removal== 92083 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #33960: <==uncertain_firing== 55243 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #56936: <==negation-removal== 55243 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #68834: <==uncertain_firing== 48567 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #72929: <==uncertain_firing== 17588 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74749: <==negation-removal== 22622 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #77167: <==negation-removal== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #78068: <==uncertain_firing== 27852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82881: <==uncertain_firing== 91501 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #86102: <==negation-removal== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #86554: <==uncertain_firing== 22622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #89748: <==uncertain_firing== 92083 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #91760: <==negation-removal== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #98236: <==uncertain_firing== 33338 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (initialized))
        :effect (and
                    ; #10727: <==closure== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #14253: <==closure== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #15137: <==closure== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #24968: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #25150: <==closure== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #44000: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #50710: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #62356: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #11808: <==negation-removal== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #12885: <==uncertain_firing== 15137 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #15503: <==negation-removal== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #15950: <==uncertain_firing== 25150 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #32316: <==negation-removal== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #37587: <==negation-removal== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #40991: <==uncertain_firing== 62356 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #46080: <==negation-removal== 10727 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #61332: <==uncertain_firing== 44000 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #66341: <==uncertain_firing== 24968 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #70377: <==uncertain_firing== 50710 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #74541: <==uncertain_firing== 10727 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #78100: <==negation-removal== 25150 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #80093: <==uncertain_firing== 14253 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #87926: <==negation-removal== 15137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #91311: <==negation-removal== 14253 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #13502: <==closure== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #31668: <==closure== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #32802: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #74467: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #81221: <==closure== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83619: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #84482: <==closure== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85044: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #18362: <==uncertain_firing== 84482 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #21087: <==negation-removal== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #22235: <==negation-removal== 84482 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #25442: <==uncertain_firing== 32802 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #31123: <==uncertain_firing== 13502 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #44975: <==negation-removal== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #50410: <==uncertain_firing== 81221 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50766: <==negation-removal== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #51230: <==uncertain_firing== 31668 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #62060: <==uncertain_firing== 85044 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #65710: <==negation-removal== 81221 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #72514: <==uncertain_firing== 74467 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74129: <==negation-removal== 13502 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #74755: <==negation-removal== 31668 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78733: <==negation-removal== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #79038: <==uncertain_firing== 83619 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #25493: <==closure== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #28268: <==closure== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #32978: <==closure== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41552: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #56836: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #77356: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #79633: <==closure== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #84619: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #12938: <==negation-removal== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21246: <==uncertain_firing== 77356 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #21626: <==uncertain_firing== 32978 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #23234: <==negation-removal== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27071: <==uncertain_firing== 28268 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #30763: <==uncertain_firing== 56836 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #32306: <==uncertain_firing== 84619 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #42548: <==uncertain_firing== 41552 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #54444: <==uncertain_firing== 25493 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #55833: <==negation-removal== 79633 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #59686: <==negation-removal== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60357: <==negation-removal== 25493 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #67821: <==uncertain_firing== 79633 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #70213: <==negation-removal== 28268 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73515: <==negation-removal== 32978 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #83597: <==negation-removal== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (initialized)
                           (Pc_secret_a)
                           (at_c_l2)
                           (Bc_secret_a))
        :effect (and
                    ; #17567: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #36896: <==closure== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #45337: <==closure== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #59384: <==closure== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #60996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #75947: <==closure== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #83320: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #91892: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #11050: <==negation-removal== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34053: <==negation-removal== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #37538: <==uncertain_firing== 75947 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38989: <==negation-removal== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #48624: <==uncertain_firing== 83320 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #50002: <==uncertain_firing== 59384 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #52848: <==uncertain_firing== 91892 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53254: <==negation-removal== 75947 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #53875: <==negation-removal== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #57229: <==negation-removal== 59384 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #72318: <==negation-removal== 45337 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #79756: <==negation-removal== 36896 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #80992: <==uncertain_firing== 60996 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #89559: <==uncertain_firing== 36896 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #91118: <==uncertain_firing== 45337 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #94428: <==uncertain_firing== 17567 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #24187: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #29018: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #57809: <==closure== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #64269: <==closure== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #64396: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #72757: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #83915: <==closure== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #91717: <==closure== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #15574: <==negation-removal== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #16818: <==negation-removal== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #18933: <==negation-removal== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26442: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #29184: <==uncertain_firing== 83915 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #29355: <==uncertain_firing== 91717 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #33988: <==negation-removal== 91717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #42841: <==uncertain_firing== 64396 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53639: <==uncertain_firing== 57809 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #62488: <==negation-removal== 83915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #62571: <==uncertain_firing== 24187 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67755: <==uncertain_firing== 64269 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #67859: <==uncertain_firing== 29018 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #68181: <==negation-removal== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #89933: <==negation-removal== 64269 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #90098: <==negation-removal== 57809 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (initialized)
                           (Pc_secret_b)
                           (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #19458: <==closure== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #40880: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #43589: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #45832: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #66909: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #71995: <==closure== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #82641: <==closure== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89012: <==closure== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #11124: <==negation-removal== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #13346: <==negation-removal== 82641 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #22632: <==uncertain_firing== 82641 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27457: <==negation-removal== 71995 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #30319: <==uncertain_firing== 89012 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #31666: <==uncertain_firing== 66909 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #34353: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #51235: <==uncertain_firing== 40880 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #53553: <==negation-removal== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #55336: <==negation-removal== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #61947: <==negation-removal== 19458 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #68588: <==negation-removal== 89012 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #69764: <==negation-removal== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88555: <==uncertain_firing== 43589 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #89752: <==uncertain_firing== 45832 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89972: <==uncertain_firing== 71995 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (initialized)
                           (Pc_secret_b)
                           (Bc_secret_b)
                           (at_c_l2))
        :effect (and
                    ; #21593: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #26224: <==closure== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #28931: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #35087: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #49043: <==closure== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #57414: <==closure== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #58284: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #77805: <==closure== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #20320: <==negation-removal== 26224 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #30843: <==negation-removal== 57414 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #35406: <==negation-removal== 77805 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #36520: <==negation-removal== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #41801: <==negation-removal== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #52375: <==uncertain_firing== 57414 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #53385: <==negation-removal== 49043 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #54217: <==uncertain_firing== 35087 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #62851: <==uncertain_firing== 26224 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_b)))

                    ; #72200: <==uncertain_firing== 28931 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #72268: <==uncertain_firing== 21593 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #73273: <==negation-removal== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #75915: <==negation-removal== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #76735: <==uncertain_firing== 58284 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_b)))

                    ; #86601: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #90938: <==uncertain_firing== 77805 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #12951: <==closure== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #20521: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #31765: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #33329: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #57721: <==closure== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #63701: <==closure== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #75766: <==closure== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #90970: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #16696: <==uncertain_firing== 33329 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #24543: <==negation-removal== 63701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #31418: <==negation-removal== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #32560: <==negation-removal== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #43384: <==negation-removal== 12951 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49826: <==uncertain_firing== 75766 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #51913: <==negation-removal== 75766 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #59658: <==uncertain_firing== 57721 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #60251: <==uncertain_firing== 12951 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #65119: <==uncertain_firing== 63701 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #74566: <==uncertain_firing== 31765 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #76781: <==uncertain_firing== 90970 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #82571: <==negation-removal== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #83378: <==negation-removal== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #87911: <==uncertain_firing== 20521 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #89494: <==negation-removal== 57721 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #53484: <==closure== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #58320: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #61996: <==closure== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #63658: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #79007: <==closure== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #88017: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #88609: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #89715: <==closure== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #12352: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #14319: <==uncertain_firing== 53484 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #17324: <==uncertain_firing== 58320 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #20157: <==negation-removal== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25398: <==uncertain_firing== 61996 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #26797: <==uncertain_firing== 63658 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #28282: <==negation-removal== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #42691: <==negation-removal== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #60300: <==uncertain_firing== 88609 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #62135: <==negation-removal== 53484 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #65664: <==uncertain_firing== 79007 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #68214: <==negation-removal== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #71733: <==negation-removal== 61996 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #74747: <==negation-removal== 89715 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #82251: <==uncertain_firing== 89715 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90829: <==negation-removal== 79007 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c)
                           (at_c_l2))
        :effect (and
                    ; #18769: <==closure== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #26755: <==closure== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #32445: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #36777: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #41171: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #45263: <==closure== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #63585: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #87994: <==closure== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #12679: <==negation-removal== 45263 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #15129: <==uncertain_firing== 36777 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #18300: <==negation-removal== 87994 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #19665: <==uncertain_firing== 45263 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #20207: <==uncertain_firing== 26755 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22925: <==negation-removal== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #28777: <==negation-removal== 26755 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #40285: <==uncertain_firing== 18769 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #43181: <==negation-removal== 18769 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #44511: <==uncertain_firing== 41171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #54717: <==uncertain_firing== 87994 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #56205: <==negation-removal== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #61721: <==negation-removal== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #89764: <==negation-removal== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #92093: <==uncertain_firing== 32445 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #92816: <==uncertain_firing== 63585 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_c)
                           (initialized)
                           (Bc_secret_c))
        :effect (and
                    ; #26975: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #38717: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #40702: <==closure== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #50747: <==closure== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #51971: <==closure== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #67161: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #80076: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #91609: <==closure== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #10857: <==uncertain_firing== 26975 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #11167: <==uncertain_firing== 51971 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #15013: <==uncertain_firing== 67161 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #15964: <==uncertain_firing== 50747 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #25839: <==negation-removal== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #30982: <==negation-removal== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #31240: <==negation-removal== 50747 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33637: <==negation-removal== 91609 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #41645: <==negation-removal== 40702 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #42645: <==negation-removal== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #59656: <==uncertain_firing== 38717 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #64782: <==uncertain_firing== 80076 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #66680: <==negation-removal== 51971 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #71798: <==negation-removal== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #75066: <==uncertain_firing== 40702 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84957: <==uncertain_firing== 91609 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #17588: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #22622: <==closure== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #27852: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #33338: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48567: <==closure== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #55243: <==closure== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #91501: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #92083: <==closure== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #30076: <==negation-removal== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #32390: <==negation-removal== 48567 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #33721: <==negation-removal== 92083 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #33960: <==uncertain_firing== 55243 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #56936: <==negation-removal== 55243 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #68834: <==uncertain_firing== 48567 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #72929: <==uncertain_firing== 17588 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74749: <==negation-removal== 22622 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #77167: <==negation-removal== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #78068: <==uncertain_firing== 27852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82881: <==uncertain_firing== 91501 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #86102: <==negation-removal== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #86554: <==uncertain_firing== 22622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #89748: <==uncertain_firing== 92083 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #91760: <==negation-removal== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #98236: <==uncertain_firing== 33338 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (initialized)
                           (Bc_secret_d)
                           (at_c_l2)
                           (Pc_secret_d))
        :effect (and
                    ; #10727: <==closure== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #14253: <==closure== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #15137: <==closure== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #24968: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #25150: <==closure== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #44000: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #50710: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #62356: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #11808: <==negation-removal== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #12885: <==uncertain_firing== 15137 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #15503: <==negation-removal== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #15950: <==uncertain_firing== 25150 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #32316: <==negation-removal== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #37587: <==negation-removal== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #40991: <==uncertain_firing== 62356 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #46080: <==negation-removal== 10727 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #61332: <==uncertain_firing== 44000 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #66341: <==uncertain_firing== 24968 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #70377: <==uncertain_firing== 50710 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #74541: <==uncertain_firing== 10727 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #78100: <==negation-removal== 25150 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #80093: <==uncertain_firing== 14253 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #87926: <==negation-removal== 15137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #91311: <==negation-removal== 14253 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_d)
                           (initialized)
                           (Pc_secret_d))
        :effect (and
                    ; #13502: <==closure== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #31668: <==closure== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #32802: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #74467: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #81221: <==closure== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83619: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #84482: <==closure== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85044: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #18362: <==uncertain_firing== 84482 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #21087: <==negation-removal== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #22235: <==negation-removal== 84482 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #25442: <==uncertain_firing== 32802 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #31123: <==uncertain_firing== 13502 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #44975: <==negation-removal== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #50410: <==uncertain_firing== 81221 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50766: <==negation-removal== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #51230: <==uncertain_firing== 31668 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #62060: <==uncertain_firing== 85044 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #65710: <==negation-removal== 81221 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #72514: <==uncertain_firing== 74467 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74129: <==negation-removal== 13502 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #74755: <==negation-removal== 31668 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78733: <==negation-removal== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #79038: <==uncertain_firing== 83619 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (initialized)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #25493: <==closure== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #28268: <==closure== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #32978: <==closure== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41552: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #56836: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #77356: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #79633: <==closure== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #84619: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #12938: <==negation-removal== 77356 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21246: <==uncertain_firing== 77356 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #21626: <==uncertain_firing== 32978 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #23234: <==negation-removal== 56836 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27071: <==uncertain_firing== 28268 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #30763: <==uncertain_firing== 56836 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #32306: <==uncertain_firing== 84619 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #42548: <==uncertain_firing== 41552 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #54444: <==uncertain_firing== 25493 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #55833: <==negation-removal== 79633 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #59686: <==negation-removal== 41552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60357: <==negation-removal== 25493 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #67821: <==uncertain_firing== 79633 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #70213: <==negation-removal== 28268 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73515: <==negation-removal== 32978 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #83597: <==negation-removal== 84619 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (initialized)
                           (at_d_l2))
        :effect (and
                    ; #17567: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #36896: <==closure== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #45337: <==closure== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #59384: <==closure== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #60996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #75947: <==closure== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #83320: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #91892: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #11050: <==negation-removal== 17567 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34053: <==negation-removal== 83320 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #37538: <==uncertain_firing== 75947 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38989: <==negation-removal== 60996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #48624: <==uncertain_firing== 83320 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #50002: <==uncertain_firing== 59384 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #52848: <==uncertain_firing== 91892 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53254: <==negation-removal== 75947 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #53875: <==negation-removal== 91892 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #57229: <==negation-removal== 59384 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #72318: <==negation-removal== 45337 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #79756: <==negation-removal== 36896 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #80992: <==uncertain_firing== 60996 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #89559: <==uncertain_firing== 36896 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #91118: <==uncertain_firing== 45337 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #94428: <==uncertain_firing== 17567 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (initialized)
                           (at_d_l3))
        :effect (and
                    ; #24187: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #29018: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #57809: <==closure== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #64269: <==closure== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #64396: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #72757: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #83915: <==closure== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #91717: <==closure== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #15574: <==negation-removal== 64396 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #16818: <==negation-removal== 29018 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #18933: <==negation-removal== 72757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26442: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #29184: <==uncertain_firing== 83915 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #29355: <==uncertain_firing== 91717 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #33988: <==negation-removal== 91717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #42841: <==uncertain_firing== 64396 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #53639: <==uncertain_firing== 57809 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #62488: <==negation-removal== 83915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #62571: <==uncertain_firing== 24187 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67755: <==uncertain_firing== 64269 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #67859: <==uncertain_firing== 29018 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #68181: <==negation-removal== 24187 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #89933: <==negation-removal== 64269 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #90098: <==negation-removal== 57809 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #19458: <==closure== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #40880: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #43589: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #45832: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #66909: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #71995: <==closure== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #82641: <==closure== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89012: <==closure== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #11124: <==negation-removal== 40880 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #13346: <==negation-removal== 82641 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #22632: <==uncertain_firing== 82641 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27457: <==negation-removal== 71995 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #30319: <==uncertain_firing== 89012 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #31666: <==uncertain_firing== 66909 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #34353: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #51235: <==uncertain_firing== 40880 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #53553: <==negation-removal== 66909 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #55336: <==negation-removal== 43589 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #61947: <==negation-removal== 19458 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #68588: <==negation-removal== 89012 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #69764: <==negation-removal== 45832 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88555: <==uncertain_firing== 43589 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #89752: <==uncertain_firing== 45832 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89972: <==uncertain_firing== 71995 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (initialized)
                           (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l2))
        :effect (and
                    ; #21593: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #26224: <==closure== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #28931: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #35087: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #49043: <==closure== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #57414: <==closure== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #58284: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #77805: <==closure== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #20320: <==negation-removal== 26224 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #30843: <==negation-removal== 57414 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #35406: <==negation-removal== 77805 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #36520: <==negation-removal== 28931 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #41801: <==negation-removal== 21593 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #52375: <==uncertain_firing== 57414 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #53385: <==negation-removal== 49043 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #54217: <==uncertain_firing== 35087 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #62851: <==uncertain_firing== 26224 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_b)))

                    ; #72200: <==uncertain_firing== 28931 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #72268: <==uncertain_firing== 21593 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #73273: <==negation-removal== 35087 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #75915: <==negation-removal== 58284 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #76735: <==uncertain_firing== 58284 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_b)))

                    ; #86601: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #90938: <==uncertain_firing== 77805 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (initialized)
                           (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l3))
        :effect (and
                    ; #12951: <==closure== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #20521: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #31765: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #33329: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #57721: <==closure== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #63701: <==closure== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #75766: <==closure== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #90970: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #16696: <==uncertain_firing== 33329 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #24543: <==negation-removal== 63701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #31418: <==negation-removal== 31765 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #32560: <==negation-removal== 20521 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #43384: <==negation-removal== 12951 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49826: <==uncertain_firing== 75766 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #51913: <==negation-removal== 75766 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #59658: <==uncertain_firing== 57721 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #60251: <==uncertain_firing== 12951 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #65119: <==uncertain_firing== 63701 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #74566: <==uncertain_firing== 31765 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #76781: <==uncertain_firing== 90970 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #82571: <==negation-removal== 33329 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #83378: <==negation-removal== 90970 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #87911: <==uncertain_firing== 20521 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #89494: <==negation-removal== 57721 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #53484: <==closure== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #58320: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #61996: <==closure== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #63658: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #79007: <==closure== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #88017: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #88609: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #89715: <==closure== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #12352: <==uncertain_firing== 88017 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #14319: <==uncertain_firing== 53484 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #17324: <==uncertain_firing== 58320 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #20157: <==negation-removal== 58320 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25398: <==uncertain_firing== 61996 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #26797: <==uncertain_firing== 63658 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #28282: <==negation-removal== 88017 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #42691: <==negation-removal== 88609 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #60300: <==uncertain_firing== 88609 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #62135: <==negation-removal== 53484 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #65664: <==uncertain_firing== 79007 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #68214: <==negation-removal== 63658 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #71733: <==negation-removal== 61996 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #74747: <==negation-removal== 89715 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #82251: <==uncertain_firing== 89715 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90829: <==negation-removal== 79007 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l2))
        :effect (and
                    ; #18769: <==closure== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #26755: <==closure== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #32445: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #36777: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #41171: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #45263: <==closure== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #63585: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #87994: <==closure== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #12679: <==negation-removal== 45263 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #15129: <==uncertain_firing== 36777 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #18300: <==negation-removal== 87994 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #19665: <==uncertain_firing== 45263 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #20207: <==uncertain_firing== 26755 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22925: <==negation-removal== 32445 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #28777: <==negation-removal== 26755 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #40285: <==uncertain_firing== 18769 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #43181: <==negation-removal== 18769 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #44511: <==uncertain_firing== 41171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #54717: <==uncertain_firing== 87994 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #56205: <==negation-removal== 41171 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #61721: <==negation-removal== 36777 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #89764: <==negation-removal== 63585 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #92093: <==uncertain_firing== 32445 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #92816: <==uncertain_firing== 63585 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l3))
        :effect (and
                    ; #26975: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #38717: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #40702: <==closure== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #50747: <==closure== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #51971: <==closure== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #67161: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #80076: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #91609: <==closure== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #10857: <==uncertain_firing== 26975 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #11167: <==uncertain_firing== 51971 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #15013: <==uncertain_firing== 67161 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #15964: <==uncertain_firing== 50747 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #25839: <==negation-removal== 26975 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #30982: <==negation-removal== 80076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #31240: <==negation-removal== 50747 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33637: <==negation-removal== 91609 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #41645: <==negation-removal== 40702 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #42645: <==negation-removal== 67161 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #59656: <==uncertain_firing== 38717 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #64782: <==uncertain_firing== 80076 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #66680: <==negation-removal== 51971 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #71798: <==negation-removal== 38717 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #75066: <==uncertain_firing== 40702 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84957: <==uncertain_firing== 91609 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d))
        :effect (and
                    ; #17588: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #22622: <==closure== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #27852: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #33338: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48567: <==closure== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #55243: <==closure== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #91501: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #92083: <==closure== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #30076: <==negation-removal== 91501 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #32390: <==negation-removal== 48567 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #33721: <==negation-removal== 92083 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #33960: <==uncertain_firing== 55243 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #56936: <==negation-removal== 55243 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #68834: <==uncertain_firing== 48567 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #72929: <==uncertain_firing== 17588 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74749: <==negation-removal== 22622 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #77167: <==negation-removal== 17588 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #78068: <==uncertain_firing== 27852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82881: <==uncertain_firing== 91501 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #86102: <==negation-removal== 33338 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #86554: <==uncertain_firing== 22622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #89748: <==uncertain_firing== 92083 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #91760: <==negation-removal== 27852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #98236: <==uncertain_firing== 33338 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (at_d_l2)
                           (Bd_secret_d))
        :effect (and
                    ; #10727: <==closure== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #14253: <==closure== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #15137: <==closure== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #24968: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #25150: <==closure== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #44000: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #50710: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #62356: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #11808: <==negation-removal== 62356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #12885: <==uncertain_firing== 15137 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #15503: <==negation-removal== 44000 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #15950: <==uncertain_firing== 25150 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #32316: <==negation-removal== 50710 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #37587: <==negation-removal== 24968 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #40991: <==uncertain_firing== 62356 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #46080: <==negation-removal== 10727 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #61332: <==uncertain_firing== 44000 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #66341: <==uncertain_firing== 24968 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #70377: <==uncertain_firing== 50710 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #74541: <==uncertain_firing== 10727 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #78100: <==negation-removal== 25150 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #80093: <==uncertain_firing== 14253 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #87926: <==negation-removal== 15137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #91311: <==negation-removal== 14253 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (at_d_l3)
                           (Bd_secret_d))
        :effect (and
                    ; #13502: <==closure== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #31668: <==closure== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #32802: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #74467: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #81221: <==closure== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83619: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #84482: <==closure== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85044: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #18362: <==uncertain_firing== 84482 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #21087: <==negation-removal== 85044 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #22235: <==negation-removal== 84482 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #25442: <==uncertain_firing== 32802 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #31123: <==uncertain_firing== 13502 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #44975: <==negation-removal== 83619 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #50410: <==uncertain_firing== 81221 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50766: <==negation-removal== 74467 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #51230: <==uncertain_firing== 31668 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #62060: <==uncertain_firing== 85044 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #65710: <==negation-removal== 81221 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #72514: <==uncertain_firing== 74467 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #74129: <==negation-removal== 13502 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #74755: <==negation-removal== 31668 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78733: <==negation-removal== 32802 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #79038: <==uncertain_firing== 83619 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))))

)