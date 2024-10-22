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
        :precondition (and (initialized)
                           (Pa_secret_a)
                           (at_a_l1)
                           (Ba_secret_a))
        :effect (and
                    ; #19305: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #25986: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #30609: <==closure== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #47377: <==closure== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #59960: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #64655: <==closure== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #66405: <==closure== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #72273: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #11023: <==negation-removal== 47377 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #20334: <==negation-removal== 66405 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #28636: <==uncertain_firing== 59960 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #32371: <==negation-removal== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #34261: <==uncertain_firing== 64655 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #38342: <==uncertain_firing== 72273 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #41092: <==uncertain_firing== 30609 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #63180: <==negation-removal== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #63447: <==uncertain_firing== 47377 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #65024: <==uncertain_firing== 19305 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85870: <==uncertain_firing== 25986 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #85987: <==negation-removal== 30609 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86453: <==uncertain_firing== 66405 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #89382: <==negation-removal== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89980: <==negation-removal== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #91110: <==negation-removal== 64655 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (initialized)
                           (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #10517: <==closure== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #17101: <==closure== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #25472: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #31450: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #49870: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #69590: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #79634: <==closure== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #92001: <==closure== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #12376: <==uncertain_firing== 10517 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #20180: <==uncertain_firing== 17101 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #30959: <==negation-removal== 79634 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #31301: <==uncertain_firing== 49870 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #31598: <==negation-removal== 17101 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37953: <==negation-removal== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #44531: <==uncertain_firing== 25472 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #45986: <==negation-removal== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #66107: <==uncertain_firing== 79634 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #67642: <==uncertain_firing== 92001 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #70137: <==negation-removal== 92001 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72351: <==uncertain_firing== 31450 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #75643: <==negation-removal== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #81892: <==negation-removal== 10517 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #82413: <==negation-removal== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #82457: <==uncertain_firing== 69590 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #13337: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #28101: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #52076: <==closure== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #61082: <==closure== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #68770: <==closure== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #79589: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #87948: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #91073: <==closure== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #12671: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #16336: <==negation-removal== 68770 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #21540: <==negation-removal== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #29033: <==negation-removal== 61082 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #29442: <==negation-removal== 52076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #30853: <==negation-removal== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #41288: <==negation-removal== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #45283: <==uncertain_firing== 28101 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #52624: <==uncertain_firing== 68770 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #53125: <==negation-removal== 91073 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #53773: <==uncertain_firing== 87948 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #59046: <==uncertain_firing== 52076 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #60181: <==negation-removal== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #60578: <==uncertain_firing== 91073 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #72310: <==uncertain_firing== 61082 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #76359: <==uncertain_firing== 13337 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #21333: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #21906: <==closure== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: <==closure== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #27191: <==closure== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34978: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #43906: <==closure== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #67524: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #86536: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #13616: <==uncertain_firing== 86536 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #18262: <==uncertain_firing== 27191 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #22377: <==negation-removal== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33332: <==negation-removal== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #33697: <==negation-removal== 26080 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #34410: <==negation-removal== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #35382: <==uncertain_firing== 34978 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #42102: <==uncertain_firing== 43906 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60167: <==negation-removal== 43906 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #70966: <==uncertain_firing== 21906 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78721: <==uncertain_firing== 21333 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #80692: <==negation-removal== 21906 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #81536: <==negation-removal== 27191 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #82139: <==uncertain_firing== 67524 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #84320: <==negation-removal== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #89024: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (initialized)
                           (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b))
        :effect (and
                    ; #31731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #36166: <==closure== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #51206: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #71168: <==closure== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #73294: <==closure== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #76648: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84816: <==closure== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #89545: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #13596: <==negation-removal== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #20957: <==uncertain_firing== 51206 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #22208: <==negation-removal== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #23078: <==uncertain_firing== 36166 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #26854: <==uncertain_firing== 84816 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #27768: <==uncertain_firing== 31731 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27808: <==negation-removal== 84816 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #32067: <==uncertain_firing== 73294 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #45307: <==uncertain_firing== 71168 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #45331: <==uncertain_firing== 89545 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45436: <==negation-removal== 71168 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #47607: <==negation-removal== 36166 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #48216: <==negation-removal== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #56366: <==negation-removal== 73294 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #85604: <==uncertain_firing== 76648 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #88459: <==negation-removal== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #12062: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #13371: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #15548: <==closure== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #24447: <==closure== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #25573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #39711: <==closure== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #76309: <==closure== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #80184: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #17012: <==uncertain_firing== 76309 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #17228: <==uncertain_firing== 13371 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #25429: <==uncertain_firing== 80184 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #28128: <==negation-removal== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #34171: <==negation-removal== 24447 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40125: <==uncertain_firing== 39711 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #40863: <==uncertain_firing== 15548 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #42163: <==uncertain_firing== 25573 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45122: <==uncertain_firing== 12062 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #49739: <==negation-removal== 15548 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #50315: <==negation-removal== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63806: <==uncertain_firing== 24447 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64291: <==negation-removal== 39711 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #76057: <==negation-removal== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #77793: <==negation-removal== 76309 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #97307: <==negation-removal== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (Ba_secret_c)
                           (initialized)
                           (at_a_l1)
                           (Pa_secret_c))
        :effect (and
                    ; #10936: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #24812: <==closure== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #31663: <==closure== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41466: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #43070: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #63488: <==closure== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #74105: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75383: <==closure== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #16177: <==negation-removal== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #16836: <==uncertain_firing== 63488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #19492: <==negation-removal== 75383 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #20083: <==negation-removal== 31663 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21584: <==negation-removal== 24812 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35344: <==uncertain_firing== 24812 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #37650: <==uncertain_firing== 43070 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #38526: <==negation-removal== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #39682: <==negation-removal== 63488 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #50042: <==uncertain_firing== 75383 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #54023: <==uncertain_firing== 31663 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #55562: <==negation-removal== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #64484: <==uncertain_firing== 41466 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #70759: <==uncertain_firing== 10936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88664: <==negation-removal== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #89722: <==uncertain_firing== 74105 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (Ba_secret_c)
                           (initialized)
                           (at_a_l2)
                           (Pa_secret_c))
        :effect (and
                    ; #17962: <==closure== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #35517: <==closure== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39888: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51236: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #53183: <==closure== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #58778: <==closure== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #63860: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #91456: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #14736: <==negation-removal== 35517 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #21250: <==uncertain_firing== 51236 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #29390: <==uncertain_firing== 91456 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #32894: <==uncertain_firing== 63860 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #37763: <==negation-removal== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #37866: <==negation-removal== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #42630: <==uncertain_firing== 17962 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #43161: <==negation-removal== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #45660: <==negation-removal== 17962 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #55179: <==negation-removal== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #57134: <==uncertain_firing== 39888 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #66625: <==uncertain_firing== 35517 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #66883: <==uncertain_firing== 53183 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #76147: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #84004: <==negation-removal== 53183 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #99041: <==negation-removal== 58778 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (Ba_secret_c)
                           (at_a_l3)
                           (initialized)
                           (Pa_secret_c))
        :effect (and
                    ; #12717: <==closure== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #20063: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #43291: <==closure== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #43610: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51611: <==closure== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #54509: <==closure== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #77441: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #83169: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #11196: <==negation-removal== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #13016: <==negation-removal== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #16418: <==uncertain_firing== 43291 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #23287: <==uncertain_firing== 20063 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #29003: <==negation-removal== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #30217: <==uncertain_firing== 12717 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #38882: <==negation-removal== 43291 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #51263: <==uncertain_firing== 83169 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #60124: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #61491: <==uncertain_firing== 43610 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #61626: <==uncertain_firing== 77441 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #64913: <==negation-removal== 54509 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #74434: <==negation-removal== 51611 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #77158: <==uncertain_firing== 54509 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #86334: <==negation-removal== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #94944: <==negation-removal== 12717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d))
        :effect (and
                    ; #23012: <==closure== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #25841: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #25966: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #46843: <==closure== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #62328: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #69552: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #71328: <==closure== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #79737: <==closure== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #15012: <==uncertain_firing== 79737 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #16269: <==negation-removal== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #31458: <==negation-removal== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #35469: <==uncertain_firing== 23012 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #53936: <==uncertain_firing== 62328 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #55477: <==negation-removal== 46843 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #60894: <==negation-removal== 79737 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #61666: <==negation-removal== 71328 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64097: <==uncertain_firing== 71328 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #65647: <==negation-removal== 23012 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #70830: <==negation-removal== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #76449: <==uncertain_firing== 25841 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #76893: <==uncertain_firing== 69552 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #78287: <==uncertain_firing== 46843 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #78859: <==negation-removal== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #89541: <==uncertain_firing== 25966 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l2)
                           (Pa_secret_d))
        :effect (and
                    ; #31465: <==closure== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #34837: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #38185: <==closure== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #40073: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #50846: <==closure== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #70625: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #72909: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #86240: <==closure== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #12919: <==negation-removal== 38185 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #24889: <==uncertain_firing== 38185 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #26985: <==uncertain_firing== 50846 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #33622: <==negation-removal== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #33695: <==uncertain_firing== 86240 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #34561: <==negation-removal== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #37892: <==uncertain_firing== 34837 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #42372: <==uncertain_firing== 31465 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #42478: <==negation-removal== 31465 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #48236: <==uncertain_firing== 70625 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #51346: <==negation-removal== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #60981: <==negation-removal== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72640: <==uncertain_firing== 72909 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #77319: <==uncertain_firing== 40073 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #77562: <==negation-removal== 50846 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #80920: <==negation-removal== 86240 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #11424: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18029: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #24393: <==closure== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #37542: <==closure== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #42233: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #62807: <==closure== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #67898: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #74087: <==closure== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #19518: <==uncertain_firing== 62807 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #20344: <==negation-removal== 62807 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #30766: <==negation-removal== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #32353: <==negation-removal== 74087 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #35406: <==uncertain_firing== 11424 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35852: <==negation-removal== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #58278: <==uncertain_firing== 74087 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #63488: <==negation-removal== 24393 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #68740: <==uncertain_firing== 67898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #70139: <==uncertain_firing== 24393 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #70904: <==uncertain_firing== 18029 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #71974: <==negation-removal== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74815: <==uncertain_firing== 42233 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #80914: <==negation-removal== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #85053: <==uncertain_firing== 37542 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #87546: <==negation-removal== 37542 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a))
        :effect (and
                    ; #19305: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #25986: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #30609: <==closure== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #47377: <==closure== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #59960: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #64655: <==closure== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #66405: <==closure== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #72273: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #11023: <==negation-removal== 47377 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #20334: <==negation-removal== 66405 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #28636: <==uncertain_firing== 59960 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #32371: <==negation-removal== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #34261: <==uncertain_firing== 64655 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #38342: <==uncertain_firing== 72273 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #41092: <==uncertain_firing== 30609 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #63180: <==negation-removal== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #63447: <==uncertain_firing== 47377 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #65024: <==uncertain_firing== 19305 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85870: <==uncertain_firing== 25986 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #85987: <==negation-removal== 30609 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86453: <==uncertain_firing== 66405 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #89382: <==negation-removal== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89980: <==negation-removal== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #91110: <==negation-removal== 64655 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #10517: <==closure== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #17101: <==closure== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #25472: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #31450: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #49870: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #69590: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #79634: <==closure== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #92001: <==closure== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #12376: <==uncertain_firing== 10517 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #20180: <==uncertain_firing== 17101 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #30959: <==negation-removal== 79634 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #31301: <==uncertain_firing== 49870 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #31598: <==negation-removal== 17101 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37953: <==negation-removal== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #44531: <==uncertain_firing== 25472 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #45986: <==negation-removal== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #66107: <==uncertain_firing== 79634 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #67642: <==uncertain_firing== 92001 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #70137: <==negation-removal== 92001 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72351: <==uncertain_firing== 31450 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #75643: <==negation-removal== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #81892: <==negation-removal== 10517 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #82413: <==negation-removal== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #82457: <==uncertain_firing== 69590 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #13337: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #28101: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #52076: <==closure== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #61082: <==closure== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #68770: <==closure== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #79589: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #87948: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #91073: <==closure== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #12671: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #16336: <==negation-removal== 68770 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #21540: <==negation-removal== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #29033: <==negation-removal== 61082 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #29442: <==negation-removal== 52076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #30853: <==negation-removal== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #41288: <==negation-removal== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #45283: <==uncertain_firing== 28101 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #52624: <==uncertain_firing== 68770 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #53125: <==negation-removal== 91073 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #53773: <==uncertain_firing== 87948 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #59046: <==uncertain_firing== 52076 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #60181: <==negation-removal== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #60578: <==uncertain_firing== 91073 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #72310: <==uncertain_firing== 61082 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #76359: <==uncertain_firing== 13337 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #21333: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #21906: <==closure== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: <==closure== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #27191: <==closure== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34978: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #43906: <==closure== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #67524: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #86536: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #13616: <==uncertain_firing== 86536 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #18262: <==uncertain_firing== 27191 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #22377: <==negation-removal== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33332: <==negation-removal== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #33697: <==negation-removal== 26080 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #34410: <==negation-removal== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #35382: <==uncertain_firing== 34978 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #42102: <==uncertain_firing== 43906 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60167: <==negation-removal== 43906 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #70966: <==uncertain_firing== 21906 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78721: <==uncertain_firing== 21333 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #80692: <==negation-removal== 21906 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #81536: <==negation-removal== 27191 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #82139: <==uncertain_firing== 67524 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #84320: <==negation-removal== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #89024: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #31731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #36166: <==closure== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #51206: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #71168: <==closure== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #73294: <==closure== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #76648: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84816: <==closure== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #89545: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #13596: <==negation-removal== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #20957: <==uncertain_firing== 51206 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #22208: <==negation-removal== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #23078: <==uncertain_firing== 36166 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #26854: <==uncertain_firing== 84816 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #27768: <==uncertain_firing== 31731 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27808: <==negation-removal== 84816 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #32067: <==uncertain_firing== 73294 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #45307: <==uncertain_firing== 71168 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #45331: <==uncertain_firing== 89545 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45436: <==negation-removal== 71168 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #47607: <==negation-removal== 36166 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #48216: <==negation-removal== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #56366: <==negation-removal== 73294 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #85604: <==uncertain_firing== 76648 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #88459: <==negation-removal== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l3)
                           (Bb_secret_b))
        :effect (and
                    ; #12062: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #13371: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #15548: <==closure== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #24447: <==closure== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #25573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #39711: <==closure== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #76309: <==closure== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #80184: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #17012: <==uncertain_firing== 76309 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #17228: <==uncertain_firing== 13371 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #25429: <==uncertain_firing== 80184 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #28128: <==negation-removal== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #34171: <==negation-removal== 24447 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40125: <==uncertain_firing== 39711 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #40863: <==uncertain_firing== 15548 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #42163: <==uncertain_firing== 25573 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45122: <==uncertain_firing== 12062 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #49739: <==negation-removal== 15548 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #50315: <==negation-removal== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63806: <==uncertain_firing== 24447 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64291: <==negation-removal== 39711 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #76057: <==negation-removal== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #77793: <==negation-removal== 76309 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #97307: <==negation-removal== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (initialized)
                           (Bb_secret_c)
                           (at_b_l1)
                           (Pb_secret_c))
        :effect (and
                    ; #10936: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #24812: <==closure== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #31663: <==closure== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41466: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #43070: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #63488: <==closure== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #74105: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75383: <==closure== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #16177: <==negation-removal== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #16836: <==uncertain_firing== 63488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #19492: <==negation-removal== 75383 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #20083: <==negation-removal== 31663 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21584: <==negation-removal== 24812 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35344: <==uncertain_firing== 24812 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #37650: <==uncertain_firing== 43070 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #38526: <==negation-removal== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #39682: <==negation-removal== 63488 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #50042: <==uncertain_firing== 75383 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #54023: <==uncertain_firing== 31663 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #55562: <==negation-removal== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #64484: <==uncertain_firing== 41466 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #70759: <==uncertain_firing== 10936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88664: <==negation-removal== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #89722: <==uncertain_firing== 74105 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #17962: <==closure== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #35517: <==closure== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39888: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51236: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #53183: <==closure== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #58778: <==closure== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #63860: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #91456: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #14736: <==negation-removal== 35517 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #21250: <==uncertain_firing== 51236 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #29390: <==uncertain_firing== 91456 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #32894: <==uncertain_firing== 63860 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #37763: <==negation-removal== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #37866: <==negation-removal== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #42630: <==uncertain_firing== 17962 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #43161: <==negation-removal== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #45660: <==negation-removal== 17962 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #55179: <==negation-removal== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #57134: <==uncertain_firing== 39888 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #66625: <==uncertain_firing== 35517 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #66883: <==uncertain_firing== 53183 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #76147: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #84004: <==negation-removal== 53183 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #99041: <==negation-removal== 58778 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #12717: <==closure== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #20063: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #43291: <==closure== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #43610: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51611: <==closure== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #54509: <==closure== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #77441: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #83169: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #11196: <==negation-removal== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #13016: <==negation-removal== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #16418: <==uncertain_firing== 43291 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #23287: <==uncertain_firing== 20063 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #29003: <==negation-removal== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #30217: <==uncertain_firing== 12717 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #38882: <==negation-removal== 43291 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #51263: <==uncertain_firing== 83169 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #60124: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #61491: <==uncertain_firing== 43610 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #61626: <==uncertain_firing== 77441 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #64913: <==negation-removal== 54509 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #74434: <==negation-removal== 51611 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #77158: <==uncertain_firing== 54509 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #86334: <==negation-removal== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #94944: <==negation-removal== 12717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #23012: <==closure== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #25841: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #25966: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #46843: <==closure== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #62328: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #69552: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #71328: <==closure== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #79737: <==closure== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #15012: <==uncertain_firing== 79737 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #16269: <==negation-removal== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #31458: <==negation-removal== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #35469: <==uncertain_firing== 23012 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #53936: <==uncertain_firing== 62328 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #55477: <==negation-removal== 46843 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #60894: <==negation-removal== 79737 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #61666: <==negation-removal== 71328 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64097: <==uncertain_firing== 71328 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #65647: <==negation-removal== 23012 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #70830: <==negation-removal== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #76449: <==uncertain_firing== 25841 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #76893: <==uncertain_firing== 69552 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #78287: <==uncertain_firing== 46843 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #78859: <==negation-removal== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #89541: <==uncertain_firing== 25966 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l2))
        :effect (and
                    ; #31465: <==closure== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #34837: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #38185: <==closure== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #40073: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #50846: <==closure== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #70625: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #72909: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #86240: <==closure== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #12919: <==negation-removal== 38185 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #24889: <==uncertain_firing== 38185 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #26985: <==uncertain_firing== 50846 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #33622: <==negation-removal== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #33695: <==uncertain_firing== 86240 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #34561: <==negation-removal== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #37892: <==uncertain_firing== 34837 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #42372: <==uncertain_firing== 31465 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #42478: <==negation-removal== 31465 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #48236: <==uncertain_firing== 70625 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #51346: <==negation-removal== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #60981: <==negation-removal== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72640: <==uncertain_firing== 72909 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #77319: <==uncertain_firing== 40073 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #77562: <==negation-removal== 50846 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #80920: <==negation-removal== 86240 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #11424: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18029: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #24393: <==closure== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #37542: <==closure== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #42233: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #62807: <==closure== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #67898: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #74087: <==closure== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #19518: <==uncertain_firing== 62807 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #20344: <==negation-removal== 62807 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #30766: <==negation-removal== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #32353: <==negation-removal== 74087 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #35406: <==uncertain_firing== 11424 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35852: <==negation-removal== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #58278: <==uncertain_firing== 74087 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #63488: <==negation-removal== 24393 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #68740: <==uncertain_firing== 67898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #70139: <==uncertain_firing== 24393 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #70904: <==uncertain_firing== 18029 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #71974: <==negation-removal== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74815: <==uncertain_firing== 42233 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #80914: <==negation-removal== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #85053: <==uncertain_firing== 37542 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #87546: <==negation-removal== 37542 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #19305: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #25986: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #30609: <==closure== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #47377: <==closure== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #59960: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #64655: <==closure== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #66405: <==closure== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #72273: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #11023: <==negation-removal== 47377 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #20334: <==negation-removal== 66405 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #28636: <==uncertain_firing== 59960 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #32371: <==negation-removal== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #34261: <==uncertain_firing== 64655 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #38342: <==uncertain_firing== 72273 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #41092: <==uncertain_firing== 30609 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #63180: <==negation-removal== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #63447: <==uncertain_firing== 47377 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #65024: <==uncertain_firing== 19305 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85870: <==uncertain_firing== 25986 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #85987: <==negation-removal== 30609 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86453: <==uncertain_firing== 66405 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #89382: <==negation-removal== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89980: <==negation-removal== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #91110: <==negation-removal== 64655 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #10517: <==closure== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #17101: <==closure== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #25472: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #31450: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #49870: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #69590: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #79634: <==closure== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #92001: <==closure== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #12376: <==uncertain_firing== 10517 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #20180: <==uncertain_firing== 17101 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #30959: <==negation-removal== 79634 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #31301: <==uncertain_firing== 49870 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #31598: <==negation-removal== 17101 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37953: <==negation-removal== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #44531: <==uncertain_firing== 25472 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #45986: <==negation-removal== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #66107: <==uncertain_firing== 79634 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #67642: <==uncertain_firing== 92001 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #70137: <==negation-removal== 92001 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72351: <==uncertain_firing== 31450 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #75643: <==negation-removal== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #81892: <==negation-removal== 10517 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #82413: <==negation-removal== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #82457: <==uncertain_firing== 69590 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #13337: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #28101: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #52076: <==closure== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #61082: <==closure== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #68770: <==closure== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #79589: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #87948: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #91073: <==closure== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #12671: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #16336: <==negation-removal== 68770 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #21540: <==negation-removal== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #29033: <==negation-removal== 61082 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #29442: <==negation-removal== 52076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #30853: <==negation-removal== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #41288: <==negation-removal== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #45283: <==uncertain_firing== 28101 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #52624: <==uncertain_firing== 68770 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #53125: <==negation-removal== 91073 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #53773: <==uncertain_firing== 87948 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #59046: <==uncertain_firing== 52076 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #60181: <==negation-removal== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #60578: <==uncertain_firing== 91073 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #72310: <==uncertain_firing== 61082 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #76359: <==uncertain_firing== 13337 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #21333: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #21906: <==closure== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: <==closure== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #27191: <==closure== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34978: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #43906: <==closure== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #67524: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #86536: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #13616: <==uncertain_firing== 86536 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #18262: <==uncertain_firing== 27191 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #22377: <==negation-removal== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33332: <==negation-removal== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #33697: <==negation-removal== 26080 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #34410: <==negation-removal== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #35382: <==uncertain_firing== 34978 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #42102: <==uncertain_firing== 43906 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60167: <==negation-removal== 43906 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #70966: <==uncertain_firing== 21906 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78721: <==uncertain_firing== 21333 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #80692: <==negation-removal== 21906 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #81536: <==negation-removal== 27191 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #82139: <==uncertain_firing== 67524 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #84320: <==negation-removal== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #89024: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #31731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #36166: <==closure== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #51206: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #71168: <==closure== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #73294: <==closure== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #76648: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84816: <==closure== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #89545: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #13596: <==negation-removal== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #20957: <==uncertain_firing== 51206 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #22208: <==negation-removal== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #23078: <==uncertain_firing== 36166 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #26854: <==uncertain_firing== 84816 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #27768: <==uncertain_firing== 31731 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27808: <==negation-removal== 84816 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #32067: <==uncertain_firing== 73294 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #45307: <==uncertain_firing== 71168 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #45331: <==uncertain_firing== 89545 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45436: <==negation-removal== 71168 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #47607: <==negation-removal== 36166 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #48216: <==negation-removal== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #56366: <==negation-removal== 73294 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #85604: <==uncertain_firing== 76648 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #88459: <==negation-removal== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #12062: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #13371: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #15548: <==closure== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #24447: <==closure== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #25573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #39711: <==closure== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #76309: <==closure== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #80184: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #17012: <==uncertain_firing== 76309 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #17228: <==uncertain_firing== 13371 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #25429: <==uncertain_firing== 80184 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #28128: <==negation-removal== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #34171: <==negation-removal== 24447 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40125: <==uncertain_firing== 39711 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #40863: <==uncertain_firing== 15548 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #42163: <==uncertain_firing== 25573 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45122: <==uncertain_firing== 12062 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #49739: <==negation-removal== 15548 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #50315: <==negation-removal== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63806: <==uncertain_firing== 24447 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64291: <==negation-removal== 39711 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #76057: <==negation-removal== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #77793: <==negation-removal== 76309 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #97307: <==negation-removal== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (initialized)
                           (Pc_secret_c)
                           (at_c_l1)
                           (Bc_secret_c))
        :effect (and
                    ; #10936: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #24812: <==closure== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #31663: <==closure== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41466: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #43070: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #63488: <==closure== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #74105: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75383: <==closure== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #16177: <==negation-removal== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #16836: <==uncertain_firing== 63488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #19492: <==negation-removal== 75383 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #20083: <==negation-removal== 31663 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21584: <==negation-removal== 24812 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35344: <==uncertain_firing== 24812 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #37650: <==uncertain_firing== 43070 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #38526: <==negation-removal== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #39682: <==negation-removal== 63488 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #50042: <==uncertain_firing== 75383 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #54023: <==uncertain_firing== 31663 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #55562: <==negation-removal== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #64484: <==uncertain_firing== 41466 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #70759: <==uncertain_firing== 10936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88664: <==negation-removal== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #89722: <==uncertain_firing== 74105 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (initialized)
                           (Pc_secret_c)
                           (at_c_l2)
                           (Bc_secret_c))
        :effect (and
                    ; #17962: <==closure== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #35517: <==closure== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39888: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51236: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #53183: <==closure== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #58778: <==closure== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #63860: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #91456: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #14736: <==negation-removal== 35517 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #21250: <==uncertain_firing== 51236 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #29390: <==uncertain_firing== 91456 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #32894: <==uncertain_firing== 63860 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #37763: <==negation-removal== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #37866: <==negation-removal== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #42630: <==uncertain_firing== 17962 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #43161: <==negation-removal== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #45660: <==negation-removal== 17962 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #55179: <==negation-removal== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #57134: <==uncertain_firing== 39888 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #66625: <==uncertain_firing== 35517 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #66883: <==uncertain_firing== 53183 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #76147: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #84004: <==negation-removal== 53183 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #99041: <==negation-removal== 58778 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #12717: <==closure== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #20063: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #43291: <==closure== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #43610: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51611: <==closure== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #54509: <==closure== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #77441: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #83169: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #11196: <==negation-removal== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #13016: <==negation-removal== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #16418: <==uncertain_firing== 43291 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #23287: <==uncertain_firing== 20063 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #29003: <==negation-removal== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #30217: <==uncertain_firing== 12717 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #38882: <==negation-removal== 43291 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #51263: <==uncertain_firing== 83169 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #60124: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #61491: <==uncertain_firing== 43610 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #61626: <==uncertain_firing== 77441 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #64913: <==negation-removal== 54509 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #74434: <==negation-removal== 51611 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #77158: <==uncertain_firing== 54509 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #86334: <==negation-removal== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #94944: <==negation-removal== 12717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (initialized)
                           (Bc_secret_d)
                           (at_c_l1)
                           (Pc_secret_d))
        :effect (and
                    ; #23012: <==closure== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #25841: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #25966: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #46843: <==closure== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #62328: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #69552: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #71328: <==closure== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #79737: <==closure== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #15012: <==uncertain_firing== 79737 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #16269: <==negation-removal== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #31458: <==negation-removal== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #35469: <==uncertain_firing== 23012 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #53936: <==uncertain_firing== 62328 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #55477: <==negation-removal== 46843 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #60894: <==negation-removal== 79737 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #61666: <==negation-removal== 71328 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64097: <==uncertain_firing== 71328 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #65647: <==negation-removal== 23012 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #70830: <==negation-removal== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #76449: <==uncertain_firing== 25841 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #76893: <==uncertain_firing== 69552 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #78287: <==uncertain_firing== 46843 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #78859: <==negation-removal== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #89541: <==uncertain_firing== 25966 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (initialized)
                           (Bc_secret_d)
                           (at_c_l2)
                           (Pc_secret_d))
        :effect (and
                    ; #31465: <==closure== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #34837: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #38185: <==closure== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #40073: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #50846: <==closure== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #70625: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #72909: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #86240: <==closure== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #12919: <==negation-removal== 38185 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #24889: <==uncertain_firing== 38185 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #26985: <==uncertain_firing== 50846 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #33622: <==negation-removal== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #33695: <==uncertain_firing== 86240 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #34561: <==negation-removal== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #37892: <==uncertain_firing== 34837 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #42372: <==uncertain_firing== 31465 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #42478: <==negation-removal== 31465 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #48236: <==uncertain_firing== 70625 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #51346: <==negation-removal== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #60981: <==negation-removal== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72640: <==uncertain_firing== 72909 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #77319: <==uncertain_firing== 40073 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #77562: <==negation-removal== 50846 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #80920: <==negation-removal== 86240 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #11424: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18029: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #24393: <==closure== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #37542: <==closure== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #42233: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #62807: <==closure== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #67898: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #74087: <==closure== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #19518: <==uncertain_firing== 62807 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #20344: <==negation-removal== 62807 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #30766: <==negation-removal== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #32353: <==negation-removal== 74087 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #35406: <==uncertain_firing== 11424 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35852: <==negation-removal== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #58278: <==uncertain_firing== 74087 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #63488: <==negation-removal== 24393 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #68740: <==uncertain_firing== 67898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #70139: <==uncertain_firing== 24393 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #70904: <==uncertain_firing== 18029 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #71974: <==negation-removal== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74815: <==uncertain_firing== 42233 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #80914: <==negation-removal== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #85053: <==uncertain_firing== 37542 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #87546: <==negation-removal== 37542 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (at_d_l1)
                           (Pd_secret_a))
        :effect (and
                    ; #19305: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #25986: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #30609: <==closure== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #47377: <==closure== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #59960: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #64655: <==closure== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #66405: <==closure== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #72273: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #11023: <==negation-removal== 47377 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #20334: <==negation-removal== 66405 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #28636: <==uncertain_firing== 59960 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #32371: <==negation-removal== 25986 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #34261: <==uncertain_firing== 64655 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #38342: <==uncertain_firing== 72273 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #41092: <==uncertain_firing== 30609 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #63180: <==negation-removal== 59960 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #63447: <==uncertain_firing== 47377 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #65024: <==uncertain_firing== 19305 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85870: <==uncertain_firing== 25986 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #85987: <==negation-removal== 30609 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86453: <==uncertain_firing== 66405 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #89382: <==negation-removal== 72273 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89980: <==negation-removal== 19305 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #91110: <==negation-removal== 64655 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #10517: <==closure== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #17101: <==closure== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #25472: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #31450: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #49870: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #69590: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #79634: <==closure== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #92001: <==closure== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #12376: <==uncertain_firing== 10517 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #20180: <==uncertain_firing== 17101 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #30959: <==negation-removal== 79634 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #31301: <==uncertain_firing== 49870 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #31598: <==negation-removal== 17101 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #37953: <==negation-removal== 69590 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #44531: <==uncertain_firing== 25472 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #45986: <==negation-removal== 25472 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #66107: <==uncertain_firing== 79634 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #67642: <==uncertain_firing== 92001 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #70137: <==negation-removal== 92001 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #72351: <==uncertain_firing== 31450 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #75643: <==negation-removal== 49870 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #81892: <==negation-removal== 10517 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #82413: <==negation-removal== 31450 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #82457: <==uncertain_firing== 69590 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (at_d_l3)
                           (Pd_secret_a))
        :effect (and
                    ; #13337: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #28101: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #52076: <==closure== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #61082: <==closure== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #68770: <==closure== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #79589: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #87948: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #91073: <==closure== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #12671: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #16336: <==negation-removal== 68770 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #21540: <==negation-removal== 79589 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #29033: <==negation-removal== 61082 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #29442: <==negation-removal== 52076 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #30853: <==negation-removal== 13337 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #41288: <==negation-removal== 28101 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #45283: <==uncertain_firing== 28101 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #52624: <==uncertain_firing== 68770 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #53125: <==negation-removal== 91073 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #53773: <==uncertain_firing== 87948 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #59046: <==uncertain_firing== 52076 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #60181: <==negation-removal== 87948 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #60578: <==uncertain_firing== 91073 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #72310: <==uncertain_firing== 61082 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #76359: <==uncertain_firing== 13337 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #21333: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #21906: <==closure== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: <==closure== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #27191: <==closure== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34978: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #43906: <==closure== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #67524: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #86536: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #13616: <==uncertain_firing== 86536 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #18262: <==uncertain_firing== 27191 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #22377: <==negation-removal== 21333 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33332: <==negation-removal== 86536 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #33697: <==negation-removal== 26080 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #34410: <==negation-removal== 34978 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #35382: <==uncertain_firing== 34978 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #42102: <==uncertain_firing== 43906 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60167: <==negation-removal== 43906 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #70966: <==uncertain_firing== 21906 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78721: <==uncertain_firing== 21333 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #80692: <==negation-removal== 21906 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #81536: <==negation-removal== 27191 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #82139: <==uncertain_firing== 67524 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #84320: <==negation-removal== 67524 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #89024: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (Pd_secret_b)
                           (at_d_l2))
        :effect (and
                    ; #31731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #36166: <==closure== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #51206: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #71168: <==closure== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #73294: <==closure== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #76648: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84816: <==closure== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #89545: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #13596: <==negation-removal== 51206 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #20957: <==uncertain_firing== 51206 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #22208: <==negation-removal== 76648 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #23078: <==uncertain_firing== 36166 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #26854: <==uncertain_firing== 84816 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #27768: <==uncertain_firing== 31731 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27808: <==negation-removal== 84816 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #32067: <==uncertain_firing== 73294 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #45307: <==uncertain_firing== 71168 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #45331: <==uncertain_firing== 89545 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45436: <==negation-removal== 71168 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #47607: <==negation-removal== 36166 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #48216: <==negation-removal== 31731 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #56366: <==negation-removal== 73294 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #85604: <==uncertain_firing== 76648 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #88459: <==negation-removal== 89545 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #12062: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #13371: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #15548: <==closure== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #24447: <==closure== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #25573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #39711: <==closure== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #76309: <==closure== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #80184: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #17012: <==uncertain_firing== 76309 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #17228: <==uncertain_firing== 13371 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #25429: <==uncertain_firing== 80184 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #28128: <==negation-removal== 25573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #34171: <==negation-removal== 24447 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40125: <==uncertain_firing== 39711 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #40863: <==uncertain_firing== 15548 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #42163: <==uncertain_firing== 25573 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #45122: <==uncertain_firing== 12062 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #49739: <==negation-removal== 15548 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #50315: <==negation-removal== 80184 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63806: <==uncertain_firing== 24447 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64291: <==negation-removal== 39711 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #76057: <==negation-removal== 13371 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #77793: <==negation-removal== 76309 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #97307: <==negation-removal== 12062 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (initialized)
                           (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c))
        :effect (and
                    ; #10936: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #24812: <==closure== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #31663: <==closure== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41466: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #43070: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #63488: <==closure== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #74105: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75383: <==closure== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #16177: <==negation-removal== 43070 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #16836: <==uncertain_firing== 63488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #19492: <==negation-removal== 75383 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #20083: <==negation-removal== 31663 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21584: <==negation-removal== 24812 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #35344: <==uncertain_firing== 24812 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #37650: <==uncertain_firing== 43070 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #38526: <==negation-removal== 41466 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #39682: <==negation-removal== 63488 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #50042: <==uncertain_firing== 75383 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #54023: <==uncertain_firing== 31663 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #55562: <==negation-removal== 10936 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #64484: <==uncertain_firing== 41466 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #70759: <==uncertain_firing== 10936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88664: <==negation-removal== 74105 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #89722: <==uncertain_firing== 74105 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l2))
        :effect (and
                    ; #17962: <==closure== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #35517: <==closure== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #39888: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51236: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #53183: <==closure== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #58778: <==closure== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #63860: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #91456: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #14736: <==negation-removal== 35517 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #21250: <==uncertain_firing== 51236 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #29390: <==uncertain_firing== 91456 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #32894: <==uncertain_firing== 63860 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #37763: <==negation-removal== 63860 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #37866: <==negation-removal== 91456 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #42630: <==uncertain_firing== 17962 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #43161: <==negation-removal== 39888 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #45660: <==negation-removal== 17962 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #55179: <==negation-removal== 51236 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #57134: <==uncertain_firing== 39888 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #66625: <==uncertain_firing== 35517 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #66883: <==uncertain_firing== 53183 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #76147: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #84004: <==negation-removal== 53183 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #99041: <==negation-removal== 58778 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (initialized)
                           (at_d_l3)
                           (Pd_secret_c)
                           (Bd_secret_c))
        :effect (and
                    ; #12717: <==closure== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #20063: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #43291: <==closure== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #43610: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #51611: <==closure== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #54509: <==closure== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #77441: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #83169: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #11196: <==negation-removal== 20063 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #13016: <==negation-removal== 83169 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #16418: <==uncertain_firing== 43291 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #23287: <==uncertain_firing== 20063 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #29003: <==negation-removal== 77441 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #30217: <==uncertain_firing== 12717 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #38882: <==negation-removal== 43291 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #51263: <==uncertain_firing== 83169 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #60124: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #61491: <==uncertain_firing== 43610 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #61626: <==uncertain_firing== 77441 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #64913: <==negation-removal== 54509 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #74434: <==negation-removal== 51611 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #77158: <==uncertain_firing== 54509 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l3))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #86334: <==negation-removal== 43610 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #94944: <==negation-removal== 12717 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #23012: <==closure== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #25841: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #25966: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #46843: <==closure== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #62328: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #69552: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #71328: <==closure== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #79737: <==closure== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #15012: <==uncertain_firing== 79737 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #16269: <==negation-removal== 62328 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #31458: <==negation-removal== 69552 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #35469: <==uncertain_firing== 23012 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #53936: <==uncertain_firing== 62328 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #55477: <==negation-removal== 46843 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #60894: <==negation-removal== 79737 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #61666: <==negation-removal== 71328 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64097: <==uncertain_firing== 71328 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #65647: <==negation-removal== 23012 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #70830: <==negation-removal== 25841 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #76449: <==uncertain_firing== 25841 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #76893: <==uncertain_firing== 69552 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #78287: <==uncertain_firing== 46843 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #78859: <==negation-removal== 25966 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #89541: <==uncertain_firing== 25966 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (initialized)
                           (at_d_l2))
        :effect (and
                    ; #31465: <==closure== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #34837: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #38185: <==closure== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #40073: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #50846: <==closure== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #70625: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #72909: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #86240: <==closure== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #12919: <==negation-removal== 38185 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #24889: <==uncertain_firing== 38185 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #26985: <==uncertain_firing== 50846 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #33622: <==negation-removal== 70625 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #33695: <==uncertain_firing== 86240 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #34561: <==negation-removal== 72909 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #37892: <==uncertain_firing== 34837 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #42372: <==uncertain_firing== 31465 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #42478: <==negation-removal== 31465 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #48236: <==uncertain_firing== 70625 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #51346: <==negation-removal== 34837 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #60981: <==negation-removal== 40073 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #72640: <==uncertain_firing== 72909 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #77319: <==uncertain_firing== 40073 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #77562: <==negation-removal== 50846 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #80920: <==negation-removal== 86240 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l3)
                           (initialized))
        :effect (and
                    ; #11424: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18029: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #24393: <==closure== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #37542: <==closure== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #42233: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #62807: <==closure== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #67898: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #74087: <==closure== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #19518: <==uncertain_firing== 62807 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #20344: <==negation-removal== 62807 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #30766: <==negation-removal== 42233 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #32353: <==negation-removal== 74087 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #35406: <==uncertain_firing== 11424 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35852: <==negation-removal== 11424 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #58278: <==uncertain_firing== 74087 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #63488: <==negation-removal== 24393 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #68740: <==uncertain_firing== 67898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #70139: <==uncertain_firing== 24393 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #70904: <==uncertain_firing== 18029 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #71974: <==negation-removal== 18029 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74815: <==uncertain_firing== 42233 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #80914: <==negation-removal== 67898 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #85053: <==uncertain_firing== 37542 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #87546: <==negation-removal== 37542 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #17494: <==closure== 75748 (pos)
                    (Pc_secret_c)

                    ; #20154: origin
                    (Ba_secret_a)

                    ; #36116: origin
                    (Bb_secret_b)

                    ; #51638: <==closure== 20154 (pos)
                    (Pa_secret_a)

                    ; #52078: origin
                    (Bd_secret_d)

                    ; #55256: <==closure== 36116 (pos)
                    (Pb_secret_b)

                    ; #66028: origin
                    (initialized)

                    ; #71478: <==closure== 52078 (pos)
                    (Pd_secret_d)

                    ; #75748: origin
                    (Bc_secret_c)

                    ; #10659: <==negation-removal== 75748 (pos)
                    (not (Pc_not_secret_c))

                    ; #12314: <==negation-removal== 20154 (pos)
                    (not (Pa_not_secret_a))

                    ; #28978: <==negation-removal== 52078 (pos)
                    (not (Pd_not_secret_d))

                    ; #38584: <==negation-removal== 17494 (pos)
                    (not (Bc_not_secret_c))

                    ; #49864: <==negation-removal== 71478 (pos)
                    (not (Bd_not_secret_d))

                    ; #66237: <==negation-removal== 36116 (pos)
                    (not (Pb_not_secret_b))

                    ; #82472: <==negation-removal== 51638 (pos)
                    (not (Ba_not_secret_a))

                    ; #84329: <==negation-removal== 66028 (pos)
                    (not (not_initialized))

                    ; #99237: <==negation-removal== 55256 (pos)
                    (not (Bb_not_secret_b))))

    (:action move_a_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_a_l1))
        :effect (and
                    ; #60050: origin
                    (at_a_l1)

                    ; #72900: origin
                    (not_at_a_l1)

                    ; #60050: <==negation-removal== 72900 (pos)
                    (not (at_a_l1))

                    ; #72900: <==negation-removal== 60050 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (initialized)
                           (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #46673: origin
                    (at_a_l2)

                    ; #72900: origin
                    (not_at_a_l1)

                    ; #42034: <==negation-removal== 46673 (pos)
                    (not (not_at_a_l2))

                    ; #60050: <==negation-removal== 72900 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_a_l1))
        :effect (and
                    ; #29119: origin
                    (at_a_l3)

                    ; #72900: origin
                    (not_at_a_l1)

                    ; #16512: <==negation-removal== 29119 (pos)
                    (not (not_at_a_l3))

                    ; #60050: <==negation-removal== 72900 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_a_l2))
        :effect (and
                    ; #42034: origin
                    (not_at_a_l2)

                    ; #60050: origin
                    (at_a_l1)

                    ; #46673: <==negation-removal== 42034 (pos)
                    (not (at_a_l2))

                    ; #72900: <==negation-removal== 60050 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #42034: origin
                    (not_at_a_l2)

                    ; #46673: origin
                    (at_a_l2)

                    ; #42034: <==negation-removal== 46673 (pos)
                    (not (not_at_a_l2))

                    ; #46673: <==negation-removal== 42034 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_a_l2))
        :effect (and
                    ; #29119: origin
                    (at_a_l3)

                    ; #42034: origin
                    (not_at_a_l2)

                    ; #16512: <==negation-removal== 29119 (pos)
                    (not (not_at_a_l3))

                    ; #46673: <==negation-removal== 42034 (pos)
                    (not (at_a_l2))))

    (:action move_a_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #16512: origin
                    (not_at_a_l3)

                    ; #60050: origin
                    (at_a_l1)

                    ; #29119: <==negation-removal== 16512 (pos)
                    (not (at_a_l3))

                    ; #72900: <==negation-removal== 60050 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l3_l2
        :precondition (and (initialized)
                           (at_a_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #16512: origin
                    (not_at_a_l3)

                    ; #46673: origin
                    (at_a_l2)

                    ; #29119: <==negation-removal== 16512 (pos)
                    (not (at_a_l3))

                    ; #42034: <==negation-removal== 46673 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #16512: origin
                    (not_at_a_l3)

                    ; #29119: origin
                    (at_a_l3)

                    ; #16512: <==negation-removal== 29119 (pos)
                    (not (not_at_a_l3))

                    ; #29119: <==negation-removal== 16512 (pos)
                    (not (at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #40495: origin
                    (not_at_b_l1)

                    ; #43193: origin
                    (at_b_l1)

                    ; #40495: <==negation-removal== 43193 (pos)
                    (not (not_at_b_l1))

                    ; #43193: <==negation-removal== 40495 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #40495: origin
                    (not_at_b_l1)

                    ; #73853: origin
                    (at_b_l2)

                    ; #17016: <==negation-removal== 73853 (pos)
                    (not (not_at_b_l2))

                    ; #43193: <==negation-removal== 40495 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_b_l1))
        :effect (and
                    ; #40495: origin
                    (not_at_b_l1)

                    ; #77178: origin
                    (at_b_l3)

                    ; #43193: <==negation-removal== 40495 (pos)
                    (not (at_b_l1))

                    ; #43451: <==negation-removal== 77178 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l2_l1
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #17016: origin
                    (not_at_b_l2)

                    ; #43193: origin
                    (at_b_l1)

                    ; #40495: <==negation-removal== 43193 (pos)
                    (not (not_at_b_l1))

                    ; #73853: <==negation-removal== 17016 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #17016: origin
                    (not_at_b_l2)

                    ; #73853: origin
                    (at_b_l2)

                    ; #17016: <==negation-removal== 73853 (pos)
                    (not (not_at_b_l2))

                    ; #73853: <==negation-removal== 17016 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_b_l2))
        :effect (and
                    ; #17016: origin
                    (not_at_b_l2)

                    ; #77178: origin
                    (at_b_l3)

                    ; #43451: <==negation-removal== 77178 (pos)
                    (not (not_at_b_l3))

                    ; #73853: <==negation-removal== 17016 (pos)
                    (not (at_b_l2))))

    (:action move_b_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_b_l3))
        :effect (and
                    ; #43193: origin
                    (at_b_l1)

                    ; #43451: origin
                    (not_at_b_l3)

                    ; #40495: <==negation-removal== 43193 (pos)
                    (not (not_at_b_l1))

                    ; #77178: <==negation-removal== 43451 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l2
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #43451: origin
                    (not_at_b_l3)

                    ; #73853: origin
                    (at_b_l2)

                    ; #17016: <==negation-removal== 73853 (pos)
                    (not (not_at_b_l2))

                    ; #77178: <==negation-removal== 43451 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #43451: origin
                    (not_at_b_l3)

                    ; #77178: origin
                    (at_b_l3)

                    ; #43451: <==negation-removal== 77178 (pos)
                    (not (not_at_b_l3))

                    ; #77178: <==negation-removal== 43451 (pos)
                    (not (at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_c_l1))
        :effect (and
                    ; #26817: origin
                    (not_at_c_l1)

                    ; #40695: origin
                    (at_c_l1)

                    ; #26817: <==negation-removal== 40695 (pos)
                    (not (not_at_c_l1))

                    ; #40695: <==negation-removal== 26817 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #11156: origin
                    (at_c_l2)

                    ; #26817: origin
                    (not_at_c_l1)

                    ; #40695: <==negation-removal== 26817 (pos)
                    (not (at_c_l1))

                    ; #88605: <==negation-removal== 11156 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l1_l3
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #26817: origin
                    (not_at_c_l1)

                    ; #76521: origin
                    (at_c_l3)

                    ; #18381: <==negation-removal== 76521 (pos)
                    (not (not_at_c_l3))

                    ; #40695: <==negation-removal== 26817 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #40695: origin
                    (at_c_l1)

                    ; #88605: origin
                    (not_at_c_l2)

                    ; #11156: <==negation-removal== 88605 (pos)
                    (not (at_c_l2))

                    ; #26817: <==negation-removal== 40695 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #11156: origin
                    (at_c_l2)

                    ; #88605: origin
                    (not_at_c_l2)

                    ; #11156: <==negation-removal== 88605 (pos)
                    (not (at_c_l2))

                    ; #88605: <==negation-removal== 11156 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_c_l2))
        :effect (and
                    ; #76521: origin
                    (at_c_l3)

                    ; #88605: origin
                    (not_at_c_l2)

                    ; #11156: <==negation-removal== 88605 (pos)
                    (not (at_c_l2))

                    ; #18381: <==negation-removal== 76521 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_c_l3)
                           (initialized))
        :effect (and
                    ; #18381: origin
                    (not_at_c_l3)

                    ; #40695: origin
                    (at_c_l1)

                    ; #26817: <==negation-removal== 40695 (pos)
                    (not (not_at_c_l1))

                    ; #76521: <==negation-removal== 18381 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l2
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #11156: origin
                    (at_c_l2)

                    ; #18381: origin
                    (not_at_c_l3)

                    ; #76521: <==negation-removal== 18381 (pos)
                    (not (at_c_l3))

                    ; #88605: <==negation-removal== 11156 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l3_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #18381: origin
                    (not_at_c_l3)

                    ; #76521: origin
                    (at_c_l3)

                    ; #18381: <==negation-removal== 76521 (pos)
                    (not (not_at_c_l3))

                    ; #76521: <==negation-removal== 18381 (pos)
                    (not (at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #57865: origin
                    (at_d_l1)

                    ; #73734: origin
                    (not_at_d_l1)

                    ; #57865: <==negation-removal== 73734 (pos)
                    (not (at_d_l1))

                    ; #73734: <==negation-removal== 57865 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (initialized)
                           (at_d_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #73734: origin
                    (not_at_d_l1)

                    ; #84103: origin
                    (at_d_l2)

                    ; #57865: <==negation-removal== 73734 (pos)
                    (not (at_d_l1))

                    ; #76780: <==negation-removal== 84103 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_d_l1))
        :effect (and
                    ; #69424: origin
                    (at_d_l3)

                    ; #73734: origin
                    (not_at_d_l1)

                    ; #14302: <==negation-removal== 69424 (pos)
                    (not (not_at_d_l3))

                    ; #57865: <==negation-removal== 73734 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #57865: origin
                    (at_d_l1)

                    ; #76780: origin
                    (not_at_d_l2)

                    ; #73734: <==negation-removal== 57865 (pos)
                    (not (not_at_d_l1))

                    ; #84103: <==negation-removal== 76780 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (initialized)
                           (connected_l2_l2)
                           (at_d_l2))
        :effect (and
                    ; #76780: origin
                    (not_at_d_l2)

                    ; #84103: origin
                    (at_d_l2)

                    ; #76780: <==negation-removal== 84103 (pos)
                    (not (not_at_d_l2))

                    ; #84103: <==negation-removal== 76780 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_d_l2))
        :effect (and
                    ; #69424: origin
                    (at_d_l3)

                    ; #76780: origin
                    (not_at_d_l2)

                    ; #14302: <==negation-removal== 69424 (pos)
                    (not (not_at_d_l3))

                    ; #84103: <==negation-removal== 76780 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_d_l3))
        :effect (and
                    ; #14302: origin
                    (not_at_d_l3)

                    ; #57865: origin
                    (at_d_l1)

                    ; #69424: <==negation-removal== 14302 (pos)
                    (not (at_d_l3))

                    ; #73734: <==negation-removal== 57865 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l3_l2
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #14302: origin
                    (not_at_d_l3)

                    ; #84103: origin
                    (at_d_l2)

                    ; #69424: <==negation-removal== 14302 (pos)
                    (not (at_d_l3))

                    ; #76780: <==negation-removal== 84103 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l3_l3
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #14302: origin
                    (not_at_d_l3)

                    ; #69424: origin
                    (at_d_l3)

                    ; #14302: <==negation-removal== 69424 (pos)
                    (not (not_at_d_l3))

                    ; #69424: <==negation-removal== 14302 (pos)
                    (not (at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (initialized)
                           (Pa_secret_a)
                           (at_a_l1)
                           (Ba_secret_a))
        :effect (and
                    ; #19215: <==closure== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #39085: <==closure== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #40458: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46447: <==closure== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #74108: <==closure== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79711: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #82968: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #91721: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #11164: <==uncertain_firing== 40458 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20795: <==uncertain_firing== 46447 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #21993: <==uncertain_firing== 91721 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #23268: <==uncertain_firing== 74108 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25252: <==negation-removal== 74108 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #25404: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #29869: <==negation-removal== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #32488: <==uncertain_firing== 19215 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #38565: <==negation-removal== 46447 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #53859: <==negation-removal== 39085 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #63648: <==negation-removal== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70603: <==uncertain_firing== 39085 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #71485: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #72957: <==negation-removal== 19215 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #79526: <==negation-removal== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #99351: <==uncertain_firing== 79711 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (initialized)
                           (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #29989: <==closure== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30964: <==closure== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #32089: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #38191: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46356: <==closure== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #74779: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84048: <==closure== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #85050: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #12715: <==uncertain_firing== 85050 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #14076: <==negation-removal== 30964 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #17434: <==negation-removal== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #25634: <==uncertain_firing== 32089 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #31668: <==negation-removal== 84048 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #35482: <==negation-removal== 46356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #42105: <==uncertain_firing== 29989 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #43161: <==uncertain_firing== 84048 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #43391: <==uncertain_firing== 74779 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #50482: <==negation-removal== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #51088: <==uncertain_firing== 30964 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #51865: <==negation-removal== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #65665: <==negation-removal== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #89676: <==negation-removal== 29989 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #90581: <==uncertain_firing== 46356 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #91493: <==uncertain_firing== 38191 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #17992: <==closure== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #21506: <==closure== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #25851: <==closure== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #72118: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #79112: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86271: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #86330: <==closure== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #91932: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #19091: <==negation-removal== 17992 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23619: <==negation-removal== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26894: <==uncertain_firing== 25851 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #30395: <==negation-removal== 21506 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #30816: <==uncertain_firing== 79112 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #43361: <==negation-removal== 86330 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45250: <==uncertain_firing== 21506 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #48718: <==uncertain_firing== 86271 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #53726: <==uncertain_firing== 86330 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #54409: <==uncertain_firing== 91932 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #73143: <==uncertain_firing== 17992 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83161: <==negation-removal== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #83221: <==negation-removal== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #83848: <==negation-removal== 25851 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #85391: <==negation-removal== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #92437: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #26381: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #29869: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #37066: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #50224: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #53270: <==closure== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #55383: <==closure== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #73019: <==closure== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #91484: <==closure== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #16761: <==uncertain_firing== 29869 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19776: <==negation-removal== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #26566: <==uncertain_firing== 73019 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #28696: <==uncertain_firing== 55383 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #34334: <==negation-removal== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #41780: <==negation-removal== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #45045: <==uncertain_firing== 50224 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #51792: <==uncertain_firing== 26381 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56583: <==negation-removal== 53270 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #64155: <==negation-removal== 73019 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #65158: <==negation-removal== 55383 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #66534: <==uncertain_firing== 37066 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #68841: <==uncertain_firing== 53270 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #79883: <==negation-removal== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #81811: <==uncertain_firing== 91484 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #87445: <==negation-removal== 91484 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (initialized)
                           (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b))
        :effect (and
                    ; #15719: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #24745: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #36784: <==closure== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #39587: <==closure== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #48205: <==closure== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #61454: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #65817: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #81814: <==closure== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #13479: <==negation-removal== 81814 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #21248: <==uncertain_firing== 36784 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #21993: <==negation-removal== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #22610: <==negation-removal== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #25428: <==uncertain_firing== 39587 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25978: <==negation-removal== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #41196: <==uncertain_firing== 61454 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #45598: <==uncertain_firing== 65817 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #48512: <==uncertain_firing== 48205 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #55916: <==uncertain_firing== 24745 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #58389: <==uncertain_firing== 15719 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #61953: <==negation-removal== 48205 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #63269: <==negation-removal== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #74572: <==uncertain_firing== 81814 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #82213: <==negation-removal== 36784 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92108: <==negation-removal== 39587 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #38085: <==closure== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #51610: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #59281: <==closure== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #64253: <==closure== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #71426: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #82304: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #90491: <==closure== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #92040: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #10555: <==uncertain_firing== 92040 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #12308: <==negation-removal== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #20517: <==negation-removal== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #26502: <==uncertain_firing== 82304 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #33336: <==negation-removal== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #36368: <==uncertain_firing== 38085 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #36595: <==negation-removal== 38085 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #46650: <==uncertain_firing== 64253 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #50132: <==uncertain_firing== 59281 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #55965: <==negation-removal== 90491 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #57050: <==negation-removal== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #62449: <==negation-removal== 59281 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #64871: <==negation-removal== 64253 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #69383: <==uncertain_firing== 90491 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #76483: <==uncertain_firing== 71426 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #91156: <==uncertain_firing== 51610 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (initialized)
                           (at_a_l1)
                           (Pa_secret_c))
        :effect (and
                    ; #42483: <==closure== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #54209: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74104: <==closure== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #80044: <==closure== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #80790: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #84258: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #89674: <==closure== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #90356: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #10256: <==uncertain_firing== 84258 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #14648: <==uncertain_firing== 90356 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #18167: <==negation-removal== 74104 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #26691: <==negation-removal== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #32179: <==negation-removal== 89674 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #41090: <==negation-removal== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #52614: <==negation-removal== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #71398: <==negation-removal== 80044 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #73220: <==uncertain_firing== 80044 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #75871: <==uncertain_firing== 54209 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76639: <==uncertain_firing== 89674 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #80631: <==negation-removal== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #81226: <==uncertain_firing== 74104 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #86664: <==negation-removal== 42483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #86790: <==uncertain_firing== 42483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #87748: <==uncertain_firing== 80790 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Ba_secret_c)
                           (initialized)
                           (at_a_l2)
                           (Pa_secret_c))
        :effect (and
                    ; #15924: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #16721: <==closure== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #25718: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33481: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #37692: <==closure== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #63984: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #77793: <==closure== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #80918: <==closure== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #19602: <==negation-removal== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25092: <==uncertain_firing== 33481 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26307: <==negation-removal== 80918 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #30037: <==uncertain_firing== 63984 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #30641: <==uncertain_firing== 77793 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #32987: <==uncertain_firing== 15924 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #40674: <==negation-removal== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #50394: <==negation-removal== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #53316: <==uncertain_firing== 37692 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56439: <==uncertain_firing== 80918 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #61727: <==negation-removal== 77793 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #62286: <==uncertain_firing== 25718 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #82385: <==negation-removal== 16721 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #83873: <==uncertain_firing== 16721 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85957: <==negation-removal== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #86645: <==negation-removal== 37692 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (Ba_secret_c)
                           (at_a_l3)
                           (initialized)
                           (Pa_secret_c))
        :effect (and
                    ; #17475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #42989: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #44616: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #51808: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #64462: <==closure== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #65147: <==closure== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #85462: <==closure== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #88866: <==closure== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #11140: <==uncertain_firing== 85462 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #16999: <==uncertain_firing== 88866 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #22063: <==negation-removal== 64462 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #24415: <==uncertain_firing== 44616 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29989: <==negation-removal== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #38916: <==uncertain_firing== 51808 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #41543: <==negation-removal== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #42818: <==negation-removal== 65147 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #58501: <==negation-removal== 88866 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #60817: <==uncertain_firing== 64462 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #61195: <==uncertain_firing== 42989 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #65637: <==negation-removal== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #74771: <==uncertain_firing== 65147 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79801: <==negation-removal== 85462 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #89357: <==uncertain_firing== 17475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #91426: <==negation-removal== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d))
        :effect (and
                    ; #12301: <==closure== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #19883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #33293: <==closure== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #36498: <==closure== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #52901: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #76054: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #76286: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #84881: <==closure== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #19154: <==uncertain_firing== 12301 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #22521: <==negation-removal== 12301 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25981: <==negation-removal== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #28446: <==negation-removal== 36498 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #29351: <==uncertain_firing== 76054 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #31177: <==uncertain_firing== 36498 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #31720: <==negation-removal== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33699: <==uncertain_firing== 84881 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #34237: <==negation-removal== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36833: <==negation-removal== 33293 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #63271: <==uncertain_firing== 52901 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #70434: <==negation-removal== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #72909: <==uncertain_firing== 76286 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75929: <==uncertain_firing== 19883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #80923: <==uncertain_firing== 33293 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #83443: <==negation-removal== 84881 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l2)
                           (Pa_secret_d))
        :effect (and
                    ; #11794: <==closure== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #33034: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #39329: <==closure== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #44472: <==closure== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #56994: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #67604: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #72165: <==closure== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #74280: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #10677: <==negation-removal== 72165 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #12884: <==negation-removal== 44472 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #13984: <==negation-removal== 11794 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #27405: <==negation-removal== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #34690: <==negation-removal== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #41211: <==uncertain_firing== 44472 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #43713: <==negation-removal== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #47914: <==uncertain_firing== 33034 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #55197: <==uncertain_firing== 72165 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #73696: <==uncertain_firing== 56994 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #77585: <==uncertain_firing== 39329 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #78982: <==negation-removal== 39329 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #83829: <==uncertain_firing== 74280 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #86344: <==negation-removal== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #89593: <==uncertain_firing== 67604 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #90978: <==uncertain_firing== 11794 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #13151: <==closure== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14057: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #24243: <==closure== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #32451: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #38547: <==closure== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #80832: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #83526: <==closure== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #84919: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #14346: <==uncertain_firing== 80832 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14404: <==uncertain_firing== 83526 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #17077: <==uncertain_firing== 32451 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #20196: <==negation-removal== 38547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #20322: <==negation-removal== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #24007: <==negation-removal== 24243 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #51379: <==uncertain_firing== 13151 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #53414: <==negation-removal== 13151 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #54528: <==negation-removal== 83526 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #56679: <==negation-removal== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #64859: <==uncertain_firing== 38547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #75888: <==uncertain_firing== 24243 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #77885: <==uncertain_firing== 14057 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #78707: <==uncertain_firing== 84919 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82889: <==negation-removal== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #84370: <==negation-removal== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a))
        :effect (and
                    ; #19215: <==closure== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #39085: <==closure== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #40458: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46447: <==closure== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #74108: <==closure== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79711: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #82968: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #91721: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #11164: <==uncertain_firing== 40458 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20795: <==uncertain_firing== 46447 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #21993: <==uncertain_firing== 91721 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #23268: <==uncertain_firing== 74108 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25252: <==negation-removal== 74108 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #25404: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #29869: <==negation-removal== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #32488: <==uncertain_firing== 19215 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #38565: <==negation-removal== 46447 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #53859: <==negation-removal== 39085 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #63648: <==negation-removal== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70603: <==uncertain_firing== 39085 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #71485: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #72957: <==negation-removal== 19215 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #79526: <==negation-removal== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #99351: <==uncertain_firing== 79711 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #29989: <==closure== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30964: <==closure== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #32089: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #38191: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46356: <==closure== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #74779: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84048: <==closure== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #85050: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #12715: <==uncertain_firing== 85050 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #14076: <==negation-removal== 30964 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #17434: <==negation-removal== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #25634: <==uncertain_firing== 32089 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #31668: <==negation-removal== 84048 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #35482: <==negation-removal== 46356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #42105: <==uncertain_firing== 29989 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #43161: <==uncertain_firing== 84048 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #43391: <==uncertain_firing== 74779 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #50482: <==negation-removal== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #51088: <==uncertain_firing== 30964 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #51865: <==negation-removal== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #65665: <==negation-removal== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #89676: <==negation-removal== 29989 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #90581: <==uncertain_firing== 46356 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #91493: <==uncertain_firing== 38191 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #17992: <==closure== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #21506: <==closure== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #25851: <==closure== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #72118: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #79112: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86271: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #86330: <==closure== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #91932: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #19091: <==negation-removal== 17992 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23619: <==negation-removal== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26894: <==uncertain_firing== 25851 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #30395: <==negation-removal== 21506 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #30816: <==uncertain_firing== 79112 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #43361: <==negation-removal== 86330 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45250: <==uncertain_firing== 21506 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #48718: <==uncertain_firing== 86271 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #53726: <==uncertain_firing== 86330 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #54409: <==uncertain_firing== 91932 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #73143: <==uncertain_firing== 17992 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83161: <==negation-removal== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #83221: <==negation-removal== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #83848: <==negation-removal== 25851 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #85391: <==negation-removal== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #92437: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #26381: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #29869: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #37066: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #50224: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #53270: <==closure== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #55383: <==closure== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #73019: <==closure== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #91484: <==closure== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #16761: <==uncertain_firing== 29869 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19776: <==negation-removal== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #26566: <==uncertain_firing== 73019 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #28696: <==uncertain_firing== 55383 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #34334: <==negation-removal== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #41780: <==negation-removal== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #45045: <==uncertain_firing== 50224 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #51792: <==uncertain_firing== 26381 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56583: <==negation-removal== 53270 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #64155: <==negation-removal== 73019 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #65158: <==negation-removal== 55383 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #66534: <==uncertain_firing== 37066 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #68841: <==uncertain_firing== 53270 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #79883: <==negation-removal== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #81811: <==uncertain_firing== 91484 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #87445: <==negation-removal== 91484 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #15719: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #24745: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #36784: <==closure== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #39587: <==closure== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #48205: <==closure== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #61454: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #65817: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #81814: <==closure== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #13479: <==negation-removal== 81814 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #21248: <==uncertain_firing== 36784 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #21993: <==negation-removal== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #22610: <==negation-removal== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #25428: <==uncertain_firing== 39587 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25978: <==negation-removal== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #41196: <==uncertain_firing== 61454 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #45598: <==uncertain_firing== 65817 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #48512: <==uncertain_firing== 48205 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #55916: <==uncertain_firing== 24745 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #58389: <==uncertain_firing== 15719 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #61953: <==negation-removal== 48205 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #63269: <==negation-removal== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #74572: <==uncertain_firing== 81814 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #82213: <==negation-removal== 36784 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92108: <==negation-removal== 39587 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l3)
                           (Bb_secret_b))
        :effect (and
                    ; #38085: <==closure== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #51610: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #59281: <==closure== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #64253: <==closure== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #71426: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #82304: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #90491: <==closure== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #92040: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #10555: <==uncertain_firing== 92040 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #12308: <==negation-removal== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #20517: <==negation-removal== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #26502: <==uncertain_firing== 82304 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #33336: <==negation-removal== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #36368: <==uncertain_firing== 38085 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #36595: <==negation-removal== 38085 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #46650: <==uncertain_firing== 64253 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #50132: <==uncertain_firing== 59281 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #55965: <==negation-removal== 90491 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #57050: <==negation-removal== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #62449: <==negation-removal== 59281 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #64871: <==negation-removal== 64253 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #69383: <==uncertain_firing== 90491 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #76483: <==uncertain_firing== 71426 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #91156: <==uncertain_firing== 51610 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (initialized)
                           (Bb_secret_c)
                           (at_b_l1)
                           (Pb_secret_c))
        :effect (and
                    ; #42483: <==closure== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #54209: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74104: <==closure== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #80044: <==closure== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #80790: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #84258: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #89674: <==closure== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #90356: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #10256: <==uncertain_firing== 84258 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #14648: <==uncertain_firing== 90356 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #18167: <==negation-removal== 74104 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #26691: <==negation-removal== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #32179: <==negation-removal== 89674 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #41090: <==negation-removal== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #52614: <==negation-removal== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #71398: <==negation-removal== 80044 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #73220: <==uncertain_firing== 80044 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #75871: <==uncertain_firing== 54209 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76639: <==uncertain_firing== 89674 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #80631: <==negation-removal== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #81226: <==uncertain_firing== 74104 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #86664: <==negation-removal== 42483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #86790: <==uncertain_firing== 42483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #87748: <==uncertain_firing== 80790 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #15924: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #16721: <==closure== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #25718: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33481: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #37692: <==closure== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #63984: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #77793: <==closure== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #80918: <==closure== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #19602: <==negation-removal== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25092: <==uncertain_firing== 33481 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26307: <==negation-removal== 80918 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #30037: <==uncertain_firing== 63984 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #30641: <==uncertain_firing== 77793 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #32987: <==uncertain_firing== 15924 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #40674: <==negation-removal== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #50394: <==negation-removal== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #53316: <==uncertain_firing== 37692 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56439: <==uncertain_firing== 80918 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #61727: <==negation-removal== 77793 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #62286: <==uncertain_firing== 25718 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #82385: <==negation-removal== 16721 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #83873: <==uncertain_firing== 16721 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85957: <==negation-removal== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #86645: <==negation-removal== 37692 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #17475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #42989: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #44616: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #51808: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #64462: <==closure== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #65147: <==closure== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #85462: <==closure== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #88866: <==closure== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #11140: <==uncertain_firing== 85462 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #16999: <==uncertain_firing== 88866 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #22063: <==negation-removal== 64462 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #24415: <==uncertain_firing== 44616 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29989: <==negation-removal== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #38916: <==uncertain_firing== 51808 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #41543: <==negation-removal== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #42818: <==negation-removal== 65147 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #58501: <==negation-removal== 88866 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #60817: <==uncertain_firing== 64462 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #61195: <==uncertain_firing== 42989 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #65637: <==negation-removal== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #74771: <==uncertain_firing== 65147 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79801: <==negation-removal== 85462 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #89357: <==uncertain_firing== 17475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #91426: <==negation-removal== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #12301: <==closure== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #19883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #33293: <==closure== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #36498: <==closure== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #52901: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #76054: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #76286: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #84881: <==closure== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #19154: <==uncertain_firing== 12301 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #22521: <==negation-removal== 12301 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25981: <==negation-removal== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #28446: <==negation-removal== 36498 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #29351: <==uncertain_firing== 76054 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #31177: <==uncertain_firing== 36498 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #31720: <==negation-removal== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33699: <==uncertain_firing== 84881 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #34237: <==negation-removal== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36833: <==negation-removal== 33293 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #63271: <==uncertain_firing== 52901 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #70434: <==negation-removal== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #72909: <==uncertain_firing== 76286 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75929: <==uncertain_firing== 19883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #80923: <==uncertain_firing== 33293 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #83443: <==negation-removal== 84881 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l2))
        :effect (and
                    ; #11794: <==closure== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #33034: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #39329: <==closure== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #44472: <==closure== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #56994: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #67604: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #72165: <==closure== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #74280: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #10677: <==negation-removal== 72165 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #12884: <==negation-removal== 44472 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #13984: <==negation-removal== 11794 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #27405: <==negation-removal== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #34690: <==negation-removal== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #41211: <==uncertain_firing== 44472 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #43713: <==negation-removal== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #47914: <==uncertain_firing== 33034 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #55197: <==uncertain_firing== 72165 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #73696: <==uncertain_firing== 56994 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #77585: <==uncertain_firing== 39329 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #78982: <==negation-removal== 39329 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #83829: <==uncertain_firing== 74280 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #86344: <==negation-removal== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #89593: <==uncertain_firing== 67604 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #90978: <==uncertain_firing== 11794 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #13151: <==closure== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14057: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #24243: <==closure== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #32451: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #38547: <==closure== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #80832: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #83526: <==closure== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #84919: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #14346: <==uncertain_firing== 80832 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14404: <==uncertain_firing== 83526 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #17077: <==uncertain_firing== 32451 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #20196: <==negation-removal== 38547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #20322: <==negation-removal== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #24007: <==negation-removal== 24243 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #51379: <==uncertain_firing== 13151 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #53414: <==negation-removal== 13151 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #54528: <==negation-removal== 83526 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #56679: <==negation-removal== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #64859: <==uncertain_firing== 38547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #75888: <==uncertain_firing== 24243 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #77885: <==uncertain_firing== 14057 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #78707: <==uncertain_firing== 84919 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82889: <==negation-removal== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #84370: <==negation-removal== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #19215: <==closure== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #39085: <==closure== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #40458: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46447: <==closure== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #74108: <==closure== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79711: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #82968: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #91721: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #11164: <==uncertain_firing== 40458 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20795: <==uncertain_firing== 46447 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #21993: <==uncertain_firing== 91721 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #23268: <==uncertain_firing== 74108 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25252: <==negation-removal== 74108 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #25404: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #29869: <==negation-removal== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #32488: <==uncertain_firing== 19215 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #38565: <==negation-removal== 46447 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #53859: <==negation-removal== 39085 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #63648: <==negation-removal== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70603: <==uncertain_firing== 39085 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #71485: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #72957: <==negation-removal== 19215 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #79526: <==negation-removal== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #99351: <==uncertain_firing== 79711 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #29989: <==closure== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30964: <==closure== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #32089: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #38191: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46356: <==closure== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #74779: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84048: <==closure== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #85050: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #12715: <==uncertain_firing== 85050 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #14076: <==negation-removal== 30964 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #17434: <==negation-removal== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #25634: <==uncertain_firing== 32089 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #31668: <==negation-removal== 84048 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #35482: <==negation-removal== 46356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #42105: <==uncertain_firing== 29989 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #43161: <==uncertain_firing== 84048 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #43391: <==uncertain_firing== 74779 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #50482: <==negation-removal== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #51088: <==uncertain_firing== 30964 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #51865: <==negation-removal== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #65665: <==negation-removal== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #89676: <==negation-removal== 29989 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #90581: <==uncertain_firing== 46356 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #91493: <==uncertain_firing== 38191 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #17992: <==closure== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #21506: <==closure== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #25851: <==closure== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #72118: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #79112: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86271: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #86330: <==closure== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #91932: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #19091: <==negation-removal== 17992 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23619: <==negation-removal== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26894: <==uncertain_firing== 25851 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #30395: <==negation-removal== 21506 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #30816: <==uncertain_firing== 79112 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #43361: <==negation-removal== 86330 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45250: <==uncertain_firing== 21506 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #48718: <==uncertain_firing== 86271 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #53726: <==uncertain_firing== 86330 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #54409: <==uncertain_firing== 91932 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #73143: <==uncertain_firing== 17992 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83161: <==negation-removal== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #83221: <==negation-removal== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #83848: <==negation-removal== 25851 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #85391: <==negation-removal== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #92437: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #26381: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #29869: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #37066: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #50224: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #53270: <==closure== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #55383: <==closure== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #73019: <==closure== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #91484: <==closure== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #16761: <==uncertain_firing== 29869 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19776: <==negation-removal== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #26566: <==uncertain_firing== 73019 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #28696: <==uncertain_firing== 55383 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #34334: <==negation-removal== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #41780: <==negation-removal== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #45045: <==uncertain_firing== 50224 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #51792: <==uncertain_firing== 26381 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56583: <==negation-removal== 53270 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #64155: <==negation-removal== 73019 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #65158: <==negation-removal== 55383 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #66534: <==uncertain_firing== 37066 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #68841: <==uncertain_firing== 53270 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #79883: <==negation-removal== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #81811: <==uncertain_firing== 91484 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #87445: <==negation-removal== 91484 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #15719: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #24745: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #36784: <==closure== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #39587: <==closure== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #48205: <==closure== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #61454: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #65817: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #81814: <==closure== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #13479: <==negation-removal== 81814 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #21248: <==uncertain_firing== 36784 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #21993: <==negation-removal== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #22610: <==negation-removal== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #25428: <==uncertain_firing== 39587 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25978: <==negation-removal== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #41196: <==uncertain_firing== 61454 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #45598: <==uncertain_firing== 65817 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #48512: <==uncertain_firing== 48205 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #55916: <==uncertain_firing== 24745 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #58389: <==uncertain_firing== 15719 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #61953: <==negation-removal== 48205 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #63269: <==negation-removal== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #74572: <==uncertain_firing== 81814 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #82213: <==negation-removal== 36784 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92108: <==negation-removal== 39587 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #38085: <==closure== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #51610: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #59281: <==closure== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #64253: <==closure== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #71426: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #82304: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #90491: <==closure== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #92040: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #10555: <==uncertain_firing== 92040 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #12308: <==negation-removal== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #20517: <==negation-removal== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #26502: <==uncertain_firing== 82304 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #33336: <==negation-removal== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #36368: <==uncertain_firing== 38085 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #36595: <==negation-removal== 38085 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #46650: <==uncertain_firing== 64253 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #50132: <==uncertain_firing== 59281 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #55965: <==negation-removal== 90491 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #57050: <==negation-removal== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #62449: <==negation-removal== 59281 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #64871: <==negation-removal== 64253 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #69383: <==uncertain_firing== 90491 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #76483: <==uncertain_firing== 71426 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #91156: <==uncertain_firing== 51610 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (initialized)
                           (Pc_secret_c)
                           (at_c_l1)
                           (Bc_secret_c))
        :effect (and
                    ; #42483: <==closure== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #54209: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74104: <==closure== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #80044: <==closure== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #80790: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #84258: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #89674: <==closure== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #90356: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #10256: <==uncertain_firing== 84258 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #14648: <==uncertain_firing== 90356 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #18167: <==negation-removal== 74104 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #26691: <==negation-removal== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #32179: <==negation-removal== 89674 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #41090: <==negation-removal== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #52614: <==negation-removal== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #71398: <==negation-removal== 80044 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #73220: <==uncertain_firing== 80044 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #75871: <==uncertain_firing== 54209 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76639: <==uncertain_firing== 89674 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #80631: <==negation-removal== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #81226: <==uncertain_firing== 74104 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #86664: <==negation-removal== 42483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #86790: <==uncertain_firing== 42483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #87748: <==uncertain_firing== 80790 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (initialized)
                           (Pc_secret_c)
                           (at_c_l2)
                           (Bc_secret_c))
        :effect (and
                    ; #15924: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #16721: <==closure== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #25718: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33481: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #37692: <==closure== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #63984: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #77793: <==closure== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #80918: <==closure== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #19602: <==negation-removal== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25092: <==uncertain_firing== 33481 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26307: <==negation-removal== 80918 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #30037: <==uncertain_firing== 63984 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #30641: <==uncertain_firing== 77793 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #32987: <==uncertain_firing== 15924 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #40674: <==negation-removal== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #50394: <==negation-removal== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #53316: <==uncertain_firing== 37692 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56439: <==uncertain_firing== 80918 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #61727: <==negation-removal== 77793 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #62286: <==uncertain_firing== 25718 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #82385: <==negation-removal== 16721 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #83873: <==uncertain_firing== 16721 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85957: <==negation-removal== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #86645: <==negation-removal== 37692 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #17475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #42989: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #44616: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #51808: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #64462: <==closure== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #65147: <==closure== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #85462: <==closure== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #88866: <==closure== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #11140: <==uncertain_firing== 85462 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #16999: <==uncertain_firing== 88866 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #22063: <==negation-removal== 64462 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #24415: <==uncertain_firing== 44616 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29989: <==negation-removal== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #38916: <==uncertain_firing== 51808 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #41543: <==negation-removal== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #42818: <==negation-removal== 65147 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #58501: <==negation-removal== 88866 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #60817: <==uncertain_firing== 64462 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #61195: <==uncertain_firing== 42989 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #65637: <==negation-removal== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #74771: <==uncertain_firing== 65147 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79801: <==negation-removal== 85462 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #89357: <==uncertain_firing== 17475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #91426: <==negation-removal== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (initialized)
                           (Bc_secret_d)
                           (at_c_l1)
                           (Pc_secret_d))
        :effect (and
                    ; #12301: <==closure== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #19883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #33293: <==closure== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #36498: <==closure== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #52901: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #76054: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #76286: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #84881: <==closure== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #19154: <==uncertain_firing== 12301 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #22521: <==negation-removal== 12301 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25981: <==negation-removal== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #28446: <==negation-removal== 36498 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #29351: <==uncertain_firing== 76054 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #31177: <==uncertain_firing== 36498 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #31720: <==negation-removal== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33699: <==uncertain_firing== 84881 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #34237: <==negation-removal== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36833: <==negation-removal== 33293 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #63271: <==uncertain_firing== 52901 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #70434: <==negation-removal== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #72909: <==uncertain_firing== 76286 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75929: <==uncertain_firing== 19883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #80923: <==uncertain_firing== 33293 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #83443: <==negation-removal== 84881 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (initialized)
                           (Bc_secret_d)
                           (at_c_l2)
                           (Pc_secret_d))
        :effect (and
                    ; #11794: <==closure== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #33034: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #39329: <==closure== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #44472: <==closure== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #56994: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #67604: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #72165: <==closure== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #74280: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #10677: <==negation-removal== 72165 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #12884: <==negation-removal== 44472 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #13984: <==negation-removal== 11794 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #27405: <==negation-removal== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #34690: <==negation-removal== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #41211: <==uncertain_firing== 44472 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #43713: <==negation-removal== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #47914: <==uncertain_firing== 33034 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #55197: <==uncertain_firing== 72165 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #73696: <==uncertain_firing== 56994 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #77585: <==uncertain_firing== 39329 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #78982: <==negation-removal== 39329 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #83829: <==uncertain_firing== 74280 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #86344: <==negation-removal== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #89593: <==uncertain_firing== 67604 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #90978: <==uncertain_firing== 11794 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #13151: <==closure== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14057: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #24243: <==closure== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #32451: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #38547: <==closure== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #80832: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #83526: <==closure== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #84919: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #14346: <==uncertain_firing== 80832 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14404: <==uncertain_firing== 83526 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #17077: <==uncertain_firing== 32451 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #20196: <==negation-removal== 38547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #20322: <==negation-removal== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #24007: <==negation-removal== 24243 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #51379: <==uncertain_firing== 13151 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #53414: <==negation-removal== 13151 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #54528: <==negation-removal== 83526 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #56679: <==negation-removal== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #64859: <==uncertain_firing== 38547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #75888: <==uncertain_firing== 24243 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #77885: <==uncertain_firing== 14057 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #78707: <==uncertain_firing== 84919 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82889: <==negation-removal== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #84370: <==negation-removal== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (at_d_l1)
                           (Pd_secret_a))
        :effect (and
                    ; #19215: <==closure== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #39085: <==closure== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #40458: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46447: <==closure== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #74108: <==closure== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79711: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #82968: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #91721: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #11164: <==uncertain_firing== 40458 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20795: <==uncertain_firing== 46447 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #21993: <==uncertain_firing== 91721 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #23268: <==uncertain_firing== 74108 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25252: <==negation-removal== 74108 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #25404: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #29869: <==negation-removal== 40458 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #32488: <==uncertain_firing== 19215 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #38565: <==negation-removal== 46447 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #53859: <==negation-removal== 39085 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #63648: <==negation-removal== 79711 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70603: <==uncertain_firing== 39085 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #71485: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #72957: <==negation-removal== 19215 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #79526: <==negation-removal== 91721 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #99351: <==uncertain_firing== 79711 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #29989: <==closure== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30964: <==closure== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #32089: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #38191: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46356: <==closure== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #74779: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84048: <==closure== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #85050: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #12715: <==uncertain_firing== 85050 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #14076: <==negation-removal== 30964 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #17434: <==negation-removal== 32089 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #25634: <==uncertain_firing== 32089 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #31668: <==negation-removal== 84048 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #35482: <==negation-removal== 46356 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #42105: <==uncertain_firing== 29989 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #43161: <==uncertain_firing== 84048 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #43391: <==uncertain_firing== 74779 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #50482: <==negation-removal== 85050 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #51088: <==uncertain_firing== 30964 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #51865: <==negation-removal== 38191 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #65665: <==negation-removal== 74779 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #89676: <==negation-removal== 29989 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #90581: <==uncertain_firing== 46356 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #91493: <==uncertain_firing== 38191 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (at_d_l3)
                           (Pd_secret_a))
        :effect (and
                    ; #17992: <==closure== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #21506: <==closure== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #25851: <==closure== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #72118: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #79112: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86271: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #86330: <==closure== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #91932: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #19091: <==negation-removal== 17992 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23619: <==negation-removal== 91932 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #26894: <==uncertain_firing== 25851 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #30395: <==negation-removal== 21506 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #30816: <==uncertain_firing== 79112 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #43361: <==negation-removal== 86330 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45250: <==uncertain_firing== 21506 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #48718: <==uncertain_firing== 86271 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #53726: <==uncertain_firing== 86330 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #54409: <==uncertain_firing== 91932 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #73143: <==uncertain_firing== 17992 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83161: <==negation-removal== 79112 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #83221: <==negation-removal== 72118 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #83848: <==negation-removal== 25851 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #85391: <==negation-removal== 86271 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #92437: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #26381: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #29869: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #37066: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #50224: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #53270: <==closure== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #55383: <==closure== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #73019: <==closure== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #91484: <==closure== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #16761: <==uncertain_firing== 29869 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19776: <==negation-removal== 29869 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #26566: <==uncertain_firing== 73019 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #28696: <==uncertain_firing== 55383 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #34334: <==negation-removal== 37066 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #41780: <==negation-removal== 50224 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #45045: <==uncertain_firing== 50224 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #51792: <==uncertain_firing== 26381 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56583: <==negation-removal== 53270 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #64155: <==negation-removal== 73019 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #65158: <==negation-removal== 55383 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #66534: <==uncertain_firing== 37066 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #68841: <==uncertain_firing== 53270 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #79883: <==negation-removal== 26381 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #81811: <==uncertain_firing== 91484 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #87445: <==negation-removal== 91484 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (Pd_secret_b)
                           (at_d_l2))
        :effect (and
                    ; #15719: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #24745: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Bd_secret_b))

                    ; #36784: <==closure== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #39587: <==closure== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #48205: <==closure== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #61454: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #65817: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #81814: <==closure== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (Pd_secret_b))

                    ; #13479: <==negation-removal== 81814 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #21248: <==uncertain_firing== 36784 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #21993: <==negation-removal== 61454 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #22610: <==negation-removal== 15719 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #25428: <==uncertain_firing== 39587 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25978: <==negation-removal== 24745 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #41196: <==uncertain_firing== 61454 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #45598: <==uncertain_firing== 65817 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #48512: <==uncertain_firing== 48205 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #55916: <==uncertain_firing== 24745 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #58389: <==uncertain_firing== 15719 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #61953: <==negation-removal== 48205 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #63269: <==negation-removal== 65817 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #74572: <==uncertain_firing== 81814 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #82213: <==negation-removal== 36784 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92108: <==negation-removal== 39587 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #38085: <==closure== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #51610: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #59281: <==closure== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #64253: <==closure== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #71426: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #82304: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #90491: <==closure== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #92040: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #10555: <==uncertain_firing== 92040 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #12308: <==negation-removal== 92040 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #20517: <==negation-removal== 51610 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #26502: <==uncertain_firing== 82304 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #33336: <==negation-removal== 71426 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #36368: <==uncertain_firing== 38085 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #36595: <==negation-removal== 38085 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #46650: <==uncertain_firing== 64253 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #50132: <==uncertain_firing== 59281 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #55965: <==negation-removal== 90491 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #57050: <==negation-removal== 82304 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #62449: <==negation-removal== 59281 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #64871: <==negation-removal== 64253 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #69383: <==uncertain_firing== 90491 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #76483: <==uncertain_firing== 71426 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #91156: <==uncertain_firing== 51610 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (initialized)
                           (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c))
        :effect (and
                    ; #42483: <==closure== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #54209: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74104: <==closure== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #80044: <==closure== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #80790: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #84258: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #89674: <==closure== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #90356: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #10256: <==uncertain_firing== 84258 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #14648: <==uncertain_firing== 90356 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #18167: <==negation-removal== 74104 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #26691: <==negation-removal== 90356 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #32179: <==negation-removal== 89674 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #41090: <==negation-removal== 84258 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #52614: <==negation-removal== 80790 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #71398: <==negation-removal== 80044 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #73220: <==uncertain_firing== 80044 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #75871: <==uncertain_firing== 54209 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76639: <==uncertain_firing== 89674 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #80631: <==negation-removal== 54209 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #81226: <==uncertain_firing== 74104 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #86664: <==negation-removal== 42483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #86790: <==uncertain_firing== 42483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #87748: <==uncertain_firing== 80790 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l2))
        :effect (and
                    ; #15924: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #16721: <==closure== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #25718: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33481: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #37692: <==closure== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #63984: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #77793: <==closure== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #80918: <==closure== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #19602: <==negation-removal== 33481 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #25092: <==uncertain_firing== 33481 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26307: <==negation-removal== 80918 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #30037: <==uncertain_firing== 63984 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #30641: <==uncertain_firing== 77793 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #32987: <==uncertain_firing== 15924 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #40674: <==negation-removal== 25718 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #50394: <==negation-removal== 63984 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #53316: <==uncertain_firing== 37692 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56439: <==uncertain_firing== 80918 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #61727: <==negation-removal== 77793 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #62286: <==uncertain_firing== 25718 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #82385: <==negation-removal== 16721 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #83873: <==uncertain_firing== 16721 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85957: <==negation-removal== 15924 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #86645: <==negation-removal== 37692 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (initialized)
                           (at_d_l3)
                           (Pd_secret_c)
                           (Bd_secret_c))
        :effect (and
                    ; #17475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #42989: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #44616: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #51808: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #64462: <==closure== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #65147: <==closure== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #85462: <==closure== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #88866: <==closure== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #11140: <==uncertain_firing== 85462 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #16999: <==uncertain_firing== 88866 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #22063: <==negation-removal== 64462 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #24415: <==uncertain_firing== 44616 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29989: <==negation-removal== 44616 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #38916: <==uncertain_firing== 51808 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #41543: <==negation-removal== 51808 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #42818: <==negation-removal== 65147 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #58501: <==negation-removal== 88866 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #60817: <==uncertain_firing== 64462 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #61195: <==uncertain_firing== 42989 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #65637: <==negation-removal== 17475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #74771: <==uncertain_firing== 65147 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79801: <==negation-removal== 85462 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #89357: <==uncertain_firing== 17475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #91426: <==negation-removal== 42989 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #12301: <==closure== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #19883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #33293: <==closure== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #36498: <==closure== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #52901: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #76054: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #76286: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #84881: <==closure== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #19154: <==uncertain_firing== 12301 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #22521: <==negation-removal== 12301 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #25981: <==negation-removal== 76054 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #28446: <==negation-removal== 36498 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #29351: <==uncertain_firing== 76054 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #31177: <==uncertain_firing== 36498 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #31720: <==negation-removal== 19883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33699: <==uncertain_firing== 84881 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #34237: <==negation-removal== 52901 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36833: <==negation-removal== 33293 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #63271: <==uncertain_firing== 52901 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #70434: <==negation-removal== 76286 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #72909: <==uncertain_firing== 76286 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75929: <==uncertain_firing== 19883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #80923: <==uncertain_firing== 33293 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #83443: <==negation-removal== 84881 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (initialized)
                           (at_d_l2))
        :effect (and
                    ; #11794: <==closure== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #33034: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #39329: <==closure== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #44472: <==closure== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #56994: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #67604: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #72165: <==closure== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #74280: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #10677: <==negation-removal== 72165 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #12884: <==negation-removal== 44472 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #13984: <==negation-removal== 11794 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #27405: <==negation-removal== 33034 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #34690: <==negation-removal== 67604 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #41211: <==uncertain_firing== 44472 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #43713: <==negation-removal== 56994 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #47914: <==uncertain_firing== 33034 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #55197: <==uncertain_firing== 72165 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #73696: <==uncertain_firing== 56994 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #77585: <==uncertain_firing== 39329 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #78982: <==negation-removal== 39329 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #83829: <==uncertain_firing== 74280 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #86344: <==negation-removal== 74280 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #89593: <==uncertain_firing== 67604 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #90978: <==uncertain_firing== 11794 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l3)
                           (initialized))
        :effect (and
                    ; #13151: <==closure== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14057: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #24243: <==closure== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #32451: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #38547: <==closure== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #80832: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #83526: <==closure== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #84919: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #14346: <==uncertain_firing== 80832 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14404: <==uncertain_firing== 83526 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #17077: <==uncertain_firing== 32451 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #20196: <==negation-removal== 38547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #20322: <==negation-removal== 80832 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #24007: <==negation-removal== 24243 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #51379: <==uncertain_firing== 13151 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #53414: <==negation-removal== 13151 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #54528: <==negation-removal== 83526 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #56679: <==negation-removal== 32451 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #64859: <==uncertain_firing== 38547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #75888: <==uncertain_firing== 24243 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #77885: <==uncertain_firing== 14057 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #78707: <==uncertain_firing== 84919 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #82889: <==negation-removal== 14057 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #84370: <==negation-removal== 84919 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

)