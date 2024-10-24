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
                           (Ba_secret_a)
                           (at_a_l1)
                           (Pa_secret_a))
        :effect (and
                    ; #16100: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #16201: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #17864: <==closure== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #23130: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #26963: <==closure== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #49034: <==closure== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #87439: <==closure== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #92143: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #10955: <==negation-removal== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #11781: <==negation-removal== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #22570: <==uncertain_firing== 92143 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #31794: <==uncertain_firing== 16201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #35647: <==uncertain_firing== 16100 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #46078: <==negation-removal== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #62064: <==negation-removal== 49034 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #64234: <==uncertain_firing== 87439 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #69486: <==negation-removal== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #72883: <==uncertain_firing== 17864 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #72911: <==uncertain_firing== 23130 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #79150: <==uncertain_firing== 49034 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #79662: <==negation-removal== 17864 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #83526: <==negation-removal== 26963 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #84534: <==negation-removal== 87439 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86434: <==uncertain_firing== 26963 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #10075: <==closure== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #13765: <==closure== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #34902: <==closure== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #44533: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #60288: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #73950: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #75504: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #82339: <==closure== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #13050: <==negation-removal== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #20405: <==uncertain_firing== 10075 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #21908: <==negation-removal== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26891: <==negation-removal== 34902 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #27303: <==negation-removal== 10075 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #27734: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #33313: <==uncertain_firing== 82339 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #33446: <==uncertain_firing== 75504 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #36972: <==negation-removal== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #42701: <==uncertain_firing== 13765 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47359: <==uncertain_firing== 34902 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #63974: <==uncertain_firing== 60288 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66497: <==negation-removal== 13765 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #73769: <==uncertain_firing== 44533 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #82011: <==negation-removal== 82339 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #92153: <==negation-removal== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #30115: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #32196: <==closure== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #35579: <==closure== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #47236: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68203: <==closure== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #70540: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #86649: <==closure== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #89169: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #14909: <==negation-removal== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #24307: <==negation-removal== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #24847: <==uncertain_firing== 47236 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #26673: <==negation-removal== 35579 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #29938: <==negation-removal== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #40473: <==uncertain_firing== 70540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #46110: <==uncertain_firing== 32196 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47551: <==uncertain_firing== 86649 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #48152: <==negation-removal== 32196 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #51504: <==negation-removal== 86649 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #60442: <==uncertain_firing== 89169 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #71119: <==uncertain_firing== 35579 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #73133: <==uncertain_firing== 68203 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #74423: <==negation-removal== 68203 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #87377: <==uncertain_firing== 30115 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89462: <==negation-removal== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (Ba_secret_b)
                           (initialized)
                           (at_a_l1)
                           (Pa_secret_b))
        :effect (and
                    ; #19802: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26311: <==closure== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #26839: <==closure== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39225: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #46127: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #46500: <==closure== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #48830: <==closure== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #58694: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #17665: <==negation-removal== 26839 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #20752: <==negation-removal== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #22180: <==uncertain_firing== 26311 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #27321: <==uncertain_firing== 48830 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #29646: <==negation-removal== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #32450: <==negation-removal== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #37668: <==negation-removal== 26311 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #46939: <==negation-removal== 46500 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #49870: <==uncertain_firing== 46500 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #55284: <==uncertain_firing== 46127 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #63490: <==negation-removal== 48830 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #72711: <==uncertain_firing== 39225 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #76621: <==uncertain_firing== 58694 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #82702: <==uncertain_firing== 26839 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #87311: <==uncertain_firing== 19802 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #91197: <==negation-removal== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #12968: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #14335: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #45107: <==closure== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #58336: <==closure== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65155: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74963: <==closure== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87754: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #90731: <==closure== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #10820: <==negation-removal== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #14178: <==negation-removal== 58336 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #25971: <==negation-removal== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #27525: <==uncertain_firing== 12968 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27963: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #30299: <==uncertain_firing== 87754 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #41453: <==uncertain_firing== 65155 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #46900: <==negation-removal== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #49233: <==negation-removal== 90731 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #56477: <==uncertain_firing== 58336 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #58179: <==uncertain_firing== 90731 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #62579: <==uncertain_firing== 74963 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #78385: <==negation-removal== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #79862: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #80297: <==negation-removal== 74963 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #84077: <==uncertain_firing== 14335 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #15133: <==closure== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32409: <==closure== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #46832: <==closure== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #49075: <==closure== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #49626: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #66437: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80693: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #88584: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #10782: <==uncertain_firing== 88584 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #16409: <==uncertain_firing== 49075 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #18308: <==uncertain_firing== 46832 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #20896: <==uncertain_firing== 15133 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29302: <==negation-removal== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33944: <==negation-removal== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #38846: <==negation-removal== 15133 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #42398: <==uncertain_firing== 66437 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #42942: <==negation-removal== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #50751: <==negation-removal== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #59096: <==negation-removal== 46832 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #60300: <==uncertain_firing== 80693 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #60706: <==uncertain_firing== 32409 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78163: <==negation-removal== 49075 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #90258: <==negation-removal== 32409 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #97532: <==uncertain_firing== 49626 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #24431: <==closure== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25073: <==closure== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #33177: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #55150: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #68219: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #70644: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #72633: <==closure== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #91157: <==closure== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #17207: <==uncertain_firing== 25073 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #27973: <==negation-removal== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #30496: <==uncertain_firing== 72633 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #38362: <==uncertain_firing== 55150 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #40217: <==uncertain_firing== 24431 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #41249: <==negation-removal== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #45457: <==negation-removal== 91157 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #46120: <==uncertain_firing== 70644 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #47378: <==negation-removal== 72633 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #48361: <==uncertain_firing== 68219 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #57222: <==uncertain_firing== 33177 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #63373: <==negation-removal== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #71895: <==negation-removal== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #90776: <==uncertain_firing== 91157 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #90919: <==negation-removal== 25073 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #91803: <==negation-removal== 24431 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (at_a_l2)
                           (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #27429: <==closure== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #34714: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #60956: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #62087: <==closure== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70237: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #72996: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #95464: <==closure== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #98313: <==closure== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #14572: <==negation-removal== 98313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #16316: <==uncertain_firing== 34714 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #20574: <==uncertain_firing== 98313 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #28811: <==uncertain_firing== 95464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #30032: <==negation-removal== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #35153: <==negation-removal== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #40047: <==negation-removal== 95464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #42055: <==uncertain_firing== 60956 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #42910: <==negation-removal== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47652: <==uncertain_firing== 27429 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #55686: <==uncertain_firing== 72996 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #65070: <==uncertain_firing== 70237 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #72342: <==negation-removal== 62087 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #82259: <==negation-removal== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #82854: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #87372: <==negation-removal== 27429 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #21103: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #47780: <==closure== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #57784: <==closure== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61867: <==closure== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #64980: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75577: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #82444: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83710: <==closure== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #28909: <==uncertain_firing== 75577 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30063: <==negation-removal== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #30612: <==uncertain_firing== 83710 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #32761: <==uncertain_firing== 21103 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35405: <==negation-removal== 47780 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #38847: <==negation-removal== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #39824: <==uncertain_firing== 47780 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #40330: <==uncertain_firing== 57784 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #44068: <==negation-removal== 57784 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #44586: <==negation-removal== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #55454: <==uncertain_firing== 64980 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #61464: <==uncertain_firing== 82444 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #67481: <==uncertain_firing== 61867 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #72443: <==negation-removal== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #80602: <==negation-removal== 83710 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #94224: <==negation-removal== 61867 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d))
        :effect (and
                    ; #21197: <==closure== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #38360: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #45046: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47554: <==closure== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62615: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #66483: <==closure== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #69946: <==closure== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #79936: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13334: <==uncertain_firing== 62615 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36322: <==uncertain_firing== 79936 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #36671: <==negation-removal== 66483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #46558: <==uncertain_firing== 21197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #46953: <==negation-removal== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #48279: <==negation-removal== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #56386: <==negation-removal== 47554 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #64673: <==negation-removal== 69946 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #65597: <==uncertain_firing== 69946 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #70802: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #72710: <==negation-removal== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #75590: <==negation-removal== 21197 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #82212: <==uncertain_firing== 45046 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #83400: <==negation-removal== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #86090: <==uncertain_firing== 47554 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #87154: <==uncertain_firing== 38360 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #13160: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13484: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #48162: <==closure== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #50133: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #65939: <==closure== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #71534: <==closure== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71799: <==closure== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #87489: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #17453: <==uncertain_firing== 13160 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #25461: <==negation-removal== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #27677: <==uncertain_firing== 50133 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #39207: <==uncertain_firing== 13484 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #53849: <==negation-removal== 65939 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #55551: <==negation-removal== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #56245: <==negation-removal== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #57530: <==negation-removal== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #62476: <==uncertain_firing== 71534 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #63429: <==negation-removal== 71799 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #64613: <==uncertain_firing== 48162 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #70478: <==negation-removal== 71534 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #73427: <==uncertain_firing== 65939 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #84944: <==uncertain_firing== 71799 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #90515: <==negation-removal== 48162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #91522: <==uncertain_firing== 87489 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #34898: <==closure== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #41138: <==closure== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #44109: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #53335: <==closure== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #53380: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #64142: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #68111: <==closure== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #85192: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #15259: <==negation-removal== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #20893: <==uncertain_firing== 85192 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #27031: <==negation-removal== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #36995: <==uncertain_firing== 41138 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #48074: <==negation-removal== 34898 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #50771: <==uncertain_firing== 68111 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58109: <==negation-removal== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #64255: <==negation-removal== 68111 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #68763: <==negation-removal== 53335 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #69415: <==uncertain_firing== 64142 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #70602: <==negation-removal== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #76889: <==uncertain_firing== 53380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #79628: <==uncertain_firing== 34898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #84269: <==uncertain_firing== 44109 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #87011: <==uncertain_firing== 53335 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #99758: <==negation-removal== 41138 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #16100: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #16201: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #17864: <==closure== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #23130: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #26963: <==closure== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #49034: <==closure== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #87439: <==closure== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #92143: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #10955: <==negation-removal== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #11781: <==negation-removal== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #22570: <==uncertain_firing== 92143 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #31794: <==uncertain_firing== 16201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #35647: <==uncertain_firing== 16100 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #46078: <==negation-removal== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #62064: <==negation-removal== 49034 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #64234: <==uncertain_firing== 87439 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #69486: <==negation-removal== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #72883: <==uncertain_firing== 17864 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #72911: <==uncertain_firing== 23130 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #79150: <==uncertain_firing== 49034 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #79662: <==negation-removal== 17864 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #83526: <==negation-removal== 26963 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #84534: <==negation-removal== 87439 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86434: <==uncertain_firing== 26963 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l2)
                           (Pb_secret_a))
        :effect (and
                    ; #10075: <==closure== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #13765: <==closure== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #34902: <==closure== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #44533: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #60288: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #73950: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #75504: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #82339: <==closure== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #13050: <==negation-removal== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #20405: <==uncertain_firing== 10075 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #21908: <==negation-removal== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26891: <==negation-removal== 34902 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #27303: <==negation-removal== 10075 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #27734: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #33313: <==uncertain_firing== 82339 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #33446: <==uncertain_firing== 75504 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #36972: <==negation-removal== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #42701: <==uncertain_firing== 13765 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47359: <==uncertain_firing== 34902 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #63974: <==uncertain_firing== 60288 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66497: <==negation-removal== 13765 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #73769: <==uncertain_firing== 44533 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #82011: <==negation-removal== 82339 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #92153: <==negation-removal== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #30115: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #32196: <==closure== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #35579: <==closure== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #47236: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68203: <==closure== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #70540: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #86649: <==closure== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #89169: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #14909: <==negation-removal== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #24307: <==negation-removal== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #24847: <==uncertain_firing== 47236 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #26673: <==negation-removal== 35579 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #29938: <==negation-removal== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #40473: <==uncertain_firing== 70540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #46110: <==uncertain_firing== 32196 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47551: <==uncertain_firing== 86649 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #48152: <==negation-removal== 32196 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #51504: <==negation-removal== 86649 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #60442: <==uncertain_firing== 89169 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #71119: <==uncertain_firing== 35579 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #73133: <==uncertain_firing== 68203 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #74423: <==negation-removal== 68203 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #87377: <==uncertain_firing== 30115 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89462: <==negation-removal== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (Bb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #19802: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26311: <==closure== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #26839: <==closure== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39225: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #46127: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #46500: <==closure== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #48830: <==closure== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #58694: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #17665: <==negation-removal== 26839 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #20752: <==negation-removal== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #22180: <==uncertain_firing== 26311 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #27321: <==uncertain_firing== 48830 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #29646: <==negation-removal== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #32450: <==negation-removal== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #37668: <==negation-removal== 26311 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #46939: <==negation-removal== 46500 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #49870: <==uncertain_firing== 46500 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #55284: <==uncertain_firing== 46127 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #63490: <==negation-removal== 48830 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #72711: <==uncertain_firing== 39225 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #76621: <==uncertain_firing== 58694 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #82702: <==uncertain_firing== 26839 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #87311: <==uncertain_firing== 19802 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #91197: <==negation-removal== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #12968: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #14335: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #45107: <==closure== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #58336: <==closure== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65155: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74963: <==closure== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87754: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #90731: <==closure== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #10820: <==negation-removal== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #14178: <==negation-removal== 58336 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #25971: <==negation-removal== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #27525: <==uncertain_firing== 12968 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27963: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #30299: <==uncertain_firing== 87754 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #41453: <==uncertain_firing== 65155 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #46900: <==negation-removal== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #49233: <==negation-removal== 90731 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #56477: <==uncertain_firing== 58336 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #58179: <==uncertain_firing== 90731 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #62579: <==uncertain_firing== 74963 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #78385: <==negation-removal== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #79862: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #80297: <==negation-removal== 74963 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #84077: <==uncertain_firing== 14335 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (Bb_secret_b)
                           (at_b_l3))
        :effect (and
                    ; #15133: <==closure== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32409: <==closure== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #46832: <==closure== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #49075: <==closure== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #49626: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #66437: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80693: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #88584: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #10782: <==uncertain_firing== 88584 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #16409: <==uncertain_firing== 49075 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #18308: <==uncertain_firing== 46832 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #20896: <==uncertain_firing== 15133 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29302: <==negation-removal== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33944: <==negation-removal== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #38846: <==negation-removal== 15133 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #42398: <==uncertain_firing== 66437 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #42942: <==negation-removal== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #50751: <==negation-removal== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #59096: <==negation-removal== 46832 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #60300: <==uncertain_firing== 80693 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #60706: <==uncertain_firing== 32409 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78163: <==negation-removal== 49075 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #90258: <==negation-removal== 32409 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #97532: <==uncertain_firing== 49626 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #24431: <==closure== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25073: <==closure== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #33177: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #55150: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #68219: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #70644: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #72633: <==closure== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #91157: <==closure== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #17207: <==uncertain_firing== 25073 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #27973: <==negation-removal== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #30496: <==uncertain_firing== 72633 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #38362: <==uncertain_firing== 55150 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #40217: <==uncertain_firing== 24431 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #41249: <==negation-removal== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #45457: <==negation-removal== 91157 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #46120: <==uncertain_firing== 70644 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #47378: <==negation-removal== 72633 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #48361: <==uncertain_firing== 68219 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #57222: <==uncertain_firing== 33177 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #63373: <==negation-removal== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #71895: <==negation-removal== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #90776: <==uncertain_firing== 91157 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #90919: <==negation-removal== 25073 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #91803: <==negation-removal== 24431 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (initialized)
                           (Pb_secret_c)
                           (at_b_l2)
                           (Bb_secret_c))
        :effect (and
                    ; #27429: <==closure== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #34714: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #60956: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #62087: <==closure== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70237: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #72996: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #95464: <==closure== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #98313: <==closure== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #14572: <==negation-removal== 98313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #16316: <==uncertain_firing== 34714 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #20574: <==uncertain_firing== 98313 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #28811: <==uncertain_firing== 95464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #30032: <==negation-removal== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #35153: <==negation-removal== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #40047: <==negation-removal== 95464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #42055: <==uncertain_firing== 60956 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #42910: <==negation-removal== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47652: <==uncertain_firing== 27429 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #55686: <==uncertain_firing== 72996 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #65070: <==uncertain_firing== 70237 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #72342: <==negation-removal== 62087 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #82259: <==negation-removal== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #82854: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #87372: <==negation-removal== 27429 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (Bb_secret_c)
                           (at_b_l3))
        :effect (and
                    ; #21103: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #47780: <==closure== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #57784: <==closure== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61867: <==closure== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #64980: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75577: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #82444: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83710: <==closure== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #28909: <==uncertain_firing== 75577 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30063: <==negation-removal== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #30612: <==uncertain_firing== 83710 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #32761: <==uncertain_firing== 21103 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35405: <==negation-removal== 47780 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #38847: <==negation-removal== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #39824: <==uncertain_firing== 47780 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #40330: <==uncertain_firing== 57784 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #44068: <==negation-removal== 57784 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #44586: <==negation-removal== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #55454: <==uncertain_firing== 64980 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #61464: <==uncertain_firing== 82444 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #67481: <==uncertain_firing== 61867 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #72443: <==negation-removal== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #80602: <==negation-removal== 83710 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #94224: <==negation-removal== 61867 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #21197: <==closure== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #38360: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #45046: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47554: <==closure== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62615: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #66483: <==closure== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #69946: <==closure== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #79936: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13334: <==uncertain_firing== 62615 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36322: <==uncertain_firing== 79936 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #36671: <==negation-removal== 66483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #46558: <==uncertain_firing== 21197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #46953: <==negation-removal== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #48279: <==negation-removal== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #56386: <==negation-removal== 47554 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #64673: <==negation-removal== 69946 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #65597: <==uncertain_firing== 69946 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #70802: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #72710: <==negation-removal== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #75590: <==negation-removal== 21197 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #82212: <==uncertain_firing== 45046 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #83400: <==negation-removal== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #86090: <==uncertain_firing== 47554 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #87154: <==uncertain_firing== 38360 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #13160: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13484: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #48162: <==closure== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #50133: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #65939: <==closure== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #71534: <==closure== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71799: <==closure== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #87489: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #17453: <==uncertain_firing== 13160 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #25461: <==negation-removal== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #27677: <==uncertain_firing== 50133 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #39207: <==uncertain_firing== 13484 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #53849: <==negation-removal== 65939 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #55551: <==negation-removal== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #56245: <==negation-removal== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #57530: <==negation-removal== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #62476: <==uncertain_firing== 71534 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #63429: <==negation-removal== 71799 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #64613: <==uncertain_firing== 48162 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #70478: <==negation-removal== 71534 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #73427: <==uncertain_firing== 65939 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #84944: <==uncertain_firing== 71799 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #90515: <==negation-removal== 48162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #91522: <==uncertain_firing== 87489 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #34898: <==closure== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #41138: <==closure== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #44109: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #53335: <==closure== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #53380: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #64142: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #68111: <==closure== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #85192: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #15259: <==negation-removal== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #20893: <==uncertain_firing== 85192 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #27031: <==negation-removal== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #36995: <==uncertain_firing== 41138 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #48074: <==negation-removal== 34898 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #50771: <==uncertain_firing== 68111 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58109: <==negation-removal== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #64255: <==negation-removal== 68111 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #68763: <==negation-removal== 53335 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #69415: <==uncertain_firing== 64142 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #70602: <==negation-removal== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #76889: <==uncertain_firing== 53380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #79628: <==uncertain_firing== 34898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #84269: <==uncertain_firing== 44109 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #87011: <==uncertain_firing== 53335 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #99758: <==negation-removal== 41138 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #16100: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #16201: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #17864: <==closure== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #23130: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #26963: <==closure== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #49034: <==closure== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #87439: <==closure== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #92143: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #10955: <==negation-removal== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #11781: <==negation-removal== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #22570: <==uncertain_firing== 92143 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #31794: <==uncertain_firing== 16201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #35647: <==uncertain_firing== 16100 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #46078: <==negation-removal== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #62064: <==negation-removal== 49034 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #64234: <==uncertain_firing== 87439 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #69486: <==negation-removal== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #72883: <==uncertain_firing== 17864 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #72911: <==uncertain_firing== 23130 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #79150: <==uncertain_firing== 49034 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #79662: <==negation-removal== 17864 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #83526: <==negation-removal== 26963 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #84534: <==negation-removal== 87439 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86434: <==uncertain_firing== 26963 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #10075: <==closure== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #13765: <==closure== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #34902: <==closure== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #44533: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #60288: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #73950: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #75504: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #82339: <==closure== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #13050: <==negation-removal== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #20405: <==uncertain_firing== 10075 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #21908: <==negation-removal== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26891: <==negation-removal== 34902 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #27303: <==negation-removal== 10075 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #27734: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #33313: <==uncertain_firing== 82339 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #33446: <==uncertain_firing== 75504 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #36972: <==negation-removal== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #42701: <==uncertain_firing== 13765 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47359: <==uncertain_firing== 34902 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #63974: <==uncertain_firing== 60288 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66497: <==negation-removal== 13765 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #73769: <==uncertain_firing== 44533 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #82011: <==negation-removal== 82339 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #92153: <==negation-removal== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (initialized)
                           (Bc_secret_a)
                           (at_c_l3)
                           (Pc_secret_a))
        :effect (and
                    ; #30115: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #32196: <==closure== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #35579: <==closure== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #47236: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68203: <==closure== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #70540: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #86649: <==closure== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #89169: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #14909: <==negation-removal== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #24307: <==negation-removal== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #24847: <==uncertain_firing== 47236 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #26673: <==negation-removal== 35579 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #29938: <==negation-removal== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #40473: <==uncertain_firing== 70540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #46110: <==uncertain_firing== 32196 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47551: <==uncertain_firing== 86649 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #48152: <==negation-removal== 32196 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #51504: <==negation-removal== 86649 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #60442: <==uncertain_firing== 89169 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #71119: <==uncertain_firing== 35579 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #73133: <==uncertain_firing== 68203 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #74423: <==negation-removal== 68203 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #87377: <==uncertain_firing== 30115 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89462: <==negation-removal== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #19802: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26311: <==closure== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #26839: <==closure== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39225: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #46127: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #46500: <==closure== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #48830: <==closure== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #58694: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #17665: <==negation-removal== 26839 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #20752: <==negation-removal== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #22180: <==uncertain_firing== 26311 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #27321: <==uncertain_firing== 48830 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #29646: <==negation-removal== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #32450: <==negation-removal== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #37668: <==negation-removal== 26311 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #46939: <==negation-removal== 46500 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #49870: <==uncertain_firing== 46500 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #55284: <==uncertain_firing== 46127 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #63490: <==negation-removal== 48830 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #72711: <==uncertain_firing== 39225 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #76621: <==uncertain_firing== 58694 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #82702: <==uncertain_firing== 26839 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #87311: <==uncertain_firing== 19802 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #91197: <==negation-removal== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #12968: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #14335: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #45107: <==closure== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #58336: <==closure== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65155: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74963: <==closure== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87754: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #90731: <==closure== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #10820: <==negation-removal== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #14178: <==negation-removal== 58336 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #25971: <==negation-removal== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #27525: <==uncertain_firing== 12968 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27963: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #30299: <==uncertain_firing== 87754 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #41453: <==uncertain_firing== 65155 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #46900: <==negation-removal== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #49233: <==negation-removal== 90731 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #56477: <==uncertain_firing== 58336 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #58179: <==uncertain_firing== 90731 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #62579: <==uncertain_firing== 74963 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #78385: <==negation-removal== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #79862: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #80297: <==negation-removal== 74963 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #84077: <==uncertain_firing== 14335 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (initialized)
                           (Bc_secret_b)
                           (at_c_l3)
                           (Pc_secret_b))
        :effect (and
                    ; #15133: <==closure== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32409: <==closure== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #46832: <==closure== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #49075: <==closure== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #49626: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #66437: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80693: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #88584: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #10782: <==uncertain_firing== 88584 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #16409: <==uncertain_firing== 49075 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #18308: <==uncertain_firing== 46832 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #20896: <==uncertain_firing== 15133 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29302: <==negation-removal== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33944: <==negation-removal== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #38846: <==negation-removal== 15133 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #42398: <==uncertain_firing== 66437 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #42942: <==negation-removal== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #50751: <==negation-removal== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #59096: <==negation-removal== 46832 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #60300: <==uncertain_firing== 80693 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #60706: <==uncertain_firing== 32409 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78163: <==negation-removal== 49075 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #90258: <==negation-removal== 32409 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #97532: <==uncertain_firing== 49626 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #24431: <==closure== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25073: <==closure== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #33177: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #55150: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #68219: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #70644: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #72633: <==closure== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #91157: <==closure== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #17207: <==uncertain_firing== 25073 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #27973: <==negation-removal== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #30496: <==uncertain_firing== 72633 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #38362: <==uncertain_firing== 55150 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #40217: <==uncertain_firing== 24431 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #41249: <==negation-removal== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #45457: <==negation-removal== 91157 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #46120: <==uncertain_firing== 70644 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #47378: <==negation-removal== 72633 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #48361: <==uncertain_firing== 68219 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #57222: <==uncertain_firing== 33177 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #63373: <==negation-removal== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #71895: <==negation-removal== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #90776: <==uncertain_firing== 91157 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #90919: <==negation-removal== 25073 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #91803: <==negation-removal== 24431 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #27429: <==closure== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #34714: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #60956: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #62087: <==closure== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70237: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #72996: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #95464: <==closure== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #98313: <==closure== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #14572: <==negation-removal== 98313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #16316: <==uncertain_firing== 34714 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #20574: <==uncertain_firing== 98313 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #28811: <==uncertain_firing== 95464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #30032: <==negation-removal== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #35153: <==negation-removal== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #40047: <==negation-removal== 95464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #42055: <==uncertain_firing== 60956 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #42910: <==negation-removal== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47652: <==uncertain_firing== 27429 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #55686: <==uncertain_firing== 72996 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #65070: <==uncertain_firing== 70237 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #72342: <==negation-removal== 62087 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #82259: <==negation-removal== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #82854: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #87372: <==negation-removal== 27429 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (Pc_secret_c)
                           (initialized)
                           (at_c_l3)
                           (Bc_secret_c))
        :effect (and
                    ; #21103: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #47780: <==closure== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #57784: <==closure== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61867: <==closure== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #64980: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75577: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #82444: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83710: <==closure== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #28909: <==uncertain_firing== 75577 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30063: <==negation-removal== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #30612: <==uncertain_firing== 83710 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #32761: <==uncertain_firing== 21103 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35405: <==negation-removal== 47780 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #38847: <==negation-removal== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #39824: <==uncertain_firing== 47780 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #40330: <==uncertain_firing== 57784 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #44068: <==negation-removal== 57784 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #44586: <==negation-removal== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #55454: <==uncertain_firing== 64980 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #61464: <==uncertain_firing== 82444 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #67481: <==uncertain_firing== 61867 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #72443: <==negation-removal== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #80602: <==negation-removal== 83710 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #94224: <==negation-removal== 61867 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (Bc_secret_d)
                           (at_c_l1)
                           (initialized)
                           (Pc_secret_d))
        :effect (and
                    ; #21197: <==closure== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #38360: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #45046: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47554: <==closure== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62615: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #66483: <==closure== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #69946: <==closure== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #79936: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13334: <==uncertain_firing== 62615 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36322: <==uncertain_firing== 79936 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #36671: <==negation-removal== 66483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #46558: <==uncertain_firing== 21197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #46953: <==negation-removal== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #48279: <==negation-removal== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #56386: <==negation-removal== 47554 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #64673: <==negation-removal== 69946 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #65597: <==uncertain_firing== 69946 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #70802: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #72710: <==negation-removal== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #75590: <==negation-removal== 21197 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #82212: <==uncertain_firing== 45046 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #83400: <==negation-removal== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #86090: <==uncertain_firing== 47554 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #87154: <==uncertain_firing== 38360 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (Bc_secret_d)
                           (at_c_l2)
                           (initialized)
                           (Pc_secret_d))
        :effect (and
                    ; #13160: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13484: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #48162: <==closure== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #50133: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #65939: <==closure== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #71534: <==closure== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71799: <==closure== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #87489: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #17453: <==uncertain_firing== 13160 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #25461: <==negation-removal== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #27677: <==uncertain_firing== 50133 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #39207: <==uncertain_firing== 13484 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #53849: <==negation-removal== 65939 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #55551: <==negation-removal== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #56245: <==negation-removal== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #57530: <==negation-removal== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #62476: <==uncertain_firing== 71534 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #63429: <==negation-removal== 71799 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #64613: <==uncertain_firing== 48162 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #70478: <==negation-removal== 71534 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #73427: <==uncertain_firing== 65939 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #84944: <==uncertain_firing== 71799 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #90515: <==negation-removal== 48162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #91522: <==uncertain_firing== 87489 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (Bc_secret_d)
                           (initialized)
                           (at_c_l3)
                           (Pc_secret_d))
        :effect (and
                    ; #34898: <==closure== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #41138: <==closure== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #44109: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #53335: <==closure== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #53380: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #64142: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #68111: <==closure== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #85192: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #15259: <==negation-removal== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #20893: <==uncertain_firing== 85192 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #27031: <==negation-removal== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #36995: <==uncertain_firing== 41138 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #48074: <==negation-removal== 34898 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #50771: <==uncertain_firing== 68111 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58109: <==negation-removal== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #64255: <==negation-removal== 68111 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #68763: <==negation-removal== 53335 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #69415: <==uncertain_firing== 64142 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #70602: <==negation-removal== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #76889: <==uncertain_firing== 53380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #79628: <==uncertain_firing== 34898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #84269: <==uncertain_firing== 44109 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #87011: <==uncertain_firing== 53335 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #99758: <==negation-removal== 41138 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (initialized)
                           (Pd_secret_a)
                           (Bd_secret_a)
                           (at_d_l1))
        :effect (and
                    ; #16100: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #16201: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #17864: <==closure== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #23130: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #26963: <==closure== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #49034: <==closure== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #87439: <==closure== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #92143: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #10955: <==negation-removal== 92143 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #11781: <==negation-removal== 16100 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #22570: <==uncertain_firing== 92143 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #31794: <==uncertain_firing== 16201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #35647: <==uncertain_firing== 16100 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #46078: <==negation-removal== 23130 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #62064: <==negation-removal== 49034 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #64234: <==uncertain_firing== 87439 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #69486: <==negation-removal== 16201 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #72883: <==uncertain_firing== 17864 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #72911: <==uncertain_firing== 23130 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_a))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #79150: <==uncertain_firing== 49034 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #79662: <==negation-removal== 17864 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #83526: <==negation-removal== 26963 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #84534: <==negation-removal== 87439 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #86434: <==uncertain_firing== 26963 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (at_d_l2)
                           (initialized)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #10075: <==closure== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #13765: <==closure== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #34902: <==closure== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #44533: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #60288: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #73950: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #75504: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #82339: <==closure== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #13050: <==negation-removal== 44533 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #20405: <==uncertain_firing== 10075 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #21908: <==negation-removal== 60288 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26891: <==negation-removal== 34902 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #27303: <==negation-removal== 10075 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #27734: <==uncertain_firing== 73950 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #33313: <==uncertain_firing== 82339 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #33446: <==uncertain_firing== 75504 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #36972: <==negation-removal== 73950 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #42701: <==uncertain_firing== 13765 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47359: <==uncertain_firing== 34902 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #63974: <==uncertain_firing== 60288 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #66497: <==negation-removal== 13765 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #73769: <==uncertain_firing== 44533 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #82011: <==negation-removal== 82339 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #92153: <==negation-removal== 75504 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (at_d_l3)
                           (Pd_secret_a))
        :effect (and
                    ; #30115: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #32196: <==closure== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #35579: <==closure== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #47236: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68203: <==closure== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #70540: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #86649: <==closure== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #89169: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #14909: <==negation-removal== 89169 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #24307: <==negation-removal== 30115 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #24847: <==uncertain_firing== 47236 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #26673: <==negation-removal== 35579 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #29938: <==negation-removal== 47236 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #40473: <==uncertain_firing== 70540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #46110: <==uncertain_firing== 32196 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #47551: <==uncertain_firing== 86649 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #48152: <==negation-removal== 32196 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #51504: <==negation-removal== 86649 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #60442: <==uncertain_firing== 89169 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #71119: <==uncertain_firing== 35579 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #73133: <==uncertain_firing== 68203 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #74423: <==negation-removal== 68203 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #87377: <==uncertain_firing== 30115 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89462: <==negation-removal== 70540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #19802: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26311: <==closure== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #26839: <==closure== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #39225: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #46127: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #46500: <==closure== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #48830: <==closure== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #58694: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #17665: <==negation-removal== 26839 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #20752: <==negation-removal== 39225 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #22180: <==uncertain_firing== 26311 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #27321: <==uncertain_firing== 48830 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #29646: <==negation-removal== 46127 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #32450: <==negation-removal== 58694 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #37668: <==negation-removal== 26311 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #46939: <==negation-removal== 46500 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #49870: <==uncertain_firing== 46500 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #55284: <==uncertain_firing== 46127 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #63490: <==negation-removal== 48830 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #72711: <==uncertain_firing== 39225 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #76621: <==uncertain_firing== 58694 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #82702: <==uncertain_firing== 26839 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_b))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #87311: <==uncertain_firing== 19802 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #91197: <==negation-removal== 19802 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (initialized)
                           (at_d_l2)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #12968: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #14335: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #45107: <==closure== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #58336: <==closure== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65155: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74963: <==closure== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87754: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #90731: <==closure== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #10820: <==negation-removal== 14335 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #14178: <==negation-removal== 58336 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #25971: <==negation-removal== 65155 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #27525: <==uncertain_firing== 12968 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27963: <==uncertain_firing== 45107 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #30299: <==uncertain_firing== 87754 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #41453: <==uncertain_firing== 65155 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #46900: <==negation-removal== 87754 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #49233: <==negation-removal== 90731 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #56477: <==uncertain_firing== 58336 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l2))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #58179: <==uncertain_firing== 90731 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #62579: <==uncertain_firing== 74963 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #78385: <==negation-removal== 12968 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #79862: <==negation-removal== 45107 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #80297: <==negation-removal== 74963 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #84077: <==uncertain_firing== 14335 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l2))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #15133: <==closure== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32409: <==closure== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #46832: <==closure== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #49075: <==closure== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #49626: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #66437: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80693: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #88584: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #10782: <==uncertain_firing== 88584 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #16409: <==uncertain_firing== 49075 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #18308: <==uncertain_firing== 46832 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #20896: <==uncertain_firing== 15133 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29302: <==negation-removal== 88584 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #33944: <==negation-removal== 49626 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #38846: <==negation-removal== 15133 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #42398: <==uncertain_firing== 66437 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #42942: <==negation-removal== 80693 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #50751: <==negation-removal== 66437 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #59096: <==negation-removal== 46832 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #60300: <==uncertain_firing== 80693 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #60706: <==uncertain_firing== 32409 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (not_at_c_l3))
                               (not (Pc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #78163: <==negation-removal== 49075 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #90258: <==negation-removal== 32409 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #97532: <==uncertain_firing== 49626 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (Pd_secret_c)
                           (at_d_l1))
        :effect (and
                    ; #24431: <==closure== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25073: <==closure== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #33177: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #55150: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #68219: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #70644: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #72633: <==closure== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #91157: <==closure== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #17207: <==uncertain_firing== 25073 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #27973: <==negation-removal== 70644 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #30496: <==uncertain_firing== 72633 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #38362: <==uncertain_firing== 55150 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #40217: <==uncertain_firing== 24431 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #41249: <==negation-removal== 33177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #45457: <==negation-removal== 91157 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #46120: <==uncertain_firing== 70644 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #47378: <==negation-removal== 72633 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #48361: <==uncertain_firing== 68219 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #57222: <==uncertain_firing== 33177 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #63373: <==negation-removal== 55150 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #71895: <==negation-removal== 68219 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #90776: <==uncertain_firing== 91157 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #90919: <==negation-removal== 25073 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #91803: <==negation-removal== 24431 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #27429: <==closure== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #34714: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #60956: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #62087: <==closure== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70237: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #72996: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #95464: <==closure== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #98313: <==closure== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #14572: <==negation-removal== 98313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #16316: <==uncertain_firing== 34714 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #20574: <==uncertain_firing== 98313 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #28811: <==uncertain_firing== 95464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #30032: <==negation-removal== 72996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #35153: <==negation-removal== 60956 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #40047: <==negation-removal== 95464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #42055: <==uncertain_firing== 60956 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #42910: <==negation-removal== 70237 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #47652: <==uncertain_firing== 27429 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #55686: <==uncertain_firing== 72996 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #65070: <==uncertain_firing== 70237 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #72342: <==negation-removal== 62087 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #82259: <==negation-removal== 34714 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #82854: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #87372: <==negation-removal== 27429 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (Pd_secret_c)
                           (at_d_l3))
        :effect (and
                    ; #21103: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #47780: <==closure== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #57784: <==closure== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61867: <==closure== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #64980: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75577: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #82444: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83710: <==closure== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #28909: <==uncertain_firing== 75577 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30063: <==negation-removal== 82444 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #30612: <==uncertain_firing== 83710 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #32761: <==uncertain_firing== 21103 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #35405: <==negation-removal== 47780 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #38847: <==negation-removal== 75577 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #39824: <==uncertain_firing== 47780 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #40330: <==uncertain_firing== 57784 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #44068: <==negation-removal== 57784 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #44586: <==negation-removal== 64980 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #55454: <==uncertain_firing== 64980 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #61464: <==uncertain_firing== 82444 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #67481: <==uncertain_firing== 61867 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #72443: <==negation-removal== 21103 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #80602: <==negation-removal== 83710 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #94224: <==negation-removal== 61867 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #21197: <==closure== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #38360: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #45046: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47554: <==closure== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62615: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #66483: <==closure== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #69946: <==closure== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #79936: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13334: <==uncertain_firing== 62615 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36322: <==uncertain_firing== 79936 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #36671: <==negation-removal== 66483 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #46558: <==uncertain_firing== 21197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #46953: <==negation-removal== 38360 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #48279: <==negation-removal== 45046 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #56386: <==negation-removal== 47554 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #64673: <==negation-removal== 69946 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #65597: <==uncertain_firing== 69946 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #70802: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #72710: <==negation-removal== 62615 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #75590: <==negation-removal== 21197 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #82212: <==uncertain_firing== 45046 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #83400: <==negation-removal== 79936 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #86090: <==uncertain_firing== 47554 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #87154: <==uncertain_firing== 38360 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (initialized)
                           (Bd_secret_d)
                           (at_d_l2)
                           (Pd_secret_d))
        :effect (and
                    ; #13160: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13484: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #48162: <==closure== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #50133: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #65939: <==closure== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #71534: <==closure== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71799: <==closure== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #87489: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #17453: <==uncertain_firing== 13160 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #25461: <==negation-removal== 50133 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #27677: <==uncertain_firing== 50133 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #39207: <==uncertain_firing== 13484 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #53849: <==negation-removal== 65939 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #55551: <==negation-removal== 13484 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #56245: <==negation-removal== 13160 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #57530: <==negation-removal== 87489 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #62476: <==uncertain_firing== 71534 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #63429: <==negation-removal== 71799 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #64613: <==uncertain_firing== 48162 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #70478: <==negation-removal== 71534 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #73427: <==uncertain_firing== 65939 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #84944: <==uncertain_firing== 71799 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #90515: <==negation-removal== 48162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #91522: <==uncertain_firing== 87489 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l3))
        :effect (and
                    ; #34898: <==closure== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #41138: <==closure== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #44109: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #53335: <==closure== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #53380: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #64142: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #68111: <==closure== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #85192: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #15259: <==negation-removal== 85192 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #20893: <==uncertain_firing== 85192 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #27031: <==negation-removal== 64142 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #36995: <==uncertain_firing== 41138 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #48074: <==negation-removal== 34898 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #50771: <==uncertain_firing== 68111 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58109: <==negation-removal== 44109 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #64255: <==negation-removal== 68111 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #68763: <==negation-removal== 53335 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #69415: <==uncertain_firing== 64142 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #70602: <==negation-removal== 53380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #76889: <==uncertain_firing== 53380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #79628: <==uncertain_firing== 34898 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #84269: <==uncertain_firing== 44109 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #87011: <==uncertain_firing== 53335 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #99758: <==negation-removal== 41138 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #11845: <==closure== 38174 (pos)
                    (Pd_secret_d)

                    ; #35905: <==closure== 56060 (pos)
                    (Pb_secret_b)

                    ; #38174: origin
                    (Bd_secret_d)

                    ; #44741: origin
                    (initialized)

                    ; #56060: origin
                    (Bb_secret_b)

                    ; #56643: origin
                    (Bc_secret_c)

                    ; #68030: <==closure== 56643 (pos)
                    (Pc_secret_c)

                    ; #69460: <==closure== 84579 (pos)
                    (Pa_secret_a)

                    ; #84579: origin
                    (Ba_secret_a)

                    ; #10701: <==negation-removal== 44741 (pos)
                    (not (not_initialized))

                    ; #14634: <==negation-removal== 56060 (pos)
                    (not (Pb_not_secret_b))

                    ; #24909: <==negation-removal== 68030 (pos)
                    (not (Bc_not_secret_c))

                    ; #34211: <==negation-removal== 84579 (pos)
                    (not (Pa_not_secret_a))

                    ; #37750: <==negation-removal== 11845 (pos)
                    (not (Bd_not_secret_d))

                    ; #47395: <==negation-removal== 69460 (pos)
                    (not (Ba_not_secret_a))

                    ; #54404: <==negation-removal== 38174 (pos)
                    (not (Pd_not_secret_d))

                    ; #86812: <==negation-removal== 35905 (pos)
                    (not (Bb_not_secret_b))

                    ; #88331: <==negation-removal== 56643 (pos)
                    (not (Pc_not_secret_c))))

    (:action move_a_l1_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #11180: origin
                    (not_at_a_l1)

                    ; #28001: origin
                    (at_a_l1)

                    ; #11180: <==negation-removal== 28001 (pos)
                    (not (not_at_a_l1))

                    ; #28001: <==negation-removal== 11180 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (initialized)
                           (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #11180: origin
                    (not_at_a_l1)

                    ; #37371: origin
                    (at_a_l2)

                    ; #28001: <==negation-removal== 11180 (pos)
                    (not (at_a_l1))

                    ; #42354: <==negation-removal== 37371 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l1_l3
        :precondition (and (initialized)
                           (at_a_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #11180: origin
                    (not_at_a_l1)

                    ; #44045: origin
                    (at_a_l3)

                    ; #28001: <==negation-removal== 11180 (pos)
                    (not (at_a_l1))

                    ; #63057: <==negation-removal== 44045 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (initialized)
                           (connected_l2_l1))
        :effect (and
                    ; #28001: origin
                    (at_a_l1)

                    ; #42354: origin
                    (not_at_a_l2)

                    ; #11180: <==negation-removal== 28001 (pos)
                    (not (not_at_a_l1))

                    ; #37371: <==negation-removal== 42354 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (initialized)
                           (connected_l2_l2))
        :effect (and
                    ; #37371: origin
                    (at_a_l2)

                    ; #42354: origin
                    (not_at_a_l2)

                    ; #37371: <==negation-removal== 42354 (pos)
                    (not (at_a_l2))

                    ; #42354: <==negation-removal== 37371 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (at_a_l2)
                           (initialized)
                           (connected_l2_l3))
        :effect (and
                    ; #42354: origin
                    (not_at_a_l2)

                    ; #44045: origin
                    (at_a_l3)

                    ; #37371: <==negation-removal== 42354 (pos)
                    (not (at_a_l2))

                    ; #63057: <==negation-removal== 44045 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l3_l1
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l1))
        :effect (and
                    ; #28001: origin
                    (at_a_l1)

                    ; #63057: origin
                    (not_at_a_l3)

                    ; #11180: <==negation-removal== 28001 (pos)
                    (not (not_at_a_l1))

                    ; #44045: <==negation-removal== 63057 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l2
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l2))
        :effect (and
                    ; #37371: origin
                    (at_a_l2)

                    ; #63057: origin
                    (not_at_a_l3)

                    ; #42354: <==negation-removal== 37371 (pos)
                    (not (not_at_a_l2))

                    ; #44045: <==negation-removal== 63057 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #44045: origin
                    (at_a_l3)

                    ; #63057: origin
                    (not_at_a_l3)

                    ; #44045: <==negation-removal== 63057 (pos)
                    (not (at_a_l3))

                    ; #63057: <==negation-removal== 44045 (pos)
                    (not (not_at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #52340: origin
                    (at_b_l1)

                    ; #62803: origin
                    (not_at_b_l1)

                    ; #52340: <==negation-removal== 62803 (pos)
                    (not (at_b_l1))

                    ; #62803: <==negation-removal== 52340 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #62803: origin
                    (not_at_b_l1)

                    ; #88474: origin
                    (at_b_l2)

                    ; #36948: <==negation-removal== 88474 (pos)
                    (not (not_at_b_l2))

                    ; #52340: <==negation-removal== 62803 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_b_l1))
        :effect (and
                    ; #62803: origin
                    (not_at_b_l1)

                    ; #73079: origin
                    (at_b_l3)

                    ; #52340: <==negation-removal== 62803 (pos)
                    (not (at_b_l1))

                    ; #70492: <==negation-removal== 73079 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l2_l1
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #36948: origin
                    (not_at_b_l2)

                    ; #52340: origin
                    (at_b_l1)

                    ; #62803: <==negation-removal== 52340 (pos)
                    (not (not_at_b_l1))

                    ; #88474: <==negation-removal== 36948 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (initialized)
                           (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #36948: origin
                    (not_at_b_l2)

                    ; #88474: origin
                    (at_b_l2)

                    ; #36948: <==negation-removal== 88474 (pos)
                    (not (not_at_b_l2))

                    ; #88474: <==negation-removal== 36948 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #36948: origin
                    (not_at_b_l2)

                    ; #73079: origin
                    (at_b_l3)

                    ; #70492: <==negation-removal== 73079 (pos)
                    (not (not_at_b_l3))

                    ; #88474: <==negation-removal== 36948 (pos)
                    (not (at_b_l2))))

    (:action move_b_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_b_l3))
        :effect (and
                    ; #52340: origin
                    (at_b_l1)

                    ; #70492: origin
                    (not_at_b_l3)

                    ; #62803: <==negation-removal== 52340 (pos)
                    (not (not_at_b_l1))

                    ; #73079: <==negation-removal== 70492 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l2
        :precondition (and (initialized)
                           (connected_l3_l2)
                           (at_b_l3))
        :effect (and
                    ; #70492: origin
                    (not_at_b_l3)

                    ; #88474: origin
                    (at_b_l2)

                    ; #36948: <==negation-removal== 88474 (pos)
                    (not (not_at_b_l2))

                    ; #73079: <==negation-removal== 70492 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_b_l3))
        :effect (and
                    ; #70492: origin
                    (not_at_b_l3)

                    ; #73079: origin
                    (at_b_l3)

                    ; #70492: <==negation-removal== 73079 (pos)
                    (not (not_at_b_l3))

                    ; #73079: <==negation-removal== 70492 (pos)
                    (not (at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (connected_l1_l1))
        :effect (and
                    ; #53372: origin
                    (at_c_l1)

                    ; #58300: origin
                    (not_at_c_l1)

                    ; #53372: <==negation-removal== 58300 (pos)
                    (not (at_c_l1))

                    ; #58300: <==negation-removal== 53372 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (initialized)
                           (connected_l1_l2))
        :effect (and
                    ; #58300: origin
                    (not_at_c_l1)

                    ; #86271: origin
                    (at_c_l2)

                    ; #36552: <==negation-removal== 86271 (pos)
                    (not (not_at_c_l2))

                    ; #53372: <==negation-removal== 58300 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l3
        :precondition (and (at_c_l1)
                           (initialized)
                           (connected_l1_l3))
        :effect (and
                    ; #48767: origin
                    (at_c_l3)

                    ; #58300: origin
                    (not_at_c_l1)

                    ; #39984: <==negation-removal== 48767 (pos)
                    (not (not_at_c_l3))

                    ; #53372: <==negation-removal== 58300 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (initialized)
                           (connected_l2_l1))
        :effect (and
                    ; #36552: origin
                    (not_at_c_l2)

                    ; #53372: origin
                    (at_c_l1)

                    ; #58300: <==negation-removal== 53372 (pos)
                    (not (not_at_c_l1))

                    ; #86271: <==negation-removal== 36552 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_c_l2)
                           (initialized))
        :effect (and
                    ; #36552: origin
                    (not_at_c_l2)

                    ; #86271: origin
                    (at_c_l2)

                    ; #36552: <==negation-removal== 86271 (pos)
                    (not (not_at_c_l2))

                    ; #86271: <==negation-removal== 36552 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (at_c_l2)
                           (initialized)
                           (connected_l2_l3))
        :effect (and
                    ; #36552: origin
                    (not_at_c_l2)

                    ; #48767: origin
                    (at_c_l3)

                    ; #39984: <==negation-removal== 48767 (pos)
                    (not (not_at_c_l3))

                    ; #86271: <==negation-removal== 36552 (pos)
                    (not (at_c_l2))))

    (:action move_c_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_c_l3))
        :effect (and
                    ; #39984: origin
                    (not_at_c_l3)

                    ; #53372: origin
                    (at_c_l1)

                    ; #48767: <==negation-removal== 39984 (pos)
                    (not (at_c_l3))

                    ; #58300: <==negation-removal== 53372 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l3_l2
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #39984: origin
                    (not_at_c_l3)

                    ; #86271: origin
                    (at_c_l2)

                    ; #36552: <==negation-removal== 86271 (pos)
                    (not (not_at_c_l2))

                    ; #48767: <==negation-removal== 39984 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_c_l3))
        :effect (and
                    ; #39984: origin
                    (not_at_c_l3)

                    ; #48767: origin
                    (at_c_l3)

                    ; #39984: <==negation-removal== 48767 (pos)
                    (not (not_at_c_l3))

                    ; #48767: <==negation-removal== 39984 (pos)
                    (not (at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #20099: origin
                    (not_at_d_l1)

                    ; #99145: origin
                    (at_d_l1)

                    ; #20099: <==negation-removal== 99145 (pos)
                    (not (not_at_d_l1))

                    ; #99145: <==negation-removal== 20099 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #20099: origin
                    (not_at_d_l1)

                    ; #59060: origin
                    (at_d_l2)

                    ; #50639: <==negation-removal== 59060 (pos)
                    (not (not_at_d_l2))

                    ; #99145: <==negation-removal== 20099 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l3
        :precondition (and (initialized)
                           (at_d_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #12573: origin
                    (at_d_l3)

                    ; #20099: origin
                    (not_at_d_l1)

                    ; #82858: <==negation-removal== 12573 (pos)
                    (not (not_at_d_l3))

                    ; #99145: <==negation-removal== 20099 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (initialized)
                           (connected_l2_l1))
        :effect (and
                    ; #50639: origin
                    (not_at_d_l2)

                    ; #99145: origin
                    (at_d_l1)

                    ; #20099: <==negation-removal== 99145 (pos)
                    (not (not_at_d_l1))

                    ; #59060: <==negation-removal== 50639 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_d_l2)
                           (initialized))
        :effect (and
                    ; #50639: origin
                    (not_at_d_l2)

                    ; #59060: origin
                    (at_d_l2)

                    ; #50639: <==negation-removal== 59060 (pos)
                    (not (not_at_d_l2))

                    ; #59060: <==negation-removal== 50639 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (at_d_l2)
                           (initialized)
                           (connected_l2_l3))
        :effect (and
                    ; #12573: origin
                    (at_d_l3)

                    ; #50639: origin
                    (not_at_d_l2)

                    ; #59060: <==negation-removal== 50639 (pos)
                    (not (at_d_l2))

                    ; #82858: <==negation-removal== 12573 (pos)
                    (not (not_at_d_l3))))

    (:action move_d_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_d_l3))
        :effect (and
                    ; #82858: origin
                    (not_at_d_l3)

                    ; #99145: origin
                    (at_d_l1)

                    ; #12573: <==negation-removal== 82858 (pos)
                    (not (at_d_l3))

                    ; #20099: <==negation-removal== 99145 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l3_l2
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #59060: origin
                    (at_d_l2)

                    ; #82858: origin
                    (not_at_d_l3)

                    ; #12573: <==negation-removal== 82858 (pos)
                    (not (at_d_l3))

                    ; #50639: <==negation-removal== 59060 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_d_l3))
        :effect (and
                    ; #12573: origin
                    (at_d_l3)

                    ; #82858: origin
                    (not_at_d_l3)

                    ; #12573: <==negation-removal== 82858 (pos)
                    (not (at_d_l3))

                    ; #82858: <==negation-removal== 12573 (pos)
                    (not (not_at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (initialized)
                           (Ba_secret_a)
                           (at_a_l1)
                           (Pa_secret_a))
        :effect (and
                    ; #11393: <==closure== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14389: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #33230: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38966: <==closure== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #52009: <==closure== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #75105: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #79746: <==closure== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #82310: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #22193: <==negation-removal== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29216: <==negation-removal== 52009 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45465: <==negation-removal== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #53398: <==negation-removal== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #54769: <==negation-removal== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #64186: <==uncertain_firing== 33230 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #64450: <==uncertain_firing== 38966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #74530: <==uncertain_firing== 52009 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #75674: <==uncertain_firing== 75105 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #75735: <==uncertain_firing== 11393 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83811: <==negation-removal== 79746 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #84346: <==uncertain_firing== 79746 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #86035: <==uncertain_firing== 82310 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #87457: <==negation-removal== 38966 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #91342: <==negation-removal== 11393 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #92106: <==uncertain_firing== 14389 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #20349: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38892: <==closure== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #46102: <==closure== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #57125: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #65612: <==closure== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79117: <==closure== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #79865: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86730: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #15871: <==uncertain_firing== 86730 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #24100: <==uncertain_firing== 38892 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #25174: <==negation-removal== 79117 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #30139: <==negation-removal== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #30142: <==uncertain_firing== 20349 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #41273: <==uncertain_firing== 79865 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #41336: <==uncertain_firing== 79117 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #60330: <==negation-removal== 65612 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #61282: <==uncertain_firing== 57125 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67389: <==negation-removal== 38892 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #68457: <==negation-removal== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70757: <==uncertain_firing== 65612 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #72962: <==uncertain_firing== 46102 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #72986: <==negation-removal== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #73914: <==negation-removal== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #77151: <==negation-removal== 46102 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #14033: <==closure== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #15382: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #43471: <==closure== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #45714: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #51286: <==closure== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #59838: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #63527: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #70167: <==closure== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #19129: <==uncertain_firing== 70167 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #26003: <==negation-removal== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27452: <==negation-removal== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #39780: <==negation-removal== 43471 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #40011: <==uncertain_firing== 43471 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #49201: <==negation-removal== 14033 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #52480: <==uncertain_firing== 14033 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #54902: <==uncertain_firing== 15382 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #58162: <==negation-removal== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60509: <==uncertain_firing== 63527 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71248: <==negation-removal== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #71292: <==negation-removal== 51286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73748: <==uncertain_firing== 51286 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #77709: <==uncertain_firing== 59838 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #81605: <==uncertain_firing== 45714 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #83979: <==negation-removal== 70167 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (initialized)
                           (at_a_l1)
                           (Pa_secret_b))
        :effect (and
                    ; #23470: <==closure== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #28990: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #33678: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #34248: <==closure== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #47548: <==closure== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #47938: <==closure== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #50362: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #58207: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #12836: <==negation-removal== 34248 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #21003: <==negation-removal== 47548 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #24707: <==uncertain_firing== 34248 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #30361: <==negation-removal== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #31742: <==negation-removal== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #32853: <==uncertain_firing== 58207 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #47082: <==negation-removal== 23470 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #47633: <==uncertain_firing== 28990 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #53869: <==uncertain_firing== 23470 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #59613: <==negation-removal== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #60400: <==negation-removal== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #62342: <==negation-removal== 47938 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #62674: <==uncertain_firing== 47548 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #68951: <==uncertain_firing== 33678 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72337: <==uncertain_firing== 50362 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #77824: <==uncertain_firing== 47938 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #17950: <==closure== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #19832: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #42349: <==closure== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46164: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #53399: <==closure== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #76914: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78800: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #83776: <==closure== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #11257: <==uncertain_firing== 17950 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #12002: <==uncertain_firing== 83776 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #13243: <==uncertain_firing== 78800 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #17488: <==negation-removal== 83776 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #36240: <==negation-removal== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37834: <==negation-removal== 53399 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42347: <==uncertain_firing== 19832 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43260: <==uncertain_firing== 53399 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #46298: <==negation-removal== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60694: <==uncertain_firing== 42349 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #70606: <==negation-removal== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #72530: <==uncertain_firing== 76914 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #77755: <==uncertain_firing== 46164 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #79965: <==negation-removal== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #83001: <==negation-removal== 17950 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #85780: <==negation-removal== 42349 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #17520: <==closure== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #35733: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #40424: <==closure== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46664: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #59988: <==closure== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #69733: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #86412: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #87679: <==closure== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #20220: <==negation-removal== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #40017: <==negation-removal== 59988 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #40743: <==uncertain_firing== 46664 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #44168: <==negation-removal== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #44720: <==uncertain_firing== 40424 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #68379: <==uncertain_firing== 59988 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #70128: <==negation-removal== 17520 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #71015: <==uncertain_firing== 87679 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #77356: <==negation-removal== 87679 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #77562: <==negation-removal== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #78482: <==uncertain_firing== 69733 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #79000: <==negation-removal== 40424 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #84373: <==negation-removal== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #88623: <==uncertain_firing== 17520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #91020: <==uncertain_firing== 86412 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #97600: <==uncertain_firing== 35733 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #17432: <==closure== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18682: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #30409: <==closure== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #45485: <==closure== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #55959: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #63412: <==closure== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #64372: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68282: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #23829: <==uncertain_firing== 18682 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #25143: <==negation-removal== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #25154: <==uncertain_firing== 68282 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #30871: <==negation-removal== 17432 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31591: <==negation-removal== 30409 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #36614: <==negation-removal== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #36888: <==uncertain_firing== 30409 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #45662: <==negation-removal== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #47034: <==uncertain_firing== 63412 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #49550: <==uncertain_firing== 64372 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53761: <==uncertain_firing== 17432 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58171: <==negation-removal== 63412 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #60766: <==negation-removal== 45485 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #66288: <==uncertain_firing== 45485 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #67551: <==negation-removal== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #90757: <==uncertain_firing== 55959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #10479: <==closure== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #12707: <==closure== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #15098: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #32856: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33738: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #37076: <==closure== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #54829: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #68685: <==closure== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #12937: <==uncertain_firing== 33738 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #13344: <==uncertain_firing== 12707 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #13590: <==uncertain_firing== 54829 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #21824: <==uncertain_firing== 32856 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #27800: <==negation-removal== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #42400: <==negation-removal== 12707 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #50321: <==negation-removal== 37076 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #56756: <==uncertain_firing== 15098 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #59321: <==negation-removal== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #68241: <==uncertain_firing== 10479 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #71833: <==negation-removal== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72515: <==negation-removal== 68685 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #88500: <==negation-removal== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #88977: <==negation-removal== 10479 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #90309: <==uncertain_firing== 37076 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90898: <==uncertain_firing== 68685 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #10449: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #22251: <==closure== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #30691: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #35665: <==closure== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #57496: <==closure== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #68010: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74646: <==closure== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #90173: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #11337: <==uncertain_firing== 22251 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #11813: <==uncertain_firing== 30691 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #14044: <==negation-removal== 35665 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #28408: <==negation-removal== 74646 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33039: <==uncertain_firing== 74646 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #33381: <==negation-removal== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #35591: <==uncertain_firing== 57496 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #36830: <==uncertain_firing== 90173 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #40853: <==negation-removal== 57496 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #50181: <==negation-removal== 22251 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #52895: <==uncertain_firing== 68010 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #57195: <==negation-removal== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #57203: <==uncertain_firing== 10449 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #63766: <==negation-removal== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #82761: <==uncertain_firing== 35665 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #87794: <==negation-removal== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d))
        :effect (and
                    ; #14863: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #17366: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #17513: <==closure== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #20011: <==closure== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #40615: <==closure== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #51665: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #58290: <==closure== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #78736: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #10376: <==negation-removal== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #19198: <==uncertain_firing== 20011 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #21391: <==uncertain_firing== 51665 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38515: <==uncertain_firing== 17513 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #41903: <==negation-removal== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #50815: <==negation-removal== 20011 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #54836: <==negation-removal== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #55633: <==negation-removal== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #61458: <==uncertain_firing== 40615 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64645: <==uncertain_firing== 78736 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #70614: <==uncertain_firing== 14863 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75014: <==uncertain_firing== 58290 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #78579: <==uncertain_firing== 17366 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #78651: <==negation-removal== 17513 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #84454: <==negation-removal== 58290 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #85194: <==negation-removal== 40615 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #41313: <==closure== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #43524: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #53418: <==closure== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #55140: <==closure== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #61576: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #70896: <==closure== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #75146: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #83218: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #10791: <==uncertain_firing== 75146 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #14690: <==negation-removal== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19235: <==negation-removal== 41313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #20049: <==negation-removal== 70896 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #20931: <==uncertain_firing== 55140 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #22173: <==uncertain_firing== 53418 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #28860: <==uncertain_firing== 70896 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #29329: <==uncertain_firing== 41313 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #36304: <==negation-removal== 55140 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #39483: <==negation-removal== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #54645: <==negation-removal== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #72513: <==uncertain_firing== 43524 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #72728: <==uncertain_firing== 61576 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81473: <==negation-removal== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #86307: <==negation-removal== 53418 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #88031: <==uncertain_firing== 83218 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #33951: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #38963: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #52321: <==closure== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #62024: <==closure== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #63443: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #63726: <==closure== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #74101: <==closure== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #84443: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #12521: <==negation-removal== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #12677: <==negation-removal== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #24068: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #31164: <==negation-removal== 63726 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39936: <==uncertain_firing== 33951 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #40870: <==uncertain_firing== 38963 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #42399: <==uncertain_firing== 62024 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #42668: <==negation-removal== 74101 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #53267: <==negation-removal== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #55995: <==uncertain_firing== 52321 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59478: <==negation-removal== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #61599: <==negation-removal== 62024 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #69838: <==uncertain_firing== 74101 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #72561: <==negation-removal== 52321 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #86699: <==uncertain_firing== 84443 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #99623: <==uncertain_firing== 63726 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #11393: <==closure== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14389: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #33230: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38966: <==closure== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #52009: <==closure== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #75105: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #79746: <==closure== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #82310: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #22193: <==negation-removal== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29216: <==negation-removal== 52009 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45465: <==negation-removal== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #53398: <==negation-removal== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #54769: <==negation-removal== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #64186: <==uncertain_firing== 33230 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #64450: <==uncertain_firing== 38966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #74530: <==uncertain_firing== 52009 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #75674: <==uncertain_firing== 75105 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #75735: <==uncertain_firing== 11393 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83811: <==negation-removal== 79746 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #84346: <==uncertain_firing== 79746 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #86035: <==uncertain_firing== 82310 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #87457: <==negation-removal== 38966 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #91342: <==negation-removal== 11393 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #92106: <==uncertain_firing== 14389 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (initialized)
                           (Bb_secret_a)
                           (at_b_l2)
                           (Pb_secret_a))
        :effect (and
                    ; #20349: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38892: <==closure== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #46102: <==closure== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #57125: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #65612: <==closure== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79117: <==closure== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #79865: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86730: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #15871: <==uncertain_firing== 86730 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #24100: <==uncertain_firing== 38892 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #25174: <==negation-removal== 79117 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #30139: <==negation-removal== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #30142: <==uncertain_firing== 20349 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #41273: <==uncertain_firing== 79865 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #41336: <==uncertain_firing== 79117 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #60330: <==negation-removal== 65612 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #61282: <==uncertain_firing== 57125 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67389: <==negation-removal== 38892 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #68457: <==negation-removal== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70757: <==uncertain_firing== 65612 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #72962: <==uncertain_firing== 46102 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #72986: <==negation-removal== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #73914: <==negation-removal== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #77151: <==negation-removal== 46102 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #14033: <==closure== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #15382: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #43471: <==closure== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #45714: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #51286: <==closure== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #59838: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #63527: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #70167: <==closure== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #19129: <==uncertain_firing== 70167 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #26003: <==negation-removal== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27452: <==negation-removal== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #39780: <==negation-removal== 43471 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #40011: <==uncertain_firing== 43471 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #49201: <==negation-removal== 14033 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #52480: <==uncertain_firing== 14033 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #54902: <==uncertain_firing== 15382 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #58162: <==negation-removal== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60509: <==uncertain_firing== 63527 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71248: <==negation-removal== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #71292: <==negation-removal== 51286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73748: <==uncertain_firing== 51286 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #77709: <==uncertain_firing== 59838 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #81605: <==uncertain_firing== 45714 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #83979: <==negation-removal== 70167 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (Bb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #23470: <==closure== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #28990: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #33678: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #34248: <==closure== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #47548: <==closure== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #47938: <==closure== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #50362: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #58207: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #12836: <==negation-removal== 34248 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #21003: <==negation-removal== 47548 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #24707: <==uncertain_firing== 34248 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #30361: <==negation-removal== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #31742: <==negation-removal== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #32853: <==uncertain_firing== 58207 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #47082: <==negation-removal== 23470 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #47633: <==uncertain_firing== 28990 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #53869: <==uncertain_firing== 23470 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #59613: <==negation-removal== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #60400: <==negation-removal== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #62342: <==negation-removal== 47938 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #62674: <==uncertain_firing== 47548 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #68951: <==uncertain_firing== 33678 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72337: <==uncertain_firing== 50362 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #77824: <==uncertain_firing== 47938 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #17950: <==closure== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #19832: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #42349: <==closure== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46164: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #53399: <==closure== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #76914: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78800: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #83776: <==closure== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #11257: <==uncertain_firing== 17950 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #12002: <==uncertain_firing== 83776 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #13243: <==uncertain_firing== 78800 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #17488: <==negation-removal== 83776 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #36240: <==negation-removal== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37834: <==negation-removal== 53399 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42347: <==uncertain_firing== 19832 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43260: <==uncertain_firing== 53399 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #46298: <==negation-removal== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60694: <==uncertain_firing== 42349 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #70606: <==negation-removal== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #72530: <==uncertain_firing== 76914 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #77755: <==uncertain_firing== 46164 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #79965: <==negation-removal== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #83001: <==negation-removal== 17950 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #85780: <==negation-removal== 42349 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (Pb_secret_b)
                           (initialized)
                           (Bb_secret_b)
                           (at_b_l3))
        :effect (and
                    ; #17520: <==closure== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #35733: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #40424: <==closure== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46664: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #59988: <==closure== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #69733: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #86412: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #87679: <==closure== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #20220: <==negation-removal== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #40017: <==negation-removal== 59988 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #40743: <==uncertain_firing== 46664 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #44168: <==negation-removal== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #44720: <==uncertain_firing== 40424 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #68379: <==uncertain_firing== 59988 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #70128: <==negation-removal== 17520 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #71015: <==uncertain_firing== 87679 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #77356: <==negation-removal== 87679 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #77562: <==negation-removal== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #78482: <==uncertain_firing== 69733 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #79000: <==negation-removal== 40424 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #84373: <==negation-removal== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #88623: <==uncertain_firing== 17520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #91020: <==uncertain_firing== 86412 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #97600: <==uncertain_firing== 35733 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #17432: <==closure== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18682: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #30409: <==closure== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #45485: <==closure== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #55959: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #63412: <==closure== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #64372: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68282: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #23829: <==uncertain_firing== 18682 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #25143: <==negation-removal== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #25154: <==uncertain_firing== 68282 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #30871: <==negation-removal== 17432 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31591: <==negation-removal== 30409 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #36614: <==negation-removal== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #36888: <==uncertain_firing== 30409 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #45662: <==negation-removal== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #47034: <==uncertain_firing== 63412 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #49550: <==uncertain_firing== 64372 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53761: <==uncertain_firing== 17432 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58171: <==negation-removal== 63412 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #60766: <==negation-removal== 45485 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #66288: <==uncertain_firing== 45485 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #67551: <==negation-removal== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #90757: <==uncertain_firing== 55959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (initialized)
                           (Pb_secret_c)
                           (at_b_l2)
                           (Bb_secret_c))
        :effect (and
                    ; #10479: <==closure== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #12707: <==closure== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #15098: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #32856: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33738: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #37076: <==closure== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #54829: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #68685: <==closure== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #12937: <==uncertain_firing== 33738 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #13344: <==uncertain_firing== 12707 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #13590: <==uncertain_firing== 54829 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #21824: <==uncertain_firing== 32856 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #27800: <==negation-removal== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #42400: <==negation-removal== 12707 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #50321: <==negation-removal== 37076 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #56756: <==uncertain_firing== 15098 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #59321: <==negation-removal== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #68241: <==uncertain_firing== 10479 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #71833: <==negation-removal== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72515: <==negation-removal== 68685 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #88500: <==negation-removal== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #88977: <==negation-removal== 10479 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #90309: <==uncertain_firing== 37076 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90898: <==uncertain_firing== 68685 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (Bb_secret_c)
                           (at_b_l3))
        :effect (and
                    ; #10449: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #22251: <==closure== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #30691: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #35665: <==closure== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #57496: <==closure== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #68010: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74646: <==closure== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #90173: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #11337: <==uncertain_firing== 22251 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #11813: <==uncertain_firing== 30691 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #14044: <==negation-removal== 35665 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #28408: <==negation-removal== 74646 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33039: <==uncertain_firing== 74646 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #33381: <==negation-removal== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #35591: <==uncertain_firing== 57496 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #36830: <==uncertain_firing== 90173 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #40853: <==negation-removal== 57496 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #50181: <==negation-removal== 22251 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #52895: <==uncertain_firing== 68010 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #57195: <==negation-removal== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #57203: <==uncertain_firing== 10449 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #63766: <==negation-removal== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #82761: <==uncertain_firing== 35665 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #87794: <==negation-removal== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #14863: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #17366: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #17513: <==closure== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #20011: <==closure== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #40615: <==closure== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #51665: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #58290: <==closure== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #78736: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #10376: <==negation-removal== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #19198: <==uncertain_firing== 20011 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #21391: <==uncertain_firing== 51665 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38515: <==uncertain_firing== 17513 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #41903: <==negation-removal== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #50815: <==negation-removal== 20011 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #54836: <==negation-removal== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #55633: <==negation-removal== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #61458: <==uncertain_firing== 40615 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64645: <==uncertain_firing== 78736 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #70614: <==uncertain_firing== 14863 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75014: <==uncertain_firing== 58290 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #78579: <==uncertain_firing== 17366 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #78651: <==negation-removal== 17513 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #84454: <==negation-removal== 58290 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #85194: <==negation-removal== 40615 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #41313: <==closure== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #43524: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #53418: <==closure== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #55140: <==closure== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #61576: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #70896: <==closure== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #75146: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #83218: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #10791: <==uncertain_firing== 75146 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #14690: <==negation-removal== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19235: <==negation-removal== 41313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #20049: <==negation-removal== 70896 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #20931: <==uncertain_firing== 55140 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #22173: <==uncertain_firing== 53418 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #28860: <==uncertain_firing== 70896 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #29329: <==uncertain_firing== 41313 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #36304: <==negation-removal== 55140 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #39483: <==negation-removal== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #54645: <==negation-removal== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #72513: <==uncertain_firing== 43524 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #72728: <==uncertain_firing== 61576 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81473: <==negation-removal== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #86307: <==negation-removal== 53418 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #88031: <==uncertain_firing== 83218 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #33951: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #38963: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #52321: <==closure== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #62024: <==closure== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #63443: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #63726: <==closure== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #74101: <==closure== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #84443: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #12521: <==negation-removal== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #12677: <==negation-removal== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #24068: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #31164: <==negation-removal== 63726 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39936: <==uncertain_firing== 33951 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #40870: <==uncertain_firing== 38963 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #42399: <==uncertain_firing== 62024 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #42668: <==negation-removal== 74101 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #53267: <==negation-removal== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #55995: <==uncertain_firing== 52321 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59478: <==negation-removal== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #61599: <==negation-removal== 62024 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #69838: <==uncertain_firing== 74101 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #72561: <==negation-removal== 52321 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #86699: <==uncertain_firing== 84443 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #99623: <==uncertain_firing== 63726 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #11393: <==closure== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14389: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #33230: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38966: <==closure== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #52009: <==closure== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #75105: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #79746: <==closure== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #82310: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #22193: <==negation-removal== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29216: <==negation-removal== 52009 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45465: <==negation-removal== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #53398: <==negation-removal== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #54769: <==negation-removal== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #64186: <==uncertain_firing== 33230 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #64450: <==uncertain_firing== 38966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #74530: <==uncertain_firing== 52009 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #75674: <==uncertain_firing== 75105 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #75735: <==uncertain_firing== 11393 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83811: <==negation-removal== 79746 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #84346: <==uncertain_firing== 79746 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #86035: <==uncertain_firing== 82310 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #87457: <==negation-removal== 38966 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #91342: <==negation-removal== 11393 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #92106: <==uncertain_firing== 14389 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #20349: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38892: <==closure== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #46102: <==closure== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #57125: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #65612: <==closure== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79117: <==closure== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #79865: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86730: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #15871: <==uncertain_firing== 86730 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #24100: <==uncertain_firing== 38892 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #25174: <==negation-removal== 79117 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #30139: <==negation-removal== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #30142: <==uncertain_firing== 20349 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #41273: <==uncertain_firing== 79865 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #41336: <==uncertain_firing== 79117 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #60330: <==negation-removal== 65612 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #61282: <==uncertain_firing== 57125 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67389: <==negation-removal== 38892 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #68457: <==negation-removal== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70757: <==uncertain_firing== 65612 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #72962: <==uncertain_firing== 46102 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #72986: <==negation-removal== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #73914: <==negation-removal== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #77151: <==negation-removal== 46102 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (initialized)
                           (Bc_secret_a)
                           (at_c_l3)
                           (Pc_secret_a))
        :effect (and
                    ; #14033: <==closure== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #15382: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #43471: <==closure== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #45714: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #51286: <==closure== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #59838: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #63527: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #70167: <==closure== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #19129: <==uncertain_firing== 70167 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #26003: <==negation-removal== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27452: <==negation-removal== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #39780: <==negation-removal== 43471 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #40011: <==uncertain_firing== 43471 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #49201: <==negation-removal== 14033 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #52480: <==uncertain_firing== 14033 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #54902: <==uncertain_firing== 15382 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #58162: <==negation-removal== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60509: <==uncertain_firing== 63527 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71248: <==negation-removal== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #71292: <==negation-removal== 51286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73748: <==uncertain_firing== 51286 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #77709: <==uncertain_firing== 59838 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #81605: <==uncertain_firing== 45714 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #83979: <==negation-removal== 70167 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #23470: <==closure== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #28990: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #33678: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #34248: <==closure== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #47548: <==closure== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #47938: <==closure== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #50362: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #58207: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #12836: <==negation-removal== 34248 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #21003: <==negation-removal== 47548 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #24707: <==uncertain_firing== 34248 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #30361: <==negation-removal== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #31742: <==negation-removal== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #32853: <==uncertain_firing== 58207 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #47082: <==negation-removal== 23470 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #47633: <==uncertain_firing== 28990 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #53869: <==uncertain_firing== 23470 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #59613: <==negation-removal== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #60400: <==negation-removal== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #62342: <==negation-removal== 47938 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #62674: <==uncertain_firing== 47548 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #68951: <==uncertain_firing== 33678 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72337: <==uncertain_firing== 50362 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #77824: <==uncertain_firing== 47938 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #17950: <==closure== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #19832: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #42349: <==closure== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46164: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #53399: <==closure== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #76914: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78800: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #83776: <==closure== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #11257: <==uncertain_firing== 17950 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #12002: <==uncertain_firing== 83776 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #13243: <==uncertain_firing== 78800 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #17488: <==negation-removal== 83776 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #36240: <==negation-removal== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37834: <==negation-removal== 53399 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42347: <==uncertain_firing== 19832 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43260: <==uncertain_firing== 53399 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #46298: <==negation-removal== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60694: <==uncertain_firing== 42349 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #70606: <==negation-removal== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #72530: <==uncertain_firing== 76914 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #77755: <==uncertain_firing== 46164 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #79965: <==negation-removal== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #83001: <==negation-removal== 17950 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #85780: <==negation-removal== 42349 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (initialized)
                           (Bc_secret_b)
                           (at_c_l3)
                           (Pc_secret_b))
        :effect (and
                    ; #17520: <==closure== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #35733: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #40424: <==closure== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46664: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #59988: <==closure== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #69733: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #86412: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #87679: <==closure== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #20220: <==negation-removal== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #40017: <==negation-removal== 59988 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #40743: <==uncertain_firing== 46664 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #44168: <==negation-removal== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #44720: <==uncertain_firing== 40424 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #68379: <==uncertain_firing== 59988 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #70128: <==negation-removal== 17520 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #71015: <==uncertain_firing== 87679 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #77356: <==negation-removal== 87679 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #77562: <==negation-removal== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #78482: <==uncertain_firing== 69733 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #79000: <==negation-removal== 40424 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #84373: <==negation-removal== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #88623: <==uncertain_firing== 17520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #91020: <==uncertain_firing== 86412 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #97600: <==uncertain_firing== 35733 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #17432: <==closure== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18682: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #30409: <==closure== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #45485: <==closure== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #55959: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #63412: <==closure== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #64372: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68282: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #23829: <==uncertain_firing== 18682 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #25143: <==negation-removal== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #25154: <==uncertain_firing== 68282 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #30871: <==negation-removal== 17432 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31591: <==negation-removal== 30409 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #36614: <==negation-removal== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #36888: <==uncertain_firing== 30409 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #45662: <==negation-removal== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #47034: <==uncertain_firing== 63412 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #49550: <==uncertain_firing== 64372 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53761: <==uncertain_firing== 17432 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58171: <==negation-removal== 63412 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #60766: <==negation-removal== 45485 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #66288: <==uncertain_firing== 45485 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #67551: <==negation-removal== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #90757: <==uncertain_firing== 55959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #10479: <==closure== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #12707: <==closure== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #15098: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #32856: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33738: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #37076: <==closure== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #54829: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #68685: <==closure== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #12937: <==uncertain_firing== 33738 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #13344: <==uncertain_firing== 12707 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #13590: <==uncertain_firing== 54829 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #21824: <==uncertain_firing== 32856 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #27800: <==negation-removal== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #42400: <==negation-removal== 12707 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #50321: <==negation-removal== 37076 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #56756: <==uncertain_firing== 15098 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #59321: <==negation-removal== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #68241: <==uncertain_firing== 10479 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #71833: <==negation-removal== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72515: <==negation-removal== 68685 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #88500: <==negation-removal== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #88977: <==negation-removal== 10479 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #90309: <==uncertain_firing== 37076 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90898: <==uncertain_firing== 68685 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (Pc_secret_c)
                           (initialized)
                           (at_c_l3)
                           (Bc_secret_c))
        :effect (and
                    ; #10449: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #22251: <==closure== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #30691: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #35665: <==closure== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #57496: <==closure== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #68010: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74646: <==closure== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #90173: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #11337: <==uncertain_firing== 22251 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #11813: <==uncertain_firing== 30691 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #14044: <==negation-removal== 35665 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #28408: <==negation-removal== 74646 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33039: <==uncertain_firing== 74646 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #33381: <==negation-removal== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #35591: <==uncertain_firing== 57496 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #36830: <==uncertain_firing== 90173 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #40853: <==negation-removal== 57496 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #50181: <==negation-removal== 22251 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #52895: <==uncertain_firing== 68010 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #57195: <==negation-removal== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #57203: <==uncertain_firing== 10449 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #63766: <==negation-removal== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #82761: <==uncertain_firing== 35665 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #87794: <==negation-removal== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Bc_secret_d)
                           (at_c_l1)
                           (initialized)
                           (Pc_secret_d))
        :effect (and
                    ; #14863: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #17366: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #17513: <==closure== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #20011: <==closure== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #40615: <==closure== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #51665: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #58290: <==closure== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #78736: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #10376: <==negation-removal== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #19198: <==uncertain_firing== 20011 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #21391: <==uncertain_firing== 51665 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38515: <==uncertain_firing== 17513 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #41903: <==negation-removal== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #50815: <==negation-removal== 20011 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #54836: <==negation-removal== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #55633: <==negation-removal== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #61458: <==uncertain_firing== 40615 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64645: <==uncertain_firing== 78736 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #70614: <==uncertain_firing== 14863 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75014: <==uncertain_firing== 58290 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #78579: <==uncertain_firing== 17366 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #78651: <==negation-removal== 17513 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #84454: <==negation-removal== 58290 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #85194: <==negation-removal== 40615 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (Bc_secret_d)
                           (at_c_l2)
                           (initialized)
                           (Pc_secret_d))
        :effect (and
                    ; #41313: <==closure== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #43524: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #53418: <==closure== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #55140: <==closure== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #61576: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #70896: <==closure== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #75146: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #83218: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #10791: <==uncertain_firing== 75146 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #14690: <==negation-removal== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19235: <==negation-removal== 41313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #20049: <==negation-removal== 70896 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #20931: <==uncertain_firing== 55140 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #22173: <==uncertain_firing== 53418 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #28860: <==uncertain_firing== 70896 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #29329: <==uncertain_firing== 41313 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #36304: <==negation-removal== 55140 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #39483: <==negation-removal== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #54645: <==negation-removal== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #72513: <==uncertain_firing== 43524 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #72728: <==uncertain_firing== 61576 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81473: <==negation-removal== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #86307: <==negation-removal== 53418 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #88031: <==uncertain_firing== 83218 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (Bc_secret_d)
                           (initialized)
                           (at_c_l3)
                           (Pc_secret_d))
        :effect (and
                    ; #33951: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #38963: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #52321: <==closure== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #62024: <==closure== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #63443: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #63726: <==closure== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #74101: <==closure== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #84443: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #12521: <==negation-removal== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #12677: <==negation-removal== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #24068: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #31164: <==negation-removal== 63726 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39936: <==uncertain_firing== 33951 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #40870: <==uncertain_firing== 38963 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #42399: <==uncertain_firing== 62024 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #42668: <==negation-removal== 74101 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #53267: <==negation-removal== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #55995: <==uncertain_firing== 52321 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59478: <==negation-removal== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #61599: <==negation-removal== 62024 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #69838: <==uncertain_firing== 74101 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #72561: <==negation-removal== 52321 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #86699: <==uncertain_firing== 84443 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #99623: <==uncertain_firing== 63726 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (initialized)
                           (Pd_secret_a)
                           (Bd_secret_a)
                           (at_d_l1))
        :effect (and
                    ; #11393: <==closure== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14389: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #33230: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38966: <==closure== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #52009: <==closure== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #75105: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #79746: <==closure== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #82310: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #22193: <==negation-removal== 82310 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29216: <==negation-removal== 52009 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45465: <==negation-removal== 75105 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #53398: <==negation-removal== 33230 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #54769: <==negation-removal== 14389 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #64186: <==uncertain_firing== 33230 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #64450: <==uncertain_firing== 38966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #74530: <==uncertain_firing== 52009 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #75674: <==uncertain_firing== 75105 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #75735: <==uncertain_firing== 11393 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83811: <==negation-removal== 79746 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #84346: <==uncertain_firing== 79746 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #86035: <==uncertain_firing== 82310 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #87457: <==negation-removal== 38966 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #91342: <==negation-removal== 11393 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #92106: <==uncertain_firing== 14389 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (initialized)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #20349: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #38892: <==closure== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #46102: <==closure== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #57125: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #65612: <==closure== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #79117: <==closure== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #79865: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #86730: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #15871: <==uncertain_firing== 86730 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #24100: <==uncertain_firing== 38892 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #25174: <==negation-removal== 79117 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #30139: <==negation-removal== 57125 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #30142: <==uncertain_firing== 20349 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #41273: <==uncertain_firing== 79865 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #41336: <==uncertain_firing== 79117 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #60330: <==negation-removal== 65612 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #61282: <==uncertain_firing== 57125 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #67389: <==negation-removal== 38892 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #68457: <==negation-removal== 86730 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #70757: <==uncertain_firing== 65612 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #72962: <==uncertain_firing== 46102 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #72986: <==negation-removal== 79865 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #73914: <==negation-removal== 20349 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #77151: <==negation-removal== 46102 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (initialized)
                           (Bd_secret_a)
                           (at_d_l3)
                           (Pd_secret_a))
        :effect (and
                    ; #14033: <==closure== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #15382: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #43471: <==closure== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #45714: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #51286: <==closure== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #59838: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #63527: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #70167: <==closure== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #19129: <==uncertain_firing== 70167 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #26003: <==negation-removal== 45714 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #27452: <==negation-removal== 63527 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #39780: <==negation-removal== 43471 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #40011: <==uncertain_firing== 43471 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #49201: <==negation-removal== 14033 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #52480: <==uncertain_firing== 14033 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #54902: <==uncertain_firing== 15382 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #58162: <==negation-removal== 15382 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #60509: <==uncertain_firing== 63527 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71248: <==negation-removal== 59838 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #71292: <==negation-removal== 51286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73748: <==uncertain_firing== 51286 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #77709: <==uncertain_firing== 59838 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #81605: <==uncertain_firing== 45714 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #83979: <==negation-removal== 70167 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #23470: <==closure== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #28990: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #33678: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #34248: <==closure== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #47548: <==closure== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #47938: <==closure== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #50362: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #58207: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #12836: <==negation-removal== 34248 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #21003: <==negation-removal== 47548 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #24707: <==uncertain_firing== 34248 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #30361: <==negation-removal== 33678 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #31742: <==negation-removal== 50362 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #32853: <==uncertain_firing== 58207 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #47082: <==negation-removal== 23470 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #47633: <==uncertain_firing== 28990 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #53869: <==uncertain_firing== 23470 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #59613: <==negation-removal== 58207 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #60400: <==negation-removal== 28990 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #62342: <==negation-removal== 47938 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #62674: <==uncertain_firing== 47548 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #68951: <==uncertain_firing== 33678 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72337: <==uncertain_firing== 50362 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #77824: <==uncertain_firing== 47938 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (initialized)
                           (at_d_l2)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #17950: <==closure== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #19832: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #42349: <==closure== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46164: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #53399: <==closure== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #76914: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78800: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #83776: <==closure== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #11257: <==uncertain_firing== 17950 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #12002: <==uncertain_firing== 83776 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #13243: <==uncertain_firing== 78800 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #17488: <==negation-removal== 83776 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #36240: <==negation-removal== 78800 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37834: <==negation-removal== 53399 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42347: <==uncertain_firing== 19832 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43260: <==uncertain_firing== 53399 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #46298: <==negation-removal== 76914 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60694: <==uncertain_firing== 42349 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #70606: <==negation-removal== 46164 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #72530: <==uncertain_firing== 76914 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #77755: <==uncertain_firing== 46164 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #79965: <==negation-removal== 19832 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #83001: <==negation-removal== 17950 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #85780: <==negation-removal== 42349 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #17520: <==closure== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #35733: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #40424: <==closure== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #46664: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #59988: <==closure== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #69733: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #86412: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #87679: <==closure== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #20220: <==negation-removal== 69733 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #40017: <==negation-removal== 59988 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #40743: <==uncertain_firing== 46664 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #44168: <==negation-removal== 46664 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #44720: <==uncertain_firing== 40424 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #68379: <==uncertain_firing== 59988 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #70128: <==negation-removal== 17520 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #71015: <==uncertain_firing== 87679 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #77356: <==negation-removal== 87679 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #77562: <==negation-removal== 86412 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #78482: <==uncertain_firing== 69733 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #79000: <==negation-removal== 40424 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #84373: <==negation-removal== 35733 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #88623: <==uncertain_firing== 17520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #91020: <==uncertain_firing== 86412 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #97600: <==uncertain_firing== 35733 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (Pd_secret_c)
                           (at_d_l1))
        :effect (and
                    ; #17432: <==closure== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18682: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #30409: <==closure== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #45485: <==closure== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #55959: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #63412: <==closure== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #64372: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68282: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #23829: <==uncertain_firing== 18682 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #25143: <==negation-removal== 18682 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #25154: <==uncertain_firing== 68282 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #30871: <==negation-removal== 17432 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31591: <==negation-removal== 30409 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #36614: <==negation-removal== 64372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #36888: <==uncertain_firing== 30409 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #45662: <==negation-removal== 55959 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #47034: <==uncertain_firing== 63412 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #49550: <==uncertain_firing== 64372 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53761: <==uncertain_firing== 17432 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58171: <==negation-removal== 63412 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #60766: <==negation-removal== 45485 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #66288: <==uncertain_firing== 45485 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #67551: <==negation-removal== 68282 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #90757: <==uncertain_firing== 55959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #10479: <==closure== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #12707: <==closure== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #15098: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #32856: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #33738: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #37076: <==closure== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #54829: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #68685: <==closure== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #12937: <==uncertain_firing== 33738 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #13344: <==uncertain_firing== 12707 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #13590: <==uncertain_firing== 54829 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #21824: <==uncertain_firing== 32856 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #27800: <==negation-removal== 15098 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #42400: <==negation-removal== 12707 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #50321: <==negation-removal== 37076 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #56756: <==uncertain_firing== 15098 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #59321: <==negation-removal== 32856 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #68241: <==uncertain_firing== 10479 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #71833: <==negation-removal== 33738 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72515: <==negation-removal== 68685 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #88500: <==negation-removal== 54829 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #88977: <==negation-removal== 10479 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #90309: <==uncertain_firing== 37076 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #90898: <==uncertain_firing== 68685 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (Pd_secret_c)
                           (at_d_l3))
        :effect (and
                    ; #10449: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #22251: <==closure== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #30691: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #35665: <==closure== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #57496: <==closure== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #68010: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #74646: <==closure== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #90173: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #11337: <==uncertain_firing== 22251 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #11813: <==uncertain_firing== 30691 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #14044: <==negation-removal== 35665 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #28408: <==negation-removal== 74646 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #33039: <==uncertain_firing== 74646 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #33381: <==negation-removal== 90173 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #35591: <==uncertain_firing== 57496 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #36830: <==uncertain_firing== 90173 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #40853: <==negation-removal== 57496 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #50181: <==negation-removal== 22251 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #52895: <==uncertain_firing== 68010 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #57195: <==negation-removal== 30691 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #57203: <==uncertain_firing== 10449 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #63766: <==negation-removal== 10449 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #82761: <==uncertain_firing== 35665 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #87794: <==negation-removal== 68010 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #14863: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #17366: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #17513: <==closure== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #20011: <==closure== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #40615: <==closure== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #51665: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #58290: <==closure== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #78736: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #10376: <==negation-removal== 78736 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #19198: <==uncertain_firing== 20011 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #21391: <==uncertain_firing== 51665 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38515: <==uncertain_firing== 17513 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #41903: <==negation-removal== 51665 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #50815: <==negation-removal== 20011 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #54836: <==negation-removal== 17366 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #55633: <==negation-removal== 14863 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #61458: <==uncertain_firing== 40615 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64645: <==uncertain_firing== 78736 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #70614: <==uncertain_firing== 14863 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #75014: <==uncertain_firing== 58290 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #78579: <==uncertain_firing== 17366 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #78651: <==negation-removal== 17513 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #84454: <==negation-removal== 58290 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #85194: <==negation-removal== 40615 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (initialized)
                           (Bd_secret_d)
                           (at_d_l2)
                           (Pd_secret_d))
        :effect (and
                    ; #41313: <==closure== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #43524: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #53418: <==closure== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #55140: <==closure== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #61576: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #70896: <==closure== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #75146: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #83218: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #10791: <==uncertain_firing== 75146 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #14690: <==negation-removal== 83218 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19235: <==negation-removal== 41313 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #20049: <==negation-removal== 70896 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #20931: <==uncertain_firing== 55140 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #22173: <==uncertain_firing== 53418 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #28860: <==uncertain_firing== 70896 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #29329: <==uncertain_firing== 41313 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #36304: <==negation-removal== 55140 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #39483: <==negation-removal== 61576 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #54645: <==negation-removal== 43524 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #72513: <==uncertain_firing== 43524 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #72728: <==uncertain_firing== 61576 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81473: <==negation-removal== 75146 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #86307: <==negation-removal== 53418 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #88031: <==uncertain_firing== 83218 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l3))
        :effect (and
                    ; #33951: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #38963: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #52321: <==closure== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #62024: <==closure== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #63443: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #63726: <==closure== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #74101: <==closure== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #84443: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #12521: <==negation-removal== 33951 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #12677: <==negation-removal== 38963 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #24068: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #31164: <==negation-removal== 63726 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39936: <==uncertain_firing== 33951 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #40870: <==uncertain_firing== 38963 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #42399: <==uncertain_firing== 62024 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #42668: <==negation-removal== 74101 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #53267: <==negation-removal== 63443 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #55995: <==uncertain_firing== 52321 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59478: <==negation-removal== 84443 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #61599: <==negation-removal== 62024 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #69838: <==uncertain_firing== 74101 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #72561: <==negation-removal== 52321 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #86699: <==uncertain_firing== 84443 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #99623: <==uncertain_firing== 63726 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))))

)