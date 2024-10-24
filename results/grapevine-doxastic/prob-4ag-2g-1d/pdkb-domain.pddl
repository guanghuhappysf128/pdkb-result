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
        :precondition (and (at_a_l1)
                           (Pa_secret_a)
                           (Ba_secret_a)
                           (initialized))
        :effect (and
                    ; #14322: <==closure== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #33335: <==closure== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #38198: <==closure== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #74072: <==closure== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #74917: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #83733: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #87171: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #88564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #15773: <==negation-removal== 33335 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #15964: <==negation-removal== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #28997: <==uncertain_firing== 87171 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #37865: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #38589: <==uncertain_firing== 74917 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #39192: <==negation-removal== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #46851: <==uncertain_firing== 33335 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #52182: <==negation-removal== 74072 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #53849: <==uncertain_firing== 83733 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #54209: <==uncertain_firing== 74072 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #54511: <==negation-removal== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #56303: <==uncertain_firing== 88564 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #71051: <==negation-removal== 38198 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #75795: <==uncertain_firing== 38198 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80211: <==negation-removal== 14322 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #80504: <==negation-removal== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (initialized)
                           (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #52234: <==closure== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #60615: <==closure== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #60621: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65655: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #73446: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75981: <==closure== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #89035: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #92190: <==closure== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10090: <==uncertain_firing== 60621 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #16077: <==uncertain_firing== 73446 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #24049: <==negation-removal== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26545: <==uncertain_firing== 60615 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #26904: <==uncertain_firing== 75981 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #36374: <==negation-removal== 92190 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #40432: <==uncertain_firing== 65655 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #40555: <==uncertain_firing== 52234 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #48946: <==uncertain_firing== 89035 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #49561: <==negation-removal== 75981 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #66460: <==negation-removal== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #67141: <==negation-removal== 52234 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #69962: <==negation-removal== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #84725: <==negation-removal== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89163: <==uncertain_firing== 92190 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #89814: <==negation-removal== 60615 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (Pa_secret_a)
                           (at_a_l3)
                           (Ba_secret_a)
                           (initialized))
        :effect (and
                    ; #16504: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #27280: <==closure== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #29224: <==closure== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #49219: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65742: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #66673: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #71508: <==closure== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #89245: <==closure== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14025: <==negation-removal== 27280 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #16783: <==negation-removal== 71508 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #20413: <==uncertain_firing== 16504 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #21909: <==negation-removal== 29224 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #22070: <==uncertain_firing== 66673 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #30444: <==negation-removal== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #32421: <==uncertain_firing== 29224 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #41278: <==negation-removal== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #44410: <==uncertain_firing== 71508 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #45823: <==uncertain_firing== 49219 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #45876: <==uncertain_firing== 27280 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46804: <==negation-removal== 89245 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64709: <==negation-removal== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #76203: <==negation-removal== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #77979: <==uncertain_firing== 65742 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83246: <==uncertain_firing== 89245 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #10397: <==closure== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26233: <==closure== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32418: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #37644: <==closure== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #38573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #60451: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #79744: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #16041: <==uncertain_firing== 37644 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #17524: <==uncertain_firing== 60451 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #27495: <==negation-removal== 26233 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #33972: <==uncertain_firing== 79744 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #39375: <==negation-removal== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #43684: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #44187: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #50859: <==uncertain_firing== 26233 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #56983: <==uncertain_firing== 38573 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #59172: <==negation-removal== 10397 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #60676: <==negation-removal== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #62393: <==uncertain_firing== 10397 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #69407: <==uncertain_firing== 32418 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #74841: <==negation-removal== 79744 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76612: <==negation-removal== 37644 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #90715: <==negation-removal== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #19454: <==closure== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #29746: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #30300: <==closure== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #36890: <==closure== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #43939: <==closure== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72552: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #75176: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84727: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11417: <==uncertain_firing== 43939 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #16553: <==uncertain_firing== 29746 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #20281: <==negation-removal== 43939 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #23004: <==negation-removal== 30300 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #25768: <==uncertain_firing== 75176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #28329: <==uncertain_firing== 84727 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #31782: <==negation-removal== 19454 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #37708: <==uncertain_firing== 30300 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #41399: <==negation-removal== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #50851: <==negation-removal== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52937: <==uncertain_firing== 19454 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #61305: <==negation-removal== 36890 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #64855: <==negation-removal== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #66094: <==uncertain_firing== 36890 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #66168: <==uncertain_firing== 72552 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #72160: <==negation-removal== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #26093: <==closure== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #38872: <==closure== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #50871: <==closure== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #52268: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #57751: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #62178: <==closure== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #65283: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #71792: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #13188: <==uncertain_firing== 71792 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19741: <==uncertain_firing== 65283 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #27191: <==uncertain_firing== 26093 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29893: <==uncertain_firing== 52268 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_b)))

                    ; #37196: <==negation-removal== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #40715: <==uncertain_firing== 50871 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #47402: <==uncertain_firing== 38872 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_b)))

                    ; #47568: <==negation-removal== 62178 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #47948: <==negation-removal== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #50808: <==negation-removal== 26093 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #52851: <==negation-removal== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #54978: <==negation-removal== 38872 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #60273: <==negation-removal== 50871 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #80641: <==uncertain_firing== 62178 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #81455: <==negation-removal== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #83713: <==uncertain_firing== 57751 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (Ba_secret_c)
                           (at_a_l1)
                           (Pa_secret_c)
                           (initialized))
        :effect (and
                    ; #15235: <==closure== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #24528: <==closure== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #58491: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #64620: <==closure== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #79239: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #82870: <==closure== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #83998: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #89424: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #14840: <==negation-removal== 24528 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21277: <==uncertain_firing== 58491 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30307: <==negation-removal== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #32531: <==uncertain_firing== 24528 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #32730: <==uncertain_firing== 89424 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #37155: <==negation-removal== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #57926: <==negation-removal== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #64147: <==uncertain_firing== 15235 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #66345: <==negation-removal== 82870 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #71688: <==uncertain_firing== 83998 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #76391: <==negation-removal== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #81036: <==uncertain_firing== 64620 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #81594: <==uncertain_firing== 82870 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #82396: <==uncertain_firing== 79239 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #89810: <==negation-removal== 64620 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #91354: <==negation-removal== 15235 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #22731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #41913: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45127: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #46408: <==closure== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #53486: <==closure== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #60258: <==closure== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71329: <==closure== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75683: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #12173: <==negation-removal== 60258 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #23302: <==negation-removal== 71329 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25193: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #28349: <==uncertain_firing== 53486 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #37662: <==negation-removal== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #38638: <==negation-removal== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #38850: <==negation-removal== 46408 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #40293: <==uncertain_firing== 60258 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #51598: <==negation-removal== 53486 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #58230: <==uncertain_firing== 71329 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #68636: <==uncertain_firing== 75683 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #69878: <==uncertain_firing== 46408 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #70414: <==uncertain_firing== 45127 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #71290: <==uncertain_firing== 41913 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #74042: <==negation-removal== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #81218: <==negation-removal== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #11433: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #13846: <==closure== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #21111: <==closure== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #54855: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75810: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #78429: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #81297: <==closure== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #84300: <==closure== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #17929: <==negation-removal== 21111 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #17974: <==negation-removal== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #18079: <==uncertain_firing== 54855 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #18130: <==negation-removal== 13846 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #28858: <==negation-removal== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #28980: <==negation-removal== 81297 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #35615: <==negation-removal== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #37122: <==uncertain_firing== 78429 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #42599: <==uncertain_firing== 11433 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #51782: <==uncertain_firing== 75810 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #64402: <==uncertain_firing== 81297 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #68994: <==negation-removal== 84300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #72571: <==uncertain_firing== 13846 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #82750: <==negation-removal== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #84852: <==uncertain_firing== 21111 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #87194: <==uncertain_firing== 84300 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_d)
                           (Ba_secret_d)
                           (initialized))
        :effect (and
                    ; #10953: <==closure== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #17241: <==closure== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #18855: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #21089: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #27200: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40718: <==closure== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #61835: <==closure== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79651: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #10010: <==uncertain_firing== 18855 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #16102: <==uncertain_firing== 27200 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #34523: <==uncertain_firing== 17241 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #34849: <==negation-removal== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #38753: <==uncertain_firing== 21089 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #39740: <==uncertain_firing== 79651 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #48481: <==uncertain_firing== 10953 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #53540: <==uncertain_firing== 61835 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #57890: <==negation-removal== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #58518: <==negation-removal== 17241 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))

                    ; #71936: <==uncertain_firing== 40718 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #80156: <==negation-removal== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #81408: <==negation-removal== 61835 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #82181: <==negation-removal== 10953 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #86143: <==negation-removal== 40718 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #96520: <==negation-removal== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #18254: <==closure== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #19087: <==closure== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #29937: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #32818: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #43481: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59242: <==closure== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #81175: <==closure== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90431: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #12361: <==negation-removal== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #21285: <==uncertain_firing== 18254 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #22604: <==negation-removal== 81175 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #33051: <==uncertain_firing== 90431 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #39597: <==negation-removal== 19087 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #44829: <==negation-removal== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #49907: <==negation-removal== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #50449: <==uncertain_firing== 19087 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #52687: <==uncertain_firing== 81175 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #60988: <==negation-removal== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63692: <==uncertain_firing== 59242 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #71687: <==negation-removal== 59242 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #77012: <==uncertain_firing== 29937 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #78062: <==uncertain_firing== 43481 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #82516: <==negation-removal== 18254 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #82969: <==uncertain_firing== 32818 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #18116: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #32760: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #34367: <==closure== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #47988: <==closure== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #58778: <==closure== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #64529: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #69409: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #86499: <==closure== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24214: <==negation-removal== 34367 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #24656: <==uncertain_firing== 34367 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #31339: <==uncertain_firing== 69409 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35363: <==negation-removal== 47988 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #39289: <==uncertain_firing== 64529 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #43512: <==uncertain_firing== 47988 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #47987: <==negation-removal== 58778 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #50283: <==uncertain_firing== 86499 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #52635: <==negation-removal== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #54492: <==negation-removal== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63581: <==negation-removal== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #71541: <==negation-removal== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #74539: <==negation-removal== 86499 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77251: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #81634: <==uncertain_firing== 18116 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #83166: <==uncertain_firing== 32760 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (Pb_secret_a)
                           (at_b_l1)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #14322: <==closure== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #33335: <==closure== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #38198: <==closure== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #74072: <==closure== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #74917: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #83733: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #87171: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #88564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #15773: <==negation-removal== 33335 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #15964: <==negation-removal== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #28997: <==uncertain_firing== 87171 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #37865: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #38589: <==uncertain_firing== 74917 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #39192: <==negation-removal== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #46851: <==uncertain_firing== 33335 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #52182: <==negation-removal== 74072 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #53849: <==uncertain_firing== 83733 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #54209: <==uncertain_firing== 74072 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #54511: <==negation-removal== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #56303: <==uncertain_firing== 88564 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #71051: <==negation-removal== 38198 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #75795: <==uncertain_firing== 38198 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80211: <==negation-removal== 14322 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #80504: <==negation-removal== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (Pb_secret_a)
                           (at_b_l2)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #52234: <==closure== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #60615: <==closure== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #60621: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65655: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #73446: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75981: <==closure== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #89035: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #92190: <==closure== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10090: <==uncertain_firing== 60621 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #16077: <==uncertain_firing== 73446 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #24049: <==negation-removal== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26545: <==uncertain_firing== 60615 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #26904: <==uncertain_firing== 75981 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #36374: <==negation-removal== 92190 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #40432: <==uncertain_firing== 65655 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #40555: <==uncertain_firing== 52234 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #48946: <==uncertain_firing== 89035 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #49561: <==negation-removal== 75981 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #66460: <==negation-removal== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #67141: <==negation-removal== 52234 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #69962: <==negation-removal== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #84725: <==negation-removal== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89163: <==uncertain_firing== 92190 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #89814: <==negation-removal== 60615 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (at_b_l3)
                           (Pb_secret_a)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #16504: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #27280: <==closure== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #29224: <==closure== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #49219: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65742: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #66673: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #71508: <==closure== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #89245: <==closure== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14025: <==negation-removal== 27280 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #16783: <==negation-removal== 71508 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #20413: <==uncertain_firing== 16504 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #21909: <==negation-removal== 29224 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #22070: <==uncertain_firing== 66673 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #30444: <==negation-removal== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #32421: <==uncertain_firing== 29224 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #41278: <==negation-removal== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #44410: <==uncertain_firing== 71508 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #45823: <==uncertain_firing== 49219 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #45876: <==uncertain_firing== 27280 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46804: <==negation-removal== 89245 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64709: <==negation-removal== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #76203: <==negation-removal== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #77979: <==uncertain_firing== 65742 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83246: <==uncertain_firing== 89245 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #10397: <==closure== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26233: <==closure== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32418: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #37644: <==closure== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #38573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #60451: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #79744: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #16041: <==uncertain_firing== 37644 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #17524: <==uncertain_firing== 60451 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #27495: <==negation-removal== 26233 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #33972: <==uncertain_firing== 79744 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #39375: <==negation-removal== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #43684: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #44187: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #50859: <==uncertain_firing== 26233 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #56983: <==uncertain_firing== 38573 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #59172: <==negation-removal== 10397 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #60676: <==negation-removal== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #62393: <==uncertain_firing== 10397 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #69407: <==uncertain_firing== 32418 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #74841: <==negation-removal== 79744 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76612: <==negation-removal== 37644 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #90715: <==negation-removal== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized))
        :effect (and
                    ; #19454: <==closure== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #29746: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #30300: <==closure== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #36890: <==closure== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #43939: <==closure== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72552: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #75176: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84727: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11417: <==uncertain_firing== 43939 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #16553: <==uncertain_firing== 29746 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #20281: <==negation-removal== 43939 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #23004: <==negation-removal== 30300 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #25768: <==uncertain_firing== 75176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #28329: <==uncertain_firing== 84727 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #31782: <==negation-removal== 19454 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #37708: <==uncertain_firing== 30300 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #41399: <==negation-removal== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #50851: <==negation-removal== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52937: <==uncertain_firing== 19454 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #61305: <==negation-removal== 36890 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #64855: <==negation-removal== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #66094: <==uncertain_firing== 36890 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #66168: <==uncertain_firing== 72552 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #72160: <==negation-removal== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (at_b_l3)
                           (Pb_secret_b)
                           (Bb_secret_b)
                           (initialized))
        :effect (and
                    ; #26093: <==closure== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #38872: <==closure== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #50871: <==closure== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #52268: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #57751: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #62178: <==closure== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #65283: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #71792: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #13188: <==uncertain_firing== 71792 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19741: <==uncertain_firing== 65283 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #27191: <==uncertain_firing== 26093 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29893: <==uncertain_firing== 52268 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_b)))

                    ; #37196: <==negation-removal== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #40715: <==uncertain_firing== 50871 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #47402: <==uncertain_firing== 38872 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_b)))

                    ; #47568: <==negation-removal== 62178 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #47948: <==negation-removal== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #50808: <==negation-removal== 26093 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #52851: <==negation-removal== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #54978: <==negation-removal== 38872 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #60273: <==negation-removal== 50871 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #80641: <==uncertain_firing== 62178 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #81455: <==negation-removal== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #83713: <==uncertain_firing== 57751 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (Bb_secret_c)
                           (at_b_l1)
                           (initialized)
                           (Pb_secret_c))
        :effect (and
                    ; #15235: <==closure== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #24528: <==closure== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #58491: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #64620: <==closure== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #79239: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #82870: <==closure== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #83998: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #89424: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #14840: <==negation-removal== 24528 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21277: <==uncertain_firing== 58491 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30307: <==negation-removal== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #32531: <==uncertain_firing== 24528 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #32730: <==uncertain_firing== 89424 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #37155: <==negation-removal== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #57926: <==negation-removal== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #64147: <==uncertain_firing== 15235 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #66345: <==negation-removal== 82870 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #71688: <==uncertain_firing== 83998 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #76391: <==negation-removal== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #81036: <==uncertain_firing== 64620 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #81594: <==uncertain_firing== 82870 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #82396: <==uncertain_firing== 79239 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #89810: <==negation-removal== 64620 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #91354: <==negation-removal== 15235 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c)
                           (initialized)
                           (Pb_secret_c))
        :effect (and
                    ; #22731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #41913: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45127: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #46408: <==closure== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #53486: <==closure== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #60258: <==closure== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71329: <==closure== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75683: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #12173: <==negation-removal== 60258 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #23302: <==negation-removal== 71329 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25193: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #28349: <==uncertain_firing== 53486 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #37662: <==negation-removal== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #38638: <==negation-removal== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #38850: <==negation-removal== 46408 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #40293: <==uncertain_firing== 60258 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #51598: <==negation-removal== 53486 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #58230: <==uncertain_firing== 71329 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #68636: <==uncertain_firing== 75683 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #69878: <==uncertain_firing== 46408 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #70414: <==uncertain_firing== 45127 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #71290: <==uncertain_firing== 41913 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #74042: <==negation-removal== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #81218: <==negation-removal== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (at_b_l3)
                           (Bb_secret_c)
                           (initialized)
                           (Pb_secret_c))
        :effect (and
                    ; #11433: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #13846: <==closure== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #21111: <==closure== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #54855: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75810: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #78429: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #81297: <==closure== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #84300: <==closure== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #17929: <==negation-removal== 21111 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #17974: <==negation-removal== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #18079: <==uncertain_firing== 54855 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #18130: <==negation-removal== 13846 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #28858: <==negation-removal== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #28980: <==negation-removal== 81297 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #35615: <==negation-removal== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #37122: <==uncertain_firing== 78429 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #42599: <==uncertain_firing== 11433 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #51782: <==uncertain_firing== 75810 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #64402: <==uncertain_firing== 81297 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #68994: <==negation-removal== 84300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #72571: <==uncertain_firing== 13846 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #82750: <==negation-removal== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #84852: <==uncertain_firing== 21111 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #87194: <==uncertain_firing== 84300 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #10953: <==closure== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #17241: <==closure== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #18855: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #21089: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #27200: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40718: <==closure== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #61835: <==closure== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79651: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #10010: <==uncertain_firing== 18855 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #16102: <==uncertain_firing== 27200 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #34523: <==uncertain_firing== 17241 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #34849: <==negation-removal== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #38753: <==uncertain_firing== 21089 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #39740: <==uncertain_firing== 79651 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #48481: <==uncertain_firing== 10953 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #53540: <==uncertain_firing== 61835 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #57890: <==negation-removal== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #58518: <==negation-removal== 17241 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))

                    ; #71936: <==uncertain_firing== 40718 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #80156: <==negation-removal== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #81408: <==negation-removal== 61835 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #82181: <==negation-removal== 10953 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #86143: <==negation-removal== 40718 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #96520: <==negation-removal== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #18254: <==closure== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #19087: <==closure== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #29937: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #32818: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #43481: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59242: <==closure== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #81175: <==closure== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90431: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #12361: <==negation-removal== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #21285: <==uncertain_firing== 18254 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #22604: <==negation-removal== 81175 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #33051: <==uncertain_firing== 90431 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #39597: <==negation-removal== 19087 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #44829: <==negation-removal== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #49907: <==negation-removal== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #50449: <==uncertain_firing== 19087 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #52687: <==uncertain_firing== 81175 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #60988: <==negation-removal== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63692: <==uncertain_firing== 59242 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #71687: <==negation-removal== 59242 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #77012: <==uncertain_firing== 29937 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #78062: <==uncertain_firing== 43481 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #82516: <==negation-removal== 18254 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #82969: <==uncertain_firing== 32818 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #18116: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #32760: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #34367: <==closure== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #47988: <==closure== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #58778: <==closure== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #64529: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #69409: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #86499: <==closure== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24214: <==negation-removal== 34367 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #24656: <==uncertain_firing== 34367 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #31339: <==uncertain_firing== 69409 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35363: <==negation-removal== 47988 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #39289: <==uncertain_firing== 64529 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #43512: <==uncertain_firing== 47988 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #47987: <==negation-removal== 58778 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #50283: <==uncertain_firing== 86499 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #52635: <==negation-removal== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #54492: <==negation-removal== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63581: <==negation-removal== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #71541: <==negation-removal== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #74539: <==negation-removal== 86499 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77251: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #81634: <==uncertain_firing== 18116 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #83166: <==uncertain_firing== 32760 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (Bc_secret_a)
                           (initialized)
                           (Pc_secret_a)
                           (at_c_l1))
        :effect (and
                    ; #14322: <==closure== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #33335: <==closure== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #38198: <==closure== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #74072: <==closure== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #74917: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #83733: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #87171: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #88564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #15773: <==negation-removal== 33335 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #15964: <==negation-removal== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #28997: <==uncertain_firing== 87171 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #37865: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #38589: <==uncertain_firing== 74917 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #39192: <==negation-removal== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #46851: <==uncertain_firing== 33335 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #52182: <==negation-removal== 74072 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #53849: <==uncertain_firing== 83733 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #54209: <==uncertain_firing== 74072 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #54511: <==negation-removal== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #56303: <==uncertain_firing== 88564 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #71051: <==negation-removal== 38198 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #75795: <==uncertain_firing== 38198 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80211: <==negation-removal== 14322 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #80504: <==negation-removal== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (Bc_secret_a)
                           (at_c_l2)
                           (Pc_secret_a)
                           (initialized))
        :effect (and
                    ; #52234: <==closure== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #60615: <==closure== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #60621: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65655: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #73446: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75981: <==closure== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #89035: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #92190: <==closure== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10090: <==uncertain_firing== 60621 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #16077: <==uncertain_firing== 73446 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #24049: <==negation-removal== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26545: <==uncertain_firing== 60615 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #26904: <==uncertain_firing== 75981 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #36374: <==negation-removal== 92190 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #40432: <==uncertain_firing== 65655 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #40555: <==uncertain_firing== 52234 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #48946: <==uncertain_firing== 89035 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #49561: <==negation-removal== 75981 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #66460: <==negation-removal== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #67141: <==negation-removal== 52234 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #69962: <==negation-removal== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #84725: <==negation-removal== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89163: <==uncertain_firing== 92190 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #89814: <==negation-removal== 60615 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #16504: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #27280: <==closure== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #29224: <==closure== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #49219: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65742: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #66673: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #71508: <==closure== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #89245: <==closure== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14025: <==negation-removal== 27280 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #16783: <==negation-removal== 71508 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #20413: <==uncertain_firing== 16504 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #21909: <==negation-removal== 29224 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #22070: <==uncertain_firing== 66673 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #30444: <==negation-removal== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #32421: <==uncertain_firing== 29224 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #41278: <==negation-removal== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #44410: <==uncertain_firing== 71508 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #45823: <==uncertain_firing== 49219 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #45876: <==uncertain_firing== 27280 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46804: <==negation-removal== 89245 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64709: <==negation-removal== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #76203: <==negation-removal== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #77979: <==uncertain_firing== 65742 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83246: <==uncertain_firing== 89245 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (Bc_secret_b)
                           (Pc_secret_b)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #10397: <==closure== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26233: <==closure== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32418: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #37644: <==closure== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #38573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #60451: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #79744: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #16041: <==uncertain_firing== 37644 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #17524: <==uncertain_firing== 60451 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #27495: <==negation-removal== 26233 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #33972: <==uncertain_firing== 79744 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #39375: <==negation-removal== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #43684: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #44187: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #50859: <==uncertain_firing== 26233 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #56983: <==uncertain_firing== 38573 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #59172: <==negation-removal== 10397 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #60676: <==negation-removal== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #62393: <==uncertain_firing== 10397 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #69407: <==uncertain_firing== 32418 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #74841: <==negation-removal== 79744 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76612: <==negation-removal== 37644 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #90715: <==negation-removal== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b)
                           (initialized))
        :effect (and
                    ; #19454: <==closure== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #29746: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #30300: <==closure== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #36890: <==closure== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #43939: <==closure== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72552: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #75176: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84727: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11417: <==uncertain_firing== 43939 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #16553: <==uncertain_firing== 29746 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #20281: <==negation-removal== 43939 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #23004: <==negation-removal== 30300 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #25768: <==uncertain_firing== 75176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #28329: <==uncertain_firing== 84727 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #31782: <==negation-removal== 19454 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #37708: <==uncertain_firing== 30300 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #41399: <==negation-removal== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #50851: <==negation-removal== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52937: <==uncertain_firing== 19454 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #61305: <==negation-removal== 36890 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #64855: <==negation-removal== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #66094: <==uncertain_firing== 36890 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #66168: <==uncertain_firing== 72552 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #72160: <==negation-removal== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_b)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #26093: <==closure== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #38872: <==closure== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #50871: <==closure== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #52268: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #57751: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #62178: <==closure== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #65283: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #71792: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #13188: <==uncertain_firing== 71792 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19741: <==uncertain_firing== 65283 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #27191: <==uncertain_firing== 26093 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29893: <==uncertain_firing== 52268 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_b)))

                    ; #37196: <==negation-removal== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #40715: <==uncertain_firing== 50871 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #47402: <==uncertain_firing== 38872 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_b)))

                    ; #47568: <==negation-removal== 62178 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #47948: <==negation-removal== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #50808: <==negation-removal== 26093 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #52851: <==negation-removal== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #54978: <==negation-removal== 38872 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #60273: <==negation-removal== 50871 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #80641: <==uncertain_firing== 62178 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #81455: <==negation-removal== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #83713: <==uncertain_firing== 57751 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #15235: <==closure== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #24528: <==closure== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #58491: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #64620: <==closure== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #79239: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #82870: <==closure== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #83998: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #89424: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #14840: <==negation-removal== 24528 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21277: <==uncertain_firing== 58491 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30307: <==negation-removal== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #32531: <==uncertain_firing== 24528 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #32730: <==uncertain_firing== 89424 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #37155: <==negation-removal== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #57926: <==negation-removal== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #64147: <==uncertain_firing== 15235 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #66345: <==negation-removal== 82870 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #71688: <==uncertain_firing== 83998 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #76391: <==negation-removal== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #81036: <==uncertain_firing== 64620 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #81594: <==uncertain_firing== 82870 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #82396: <==uncertain_firing== 79239 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #89810: <==negation-removal== 64620 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #91354: <==negation-removal== 15235 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized))
        :effect (and
                    ; #22731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #41913: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45127: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #46408: <==closure== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #53486: <==closure== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #60258: <==closure== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71329: <==closure== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75683: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #12173: <==negation-removal== 60258 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #23302: <==negation-removal== 71329 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25193: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #28349: <==uncertain_firing== 53486 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #37662: <==negation-removal== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #38638: <==negation-removal== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #38850: <==negation-removal== 46408 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #40293: <==uncertain_firing== 60258 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #51598: <==negation-removal== 53486 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #58230: <==uncertain_firing== 71329 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #68636: <==uncertain_firing== 75683 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #69878: <==uncertain_firing== 46408 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #70414: <==uncertain_firing== 45127 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #71290: <==uncertain_firing== 41913 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #74042: <==negation-removal== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #81218: <==negation-removal== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized))
        :effect (and
                    ; #11433: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #13846: <==closure== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #21111: <==closure== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #54855: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75810: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #78429: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #81297: <==closure== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #84300: <==closure== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #17929: <==negation-removal== 21111 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #17974: <==negation-removal== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #18079: <==uncertain_firing== 54855 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #18130: <==negation-removal== 13846 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #28858: <==negation-removal== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #28980: <==negation-removal== 81297 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #35615: <==negation-removal== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #37122: <==uncertain_firing== 78429 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #42599: <==uncertain_firing== 11433 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #51782: <==uncertain_firing== 75810 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #64402: <==uncertain_firing== 81297 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #68994: <==negation-removal== 84300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #72571: <==uncertain_firing== 13846 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #82750: <==negation-removal== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #84852: <==uncertain_firing== 21111 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #87194: <==uncertain_firing== 84300 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #10953: <==closure== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #17241: <==closure== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #18855: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #21089: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #27200: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40718: <==closure== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #61835: <==closure== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79651: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #10010: <==uncertain_firing== 18855 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #16102: <==uncertain_firing== 27200 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #34523: <==uncertain_firing== 17241 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #34849: <==negation-removal== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #38753: <==uncertain_firing== 21089 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #39740: <==uncertain_firing== 79651 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #48481: <==uncertain_firing== 10953 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #53540: <==uncertain_firing== 61835 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #57890: <==negation-removal== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #58518: <==negation-removal== 17241 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))

                    ; #71936: <==uncertain_firing== 40718 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #80156: <==negation-removal== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #81408: <==negation-removal== 61835 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #82181: <==negation-removal== 10953 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #86143: <==negation-removal== 40718 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #96520: <==negation-removal== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #18254: <==closure== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #19087: <==closure== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #29937: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #32818: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #43481: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59242: <==closure== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #81175: <==closure== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90431: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #12361: <==negation-removal== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #21285: <==uncertain_firing== 18254 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #22604: <==negation-removal== 81175 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #33051: <==uncertain_firing== 90431 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #39597: <==negation-removal== 19087 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #44829: <==negation-removal== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #49907: <==negation-removal== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #50449: <==uncertain_firing== 19087 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #52687: <==uncertain_firing== 81175 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #60988: <==negation-removal== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63692: <==uncertain_firing== 59242 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #71687: <==negation-removal== 59242 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #77012: <==uncertain_firing== 29937 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #78062: <==uncertain_firing== 43481 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #82516: <==negation-removal== 18254 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #82969: <==uncertain_firing== 32818 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #18116: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #32760: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #34367: <==closure== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #47988: <==closure== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #58778: <==closure== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #64529: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #69409: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #86499: <==closure== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24214: <==negation-removal== 34367 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #24656: <==uncertain_firing== 34367 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #31339: <==uncertain_firing== 69409 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35363: <==negation-removal== 47988 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #39289: <==uncertain_firing== 64529 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #43512: <==uncertain_firing== 47988 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #47987: <==negation-removal== 58778 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #50283: <==uncertain_firing== 86499 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #52635: <==negation-removal== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #54492: <==negation-removal== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63581: <==negation-removal== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #71541: <==negation-removal== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #74539: <==negation-removal== 86499 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77251: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #81634: <==uncertain_firing== 18116 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #83166: <==uncertain_firing== 32760 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (initialized))
        :effect (and
                    ; #14322: <==closure== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #33335: <==closure== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #38198: <==closure== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #74072: <==closure== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #74917: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #83733: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #87171: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #88564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #15773: <==negation-removal== 33335 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #15964: <==negation-removal== 74917 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #28997: <==uncertain_firing== 87171 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #37865: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #38589: <==uncertain_firing== 74917 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #39192: <==negation-removal== 88564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #46851: <==uncertain_firing== 33335 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #52182: <==negation-removal== 74072 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #53849: <==uncertain_firing== 83733 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #54209: <==uncertain_firing== 74072 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #54511: <==negation-removal== 87171 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #56303: <==uncertain_firing== 88564 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_a))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #71051: <==negation-removal== 38198 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #75795: <==uncertain_firing== 38198 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80211: <==negation-removal== 14322 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #80504: <==negation-removal== 83733 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (initialized))
        :effect (and
                    ; #52234: <==closure== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #60615: <==closure== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #60621: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65655: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #73446: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75981: <==closure== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #89035: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #92190: <==closure== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10090: <==uncertain_firing== 60621 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #16077: <==uncertain_firing== 73446 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #24049: <==negation-removal== 73446 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #26545: <==uncertain_firing== 60615 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #26904: <==uncertain_firing== 75981 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #36374: <==negation-removal== 92190 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #40432: <==uncertain_firing== 65655 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #40555: <==uncertain_firing== 52234 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #48946: <==uncertain_firing== 89035 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #49561: <==negation-removal== 75981 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #66460: <==negation-removal== 60621 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #67141: <==negation-removal== 52234 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #69962: <==negation-removal== 89035 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #84725: <==negation-removal== 65655 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #89163: <==uncertain_firing== 92190 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #89814: <==negation-removal== 60615 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (at_d_l3)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (initialized))
        :effect (and
                    ; #16504: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #27280: <==closure== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #29224: <==closure== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #49219: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #65742: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #66673: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #71508: <==closure== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #89245: <==closure== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14025: <==negation-removal== 27280 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #16783: <==negation-removal== 71508 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #20413: <==uncertain_firing== 16504 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #21909: <==negation-removal== 29224 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #22070: <==uncertain_firing== 66673 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #30444: <==negation-removal== 49219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #32421: <==uncertain_firing== 29224 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #41278: <==negation-removal== 66673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #44410: <==uncertain_firing== 71508 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #45823: <==uncertain_firing== 49219 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #45876: <==uncertain_firing== 27280 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46804: <==negation-removal== 89245 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #64709: <==negation-removal== 16504 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #76203: <==negation-removal== 65742 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #77979: <==uncertain_firing== 65742 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l3))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #83246: <==uncertain_firing== 89245 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (Pd_secret_b)
                           (at_d_l1)
                           (Bd_secret_b)
                           (initialized))
        :effect (and
                    ; #10397: <==closure== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #26233: <==closure== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #32418: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #37644: <==closure== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #38573: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #60451: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #79744: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #16041: <==uncertain_firing== 37644 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #17524: <==uncertain_firing== 60451 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #27495: <==negation-removal== 26233 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #33972: <==uncertain_firing== 79744 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #39375: <==negation-removal== 32418 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #43684: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #44187: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #50859: <==uncertain_firing== 26233 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #56983: <==uncertain_firing== 38573 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #59172: <==negation-removal== 10397 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #60676: <==negation-removal== 38573 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #62393: <==uncertain_firing== 10397 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #69407: <==uncertain_firing== 32418 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #74841: <==negation-removal== 79744 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76612: <==negation-removal== 37644 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #90715: <==negation-removal== 60451 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_b)
                           (initialized)
                           (Pd_secret_b))
        :effect (and
                    ; #19454: <==closure== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Pa_not_secret_b))

                    ; #29746: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (Ba_not_secret_b))

                    ; #30300: <==closure== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #36890: <==closure== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #43939: <==closure== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72552: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #75176: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #84727: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11417: <==uncertain_firing== 43939 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #16553: <==uncertain_firing== 29746 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #20281: <==negation-removal== 43939 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #23004: <==negation-removal== 30300 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #25768: <==uncertain_firing== 75176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #28329: <==uncertain_firing== 84727 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #31782: <==negation-removal== 19454 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Ba_secret_b)))

                    ; #37708: <==uncertain_firing== 30300 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #41399: <==negation-removal== 29746 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l2)))
                          (not (Pa_secret_b)))

                    ; #50851: <==negation-removal== 84727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #52937: <==uncertain_firing== 19454 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #61305: <==negation-removal== 36890 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #64855: <==negation-removal== 75176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #66094: <==uncertain_firing== 36890 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #66168: <==uncertain_firing== 72552 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #72160: <==negation-removal== 72552 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (Pd_secret_b)
                           (at_d_l3)
                           (Bd_secret_b)
                           (initialized))
        :effect (and
                    ; #26093: <==closure== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #38872: <==closure== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #50871: <==closure== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #52268: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #57751: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #62178: <==closure== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #65283: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #71792: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #13188: <==uncertain_firing== 71792 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #19741: <==uncertain_firing== 65283 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #27191: <==uncertain_firing== 26093 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #29893: <==uncertain_firing== 52268 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_b)))

                    ; #37196: <==negation-removal== 71792 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #40715: <==uncertain_firing== 50871 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #47402: <==uncertain_firing== 38872 (pos)
                    (when (and (and (not (Pd_secret_b))
                               (not (Bd_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_b)))

                    ; #47568: <==negation-removal== 62178 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))

                    ; #47948: <==negation-removal== 65283 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #50808: <==negation-removal== 26093 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #52851: <==negation-removal== 57751 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #54978: <==negation-removal== 38872 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #60273: <==negation-removal== 50871 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #80641: <==uncertain_firing== 62178 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #81455: <==negation-removal== 52268 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #83713: <==uncertain_firing== 57751 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #15235: <==closure== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #24528: <==closure== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #58491: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #64620: <==closure== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #79239: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #82870: <==closure== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #83998: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #89424: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #14840: <==negation-removal== 24528 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #21277: <==uncertain_firing== 58491 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #30307: <==negation-removal== 89424 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #32531: <==uncertain_firing== 24528 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))

                    ; #32730: <==uncertain_firing== 89424 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #37155: <==negation-removal== 79239 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #57926: <==negation-removal== 58491 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #64147: <==uncertain_firing== 15235 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #66345: <==negation-removal== 82870 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #71688: <==uncertain_firing== 83998 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #76391: <==negation-removal== 83998 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #81036: <==uncertain_firing== 64620 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #81594: <==uncertain_firing== 82870 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #82396: <==uncertain_firing== 79239 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #89810: <==negation-removal== 64620 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #91354: <==negation-removal== 15235 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #22731: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #41913: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #45127: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #46408: <==closure== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #53486: <==closure== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #60258: <==closure== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #71329: <==closure== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75683: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #12173: <==negation-removal== 60258 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #23302: <==negation-removal== 71329 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25193: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #28349: <==uncertain_firing== 53486 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #37662: <==negation-removal== 22731 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #38638: <==negation-removal== 45127 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #38850: <==negation-removal== 46408 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #40293: <==uncertain_firing== 60258 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #51598: <==negation-removal== 53486 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #58230: <==uncertain_firing== 71329 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #68636: <==uncertain_firing== 75683 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #69878: <==uncertain_firing== 46408 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #70414: <==uncertain_firing== 45127 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #71290: <==uncertain_firing== 41913 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #74042: <==negation-removal== 41913 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #81218: <==negation-removal== 75683 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #11433: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #13846: <==closure== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #21111: <==closure== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #54855: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #75810: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #78429: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #81297: <==closure== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #84300: <==closure== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #17929: <==negation-removal== 21111 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #17974: <==negation-removal== 11433 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #18079: <==uncertain_firing== 54855 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Pa_secret_c)))

                    ; #18130: <==negation-removal== 13846 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #28858: <==negation-removal== 75810 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #28980: <==negation-removal== 81297 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #35615: <==negation-removal== 54855 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #37122: <==uncertain_firing== 78429 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #42599: <==uncertain_firing== 11433 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #51782: <==uncertain_firing== 75810 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #64402: <==uncertain_firing== 81297 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #68994: <==negation-removal== 84300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #72571: <==uncertain_firing== 13846 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #82750: <==negation-removal== 78429 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #84852: <==uncertain_firing== 21111 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #87194: <==uncertain_firing== 84300 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_secret_c))))
                          (not (Ba_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (initialized))
        :effect (and
                    ; #10953: <==closure== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #17241: <==closure== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #18855: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #21089: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #27200: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40718: <==closure== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #61835: <==closure== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79651: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #10010: <==uncertain_firing== 18855 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #16102: <==uncertain_firing== 27200 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #34523: <==uncertain_firing== 17241 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #34849: <==negation-removal== 18855 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #38753: <==uncertain_firing== 21089 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #39740: <==uncertain_firing== 79651 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #48481: <==uncertain_firing== 10953 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #53540: <==uncertain_firing== 61835 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #57890: <==negation-removal== 21089 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #58518: <==negation-removal== 17241 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))

                    ; #71936: <==uncertain_firing== 40718 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #80156: <==negation-removal== 27200 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #81408: <==negation-removal== 61835 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #82181: <==negation-removal== 10953 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #86143: <==negation-removal== 40718 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #96520: <==negation-removal== 79651 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (initialized))
        :effect (and
                    ; #18254: <==closure== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #19087: <==closure== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #29937: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #32818: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #43481: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #59242: <==closure== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #81175: <==closure== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90431: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #12361: <==negation-removal== 29937 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #21285: <==uncertain_firing== 18254 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #22604: <==negation-removal== 81175 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #33051: <==uncertain_firing== 90431 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #39597: <==negation-removal== 19087 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #44829: <==negation-removal== 32818 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #49907: <==negation-removal== 43481 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #50449: <==uncertain_firing== 19087 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #52687: <==uncertain_firing== 81175 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #60988: <==negation-removal== 90431 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63692: <==uncertain_firing== 59242 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #71687: <==negation-removal== 59242 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #77012: <==uncertain_firing== 29937 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #78062: <==uncertain_firing== 43481 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #82516: <==negation-removal== 18254 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #82969: <==uncertain_firing== 32818 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (initialized))
        :effect (and
                    ; #18116: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #32760: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #34367: <==closure== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #47988: <==closure== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #58778: <==closure== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #64529: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #69409: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #86499: <==closure== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24214: <==negation-removal== 34367 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #24656: <==uncertain_firing== 34367 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #31339: <==uncertain_firing== 69409 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #35363: <==negation-removal== 47988 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #39289: <==uncertain_firing== 64529 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #43512: <==uncertain_firing== 47988 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #47987: <==negation-removal== 58778 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #50283: <==uncertain_firing== 86499 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #52635: <==negation-removal== 32760 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #54492: <==negation-removal== 69409 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #63581: <==negation-removal== 64529 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #71541: <==negation-removal== 18116 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #74539: <==negation-removal== 86499 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77251: <==uncertain_firing== 58778 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #81634: <==uncertain_firing== 18116 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #83166: <==uncertain_firing== 32760 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #12541: origin
                    (initialized)

                    ; #13519: <==closure== 34099 (pos)
                    (Pd_secret_d)

                    ; #19254: origin
                    (Bb_secret_b)

                    ; #22735: origin
                    (Ba_secret_a)

                    ; #34099: origin
                    (Bd_secret_d)

                    ; #38219: <==closure== 82253 (pos)
                    (Pc_secret_c)

                    ; #57631: <==closure== 19254 (pos)
                    (Pb_secret_b)

                    ; #75354: <==closure== 22735 (pos)
                    (Pa_secret_a)

                    ; #82253: origin
                    (Bc_secret_c)

                    ; #12153: <==negation-removal== 12541 (pos)
                    (not (not_initialized))

                    ; #13254: <==negation-removal== 82253 (pos)
                    (not (Pc_not_secret_c))

                    ; #16561: <==negation-removal== 75354 (pos)
                    (not (Ba_not_secret_a))

                    ; #31266: <==negation-removal== 22735 (pos)
                    (not (Pa_not_secret_a))

                    ; #45112: <==negation-removal== 57631 (pos)
                    (not (Bb_not_secret_b))

                    ; #64924: <==negation-removal== 19254 (pos)
                    (not (Pb_not_secret_b))

                    ; #69295: <==negation-removal== 38219 (pos)
                    (not (Bc_not_secret_c))

                    ; #86087: <==negation-removal== 13519 (pos)
                    (not (Bd_not_secret_d))

                    ; #99108: <==negation-removal== 34099 (pos)
                    (not (Pd_not_secret_d))))

    (:action move_a_l1_l1
        :precondition (and (at_a_l1)
                           (initialized)
                           (connected_l1_l1))
        :effect (and
                    ; #42433: origin
                    (not_at_a_l1)

                    ; #49145: origin
                    (at_a_l1)

                    ; #42433: <==negation-removal== 49145 (pos)
                    (not (not_at_a_l1))

                    ; #49145: <==negation-removal== 42433 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2)
                           (initialized))
        :effect (and
                    ; #19483: origin
                    (at_a_l2)

                    ; #42433: origin
                    (not_at_a_l1)

                    ; #49145: <==negation-removal== 42433 (pos)
                    (not (at_a_l1))

                    ; #60933: <==negation-removal== 19483 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l1_l3
        :precondition (and (at_a_l1)
                           (connected_l1_l3)
                           (initialized))
        :effect (and
                    ; #11699: origin
                    (at_a_l3)

                    ; #42433: origin
                    (not_at_a_l1)

                    ; #49145: <==negation-removal== 42433 (pos)
                    (not (at_a_l1))

                    ; #53627: <==negation-removal== 11699 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l2_l1
        :precondition (and (connected_l2_l1)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #49145: origin
                    (at_a_l1)

                    ; #60933: origin
                    (not_at_a_l2)

                    ; #19483: <==negation-removal== 60933 (pos)
                    (not (at_a_l2))

                    ; #42433: <==negation-removal== 49145 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (initialized)
                           (connected_l2_l2)
                           (at_a_l2))
        :effect (and
                    ; #19483: origin
                    (at_a_l2)

                    ; #60933: origin
                    (not_at_a_l2)

                    ; #19483: <==negation-removal== 60933 (pos)
                    (not (at_a_l2))

                    ; #60933: <==negation-removal== 19483 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_a_l2))
        :effect (and
                    ; #11699: origin
                    (at_a_l3)

                    ; #60933: origin
                    (not_at_a_l2)

                    ; #19483: <==negation-removal== 60933 (pos)
                    (not (at_a_l2))

                    ; #53627: <==negation-removal== 11699 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #49145: origin
                    (at_a_l1)

                    ; #53627: origin
                    (not_at_a_l3)

                    ; #11699: <==negation-removal== 53627 (pos)
                    (not (at_a_l3))

                    ; #42433: <==negation-removal== 49145 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l3_l2
        :precondition (and (connected_l3_l2)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #19483: origin
                    (at_a_l2)

                    ; #53627: origin
                    (not_at_a_l3)

                    ; #11699: <==negation-removal== 53627 (pos)
                    (not (at_a_l3))

                    ; #60933: <==negation-removal== 19483 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #11699: origin
                    (at_a_l3)

                    ; #53627: origin
                    (not_at_a_l3)

                    ; #11699: <==negation-removal== 53627 (pos)
                    (not (at_a_l3))

                    ; #53627: <==negation-removal== 11699 (pos)
                    (not (not_at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (initialized)
                           (connected_l1_l1))
        :effect (and
                    ; #15663: origin
                    (not_at_b_l1)

                    ; #60137: origin
                    (at_b_l1)

                    ; #15663: <==negation-removal== 60137 (pos)
                    (not (not_at_b_l1))

                    ; #60137: <==negation-removal== 15663 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #15663: origin
                    (not_at_b_l1)

                    ; #29462: origin
                    (at_b_l2)

                    ; #34156: <==negation-removal== 29462 (pos)
                    (not (not_at_b_l2))

                    ; #60137: <==negation-removal== 15663 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (connected_l1_l3)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #15663: origin
                    (not_at_b_l1)

                    ; #23132: origin
                    (at_b_l3)

                    ; #35662: <==negation-removal== 23132 (pos)
                    (not (not_at_b_l3))

                    ; #60137: <==negation-removal== 15663 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #34156: origin
                    (not_at_b_l2)

                    ; #60137: origin
                    (at_b_l1)

                    ; #15663: <==negation-removal== 60137 (pos)
                    (not (not_at_b_l1))

                    ; #29462: <==negation-removal== 34156 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #29462: origin
                    (at_b_l2)

                    ; #34156: origin
                    (not_at_b_l2)

                    ; #29462: <==negation-removal== 34156 (pos)
                    (not (at_b_l2))

                    ; #34156: <==negation-removal== 29462 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (at_b_l2)
                           (connected_l2_l3)
                           (initialized))
        :effect (and
                    ; #23132: origin
                    (at_b_l3)

                    ; #34156: origin
                    (not_at_b_l2)

                    ; #29462: <==negation-removal== 34156 (pos)
                    (not (at_b_l2))

                    ; #35662: <==negation-removal== 23132 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #35662: origin
                    (not_at_b_l3)

                    ; #60137: origin
                    (at_b_l1)

                    ; #15663: <==negation-removal== 60137 (pos)
                    (not (not_at_b_l1))

                    ; #23132: <==negation-removal== 35662 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l2
        :precondition (and (at_b_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #29462: origin
                    (at_b_l2)

                    ; #35662: origin
                    (not_at_b_l3)

                    ; #23132: <==negation-removal== 35662 (pos)
                    (not (at_b_l3))

                    ; #34156: <==negation-removal== 29462 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l3_l3
        :precondition (and (at_b_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #23132: origin
                    (at_b_l3)

                    ; #35662: origin
                    (not_at_b_l3)

                    ; #23132: <==negation-removal== 35662 (pos)
                    (not (at_b_l3))

                    ; #35662: <==negation-removal== 23132 (pos)
                    (not (not_at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #25432: origin
                    (not_at_c_l1)

                    ; #48116: origin
                    (at_c_l1)

                    ; #25432: <==negation-removal== 48116 (pos)
                    (not (not_at_c_l1))

                    ; #48116: <==negation-removal== 25432 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #11972: origin
                    (at_c_l2)

                    ; #25432: origin
                    (not_at_c_l1)

                    ; #43658: <==negation-removal== 11972 (pos)
                    (not (not_at_c_l2))

                    ; #48116: <==negation-removal== 25432 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #25432: origin
                    (not_at_c_l1)

                    ; #75210: origin
                    (at_c_l3)

                    ; #48116: <==negation-removal== 25432 (pos)
                    (not (at_c_l1))

                    ; #66699: <==negation-removal== 75210 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1)
                           (initialized))
        :effect (and
                    ; #43658: origin
                    (not_at_c_l2)

                    ; #48116: origin
                    (at_c_l1)

                    ; #11972: <==negation-removal== 43658 (pos)
                    (not (at_c_l2))

                    ; #25432: <==negation-removal== 48116 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #11972: origin
                    (at_c_l2)

                    ; #43658: origin
                    (not_at_c_l2)

                    ; #11972: <==negation-removal== 43658 (pos)
                    (not (at_c_l2))

                    ; #43658: <==negation-removal== 11972 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (at_c_l2)
                           (connected_l2_l3)
                           (initialized))
        :effect (and
                    ; #43658: origin
                    (not_at_c_l2)

                    ; #75210: origin
                    (at_c_l3)

                    ; #11972: <==negation-removal== 43658 (pos)
                    (not (at_c_l2))

                    ; #66699: <==negation-removal== 75210 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (at_c_l3)
                           (connected_l3_l1)
                           (initialized))
        :effect (and
                    ; #48116: origin
                    (at_c_l1)

                    ; #66699: origin
                    (not_at_c_l3)

                    ; #25432: <==negation-removal== 48116 (pos)
                    (not (not_at_c_l1))

                    ; #75210: <==negation-removal== 66699 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l2
        :precondition (and (at_c_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #11972: origin
                    (at_c_l2)

                    ; #66699: origin
                    (not_at_c_l3)

                    ; #43658: <==negation-removal== 11972 (pos)
                    (not (not_at_c_l2))

                    ; #75210: <==negation-removal== 66699 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #66699: origin
                    (not_at_c_l3)

                    ; #75210: origin
                    (at_c_l3)

                    ; #66699: <==negation-removal== 75210 (pos)
                    (not (not_at_c_l3))

                    ; #75210: <==negation-removal== 66699 (pos)
                    (not (at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (at_d_l1)
                           (initialized)
                           (connected_l1_l1))
        :effect (and
                    ; #14154: origin
                    (at_d_l1)

                    ; #19492: origin
                    (not_at_d_l1)

                    ; #14154: <==negation-removal== 19492 (pos)
                    (not (at_d_l1))

                    ; #19492: <==negation-removal== 14154 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (at_d_l1)
                           (connected_l1_l2)
                           (initialized))
        :effect (and
                    ; #15551: origin
                    (at_d_l2)

                    ; #19492: origin
                    (not_at_d_l1)

                    ; #10126: <==negation-removal== 15551 (pos)
                    (not (not_at_d_l2))

                    ; #14154: <==negation-removal== 19492 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l3
        :precondition (and (at_d_l1)
                           (connected_l1_l3)
                           (initialized))
        :effect (and
                    ; #19492: origin
                    (not_at_d_l1)

                    ; #19837: origin
                    (at_d_l3)

                    ; #11861: <==negation-removal== 19837 (pos)
                    (not (not_at_d_l3))

                    ; #14154: <==negation-removal== 19492 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1)
                           (initialized))
        :effect (and
                    ; #10126: origin
                    (not_at_d_l2)

                    ; #14154: origin
                    (at_d_l1)

                    ; #15551: <==negation-removal== 10126 (pos)
                    (not (at_d_l2))

                    ; #19492: <==negation-removal== 14154 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #10126: origin
                    (not_at_d_l2)

                    ; #15551: origin
                    (at_d_l2)

                    ; #10126: <==negation-removal== 15551 (pos)
                    (not (not_at_d_l2))

                    ; #15551: <==negation-removal== 10126 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (at_d_l2)
                           (connected_l2_l3)
                           (initialized))
        :effect (and
                    ; #10126: origin
                    (not_at_d_l2)

                    ; #19837: origin
                    (at_d_l3)

                    ; #11861: <==negation-removal== 19837 (pos)
                    (not (not_at_d_l3))

                    ; #15551: <==negation-removal== 10126 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_d_l3)
                           (initialized))
        :effect (and
                    ; #11861: origin
                    (not_at_d_l3)

                    ; #14154: origin
                    (at_d_l1)

                    ; #19492: <==negation-removal== 14154 (pos)
                    (not (not_at_d_l1))

                    ; #19837: <==negation-removal== 11861 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l2
        :precondition (and (at_d_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #11861: origin
                    (not_at_d_l3)

                    ; #15551: origin
                    (at_d_l2)

                    ; #10126: <==negation-removal== 15551 (pos)
                    (not (not_at_d_l2))

                    ; #19837: <==negation-removal== 11861 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #11861: origin
                    (not_at_d_l3)

                    ; #19837: origin
                    (at_d_l3)

                    ; #11861: <==negation-removal== 19837 (pos)
                    (not (not_at_d_l3))

                    ; #19837: <==negation-removal== 11861 (pos)
                    (not (at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_a)
                           (Ba_secret_a)
                           (initialized))
        :effect (and
                    ; #22575: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #35385: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #40987: <==closure== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #69771: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #74093: <==closure== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #77982: <==closure== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #83749: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #90773: <==closure== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #19505: <==uncertain_firing== 22575 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23640: <==uncertain_firing== 90773 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #26699: <==negation-removal== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #30722: <==negation-removal== 40987 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #31080: <==negation-removal== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #32075: <==negation-removal== 74093 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #33558: <==uncertain_firing== 74093 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #38772: <==negation-removal== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #44641: <==uncertain_firing== 40987 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #53212: <==negation-removal== 77982 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #54155: <==negation-removal== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #60257: <==uncertain_firing== 77982 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #62767: <==uncertain_firing== 69771 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_a)))

                    ; #63784: <==uncertain_firing== 83749 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #87906: <==uncertain_firing== 35385 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #88582: <==negation-removal== 90773 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (initialized)
                           (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #13309: <==closure== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #13562: <==closure== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #21642: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #38038: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #42571: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #62146: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84510: <==closure== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #84839: <==closure== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #21209: <==uncertain_firing== 21642 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #26103: <==uncertain_firing== 38038 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #31266: <==uncertain_firing== 13309 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #32486: <==uncertain_firing== 84510 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #34170: <==negation-removal== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #39804: <==negation-removal== 84839 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #41419: <==negation-removal== 13562 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41986: <==uncertain_firing== 62146 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #42947: <==uncertain_firing== 84839 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #56678: <==negation-removal== 84510 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #63166: <==negation-removal== 13309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #68739: <==uncertain_firing== 42571 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71052: <==negation-removal== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #78339: <==negation-removal== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #87232: <==uncertain_firing== 13562 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #88797: <==negation-removal== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (Pa_secret_a)
                           (at_a_l3)
                           (Ba_secret_a)
                           (initialized))
        :effect (and
                    ; #11479: <==closure== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #20016: <==closure== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #49078: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #54851: <==closure== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #62577: <==closure== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #68781: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #80856: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #85399: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #13090: <==uncertain_firing== 11479 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #13510: <==uncertain_firing== 20016 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #13610: <==negation-removal== 62577 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #13883: <==uncertain_firing== 54851 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #36007: <==uncertain_firing== 85399 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #49473: <==negation-removal== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #50571: <==negation-removal== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #52656: <==uncertain_firing== 49078 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #54369: <==negation-removal== 54851 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #64393: <==uncertain_firing== 80856 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #68043: <==uncertain_firing== 62577 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #70992: <==negation-removal== 11479 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #73088: <==negation-removal== 20016 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73968: <==negation-removal== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #74977: <==uncertain_firing== 68781 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #87439: <==negation-removal== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #25555: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #27325: <==closure== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #47320: <==closure== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #71188: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #73049: <==closure== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #75177: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #75546: <==closure== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #84767: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #11529: <==negation-removal== 47320 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #16925: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #21752: <==uncertain_firing== 75177 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #22861: <==uncertain_firing== 25555 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))

                    ; #23167: <==uncertain_firing== 27325 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #29372: <==uncertain_firing== 84767 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #32124: <==uncertain_firing== 71188 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #35110: <==negation-removal== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52827: <==uncertain_firing== 73049 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #54275: <==negation-removal== 73049 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #55803: <==negation-removal== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60441: <==negation-removal== 75546 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #64709: <==negation-removal== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77833: <==negation-removal== 27325 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #79097: <==uncertain_firing== 47320 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #86624: <==negation-removal== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #15352: <==closure== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31673: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #36046: <==closure== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #60279: <==closure== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #77057: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #77064: <==closure== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #78674: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #83840: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14966: <==negation-removal== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #19963: <==negation-removal== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #21195: <==uncertain_firing== 77064 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #30098: <==negation-removal== 77064 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #47613: <==uncertain_firing== 83840 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49782: <==negation-removal== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #52562: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #53138: <==negation-removal== 60279 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #53220: <==uncertain_firing== 15352 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #54411: <==uncertain_firing== 60279 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #56116: <==uncertain_firing== 78674 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #62582: <==negation-removal== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #70573: <==uncertain_firing== 36046 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #70856: <==uncertain_firing== 77057 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #82354: <==negation-removal== 15352 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #89562: <==negation-removal== 36046 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #25952: <==closure== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33514: <==closure== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #39890: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #60729: <==closure== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #61482: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64622: <==closure== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #80947: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #87820: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #11727: <==uncertain_firing== 64622 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #15959: <==uncertain_firing== 87820 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #22811: <==negation-removal== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #23117: <==negation-removal== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #27577: <==uncertain_firing== 39890 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #32991: <==uncertain_firing== 61482 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #49553: <==negation-removal== 33514 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #55894: <==negation-removal== 60729 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #56842: <==uncertain_firing== 33514 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #60207: <==negation-removal== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #63084: <==negation-removal== 64622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #65239: <==uncertain_firing== 80947 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #69460: <==uncertain_firing== 60729 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_b)))

                    ; #82731: <==negation-removal== 25952 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86903: <==negation-removal== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89392: <==uncertain_firing== 25952 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (at_a_l1)
                           (Pa_secret_c)
                           (initialized))
        :effect (and
                    ; #12406: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #21307: <==closure== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26591: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #47550: <==closure== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #57743: <==closure== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #69628: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #82968: <==closure== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #86219: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #12693: <==negation-removal== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #30671: <==negation-removal== 21307 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #34917: <==uncertain_firing== 12406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #37476: <==uncertain_firing== 86219 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #47939: <==uncertain_firing== 57743 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #49535: <==uncertain_firing== 69628 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #49671: <==negation-removal== 57743 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #50523: <==negation-removal== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #58086: <==negation-removal== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #68938: <==negation-removal== 47550 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #71861: <==uncertain_firing== 26591 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #77126: <==uncertain_firing== 47550 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84089: <==negation-removal== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #85470: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #85730: <==uncertain_firing== 21307 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #91397: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #15741: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #16112: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #16580: <==closure== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30426: <==closure== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42656: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #47786: <==closure== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #52629: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #58871: <==closure== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #10645: <==negation-removal== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #20159: <==uncertain_firing== 42656 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #23715: <==uncertain_firing== 52629 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #25706: <==uncertain_firing== 16112 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #29083: <==uncertain_firing== 58871 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #37498: <==negation-removal== 30426 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #50194: <==uncertain_firing== 47786 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #54672: <==negation-removal== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #56271: <==negation-removal== 58871 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #57857: <==negation-removal== 47786 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #68955: <==uncertain_firing== 16580 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #71699: <==negation-removal== 16580 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #72435: <==negation-removal== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #74605: <==negation-removal== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #80916: <==uncertain_firing== 30426 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #83498: <==uncertain_firing== 15741 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #26888: <==closure== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30097: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #31673: <==closure== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42446: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #51207: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #70510: <==closure== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #79280: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #90556: <==closure== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #16030: <==uncertain_firing== 79280 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #16430: <==negation-removal== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #20015: <==negation-removal== 90556 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #21989: <==uncertain_firing== 30097 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #36154: <==uncertain_firing== 26888 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #40824: <==uncertain_firing== 42446 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #55082: <==negation-removal== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #56992: <==uncertain_firing== 51207 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #57732: <==uncertain_firing== 70510 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58268: <==uncertain_firing== 90556 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #69541: <==negation-removal== 70510 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #70897: <==negation-removal== 26888 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #77314: <==negation-removal== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #85792: <==negation-removal== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #89744: <==negation-removal== 31673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #91782: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_d)
                           (Ba_secret_d)
                           (initialized))
        :effect (and
                    ; #48538: <==closure== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #51195: <==closure== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #56428: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #57883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #58973: <==closure== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #65123: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #73392: <==closure== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83495: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #14262: <==negation-removal== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #21904: <==uncertain_firing== 48538 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #23940: <==negation-removal== 58973 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28471: <==negation-removal== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #32034: <==negation-removal== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33640: <==uncertain_firing== 57883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36636: <==uncertain_firing== 58973 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #39287: <==uncertain_firing== 56428 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #48633: <==negation-removal== 73392 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #52312: <==uncertain_firing== 83495 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #62426: <==uncertain_firing== 65123 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #62882: <==negation-removal== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #65998: <==uncertain_firing== 73392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #68814: <==uncertain_firing== 51195 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #81662: <==negation-removal== 48538 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #88780: <==negation-removal== 51195 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #29562: <==closure== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #59890: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #68811: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #70744: <==closure== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #83966: <==closure== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #86937: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #87103: <==closure== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #88219: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #10781: <==negation-removal== 29562 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #21586: <==negation-removal== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #31387: <==uncertain_firing== 59890 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #31691: <==negation-removal== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #33930: <==negation-removal== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #34201: <==uncertain_firing== 83966 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #35059: <==negation-removal== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #45028: <==uncertain_firing== 70744 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #46327: <==uncertain_firing== 88219 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #51957: <==negation-removal== 70744 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #69403: <==uncertain_firing== 86937 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #79789: <==uncertain_firing== 29562 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #84125: <==negation-removal== 87103 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #85943: <==negation-removal== 83966 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #87599: <==uncertain_firing== 68811 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #88393: <==uncertain_firing== 87103 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #11828: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18895: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #21047: <==closure== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #44991: <==closure== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #50377: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #59517: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #69515: <==closure== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85071: <==closure== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #11780: <==uncertain_firing== 18895 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14533: <==negation-removal== 69515 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #26090: <==negation-removal== 21047 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #33045: <==uncertain_firing== 69515 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #41184: <==uncertain_firing== 44991 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #45623: <==uncertain_firing== 21047 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #50846: <==negation-removal== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #56121: <==uncertain_firing== 59517 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #61758: <==uncertain_firing== 50377 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #63464: <==negation-removal== 44991 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #64443: <==negation-removal== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #70424: <==negation-removal== 85071 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #79002: <==negation-removal== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #82620: <==uncertain_firing== 11828 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #88476: <==negation-removal== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #90376: <==uncertain_firing== 85071 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Pb_secret_a)
                           (at_b_l1)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #22575: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #35385: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #40987: <==closure== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #69771: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #74093: <==closure== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #77982: <==closure== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #83749: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #90773: <==closure== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #19505: <==uncertain_firing== 22575 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23640: <==uncertain_firing== 90773 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #26699: <==negation-removal== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #30722: <==negation-removal== 40987 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #31080: <==negation-removal== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #32075: <==negation-removal== 74093 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #33558: <==uncertain_firing== 74093 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #38772: <==negation-removal== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #44641: <==uncertain_firing== 40987 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #53212: <==negation-removal== 77982 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #54155: <==negation-removal== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #60257: <==uncertain_firing== 77982 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #62767: <==uncertain_firing== 69771 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_a)))

                    ; #63784: <==uncertain_firing== 83749 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #87906: <==uncertain_firing== 35385 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #88582: <==negation-removal== 90773 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Pb_secret_a)
                           (at_b_l2)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #13309: <==closure== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #13562: <==closure== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #21642: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #38038: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #42571: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #62146: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84510: <==closure== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #84839: <==closure== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #21209: <==uncertain_firing== 21642 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #26103: <==uncertain_firing== 38038 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #31266: <==uncertain_firing== 13309 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #32486: <==uncertain_firing== 84510 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #34170: <==negation-removal== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #39804: <==negation-removal== 84839 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #41419: <==negation-removal== 13562 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41986: <==uncertain_firing== 62146 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #42947: <==uncertain_firing== 84839 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #56678: <==negation-removal== 84510 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #63166: <==negation-removal== 13309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #68739: <==uncertain_firing== 42571 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71052: <==negation-removal== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #78339: <==negation-removal== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #87232: <==uncertain_firing== 13562 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #88797: <==negation-removal== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (at_b_l3)
                           (Pb_secret_a)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #11479: <==closure== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #20016: <==closure== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #49078: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #54851: <==closure== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #62577: <==closure== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #68781: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #80856: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #85399: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #13090: <==uncertain_firing== 11479 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #13510: <==uncertain_firing== 20016 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #13610: <==negation-removal== 62577 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #13883: <==uncertain_firing== 54851 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #36007: <==uncertain_firing== 85399 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #49473: <==negation-removal== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #50571: <==negation-removal== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #52656: <==uncertain_firing== 49078 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #54369: <==negation-removal== 54851 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #64393: <==uncertain_firing== 80856 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #68043: <==uncertain_firing== 62577 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #70992: <==negation-removal== 11479 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #73088: <==negation-removal== 20016 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73968: <==negation-removal== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #74977: <==uncertain_firing== 68781 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #87439: <==negation-removal== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #25555: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #27325: <==closure== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #47320: <==closure== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #71188: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #73049: <==closure== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #75177: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #75546: <==closure== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #84767: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #11529: <==negation-removal== 47320 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #16925: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #21752: <==uncertain_firing== 75177 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #22861: <==uncertain_firing== 25555 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))

                    ; #23167: <==uncertain_firing== 27325 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #29372: <==uncertain_firing== 84767 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #32124: <==uncertain_firing== 71188 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #35110: <==negation-removal== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52827: <==uncertain_firing== 73049 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #54275: <==negation-removal== 73049 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #55803: <==negation-removal== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60441: <==negation-removal== 75546 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #64709: <==negation-removal== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77833: <==negation-removal== 27325 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #79097: <==uncertain_firing== 47320 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #86624: <==negation-removal== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized))
        :effect (and
                    ; #15352: <==closure== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31673: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #36046: <==closure== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #60279: <==closure== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #77057: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #77064: <==closure== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #78674: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #83840: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14966: <==negation-removal== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #19963: <==negation-removal== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #21195: <==uncertain_firing== 77064 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #30098: <==negation-removal== 77064 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #47613: <==uncertain_firing== 83840 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49782: <==negation-removal== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #52562: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #53138: <==negation-removal== 60279 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #53220: <==uncertain_firing== 15352 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #54411: <==uncertain_firing== 60279 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #56116: <==uncertain_firing== 78674 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #62582: <==negation-removal== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #70573: <==uncertain_firing== 36046 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #70856: <==uncertain_firing== 77057 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #82354: <==negation-removal== 15352 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #89562: <==negation-removal== 36046 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (at_b_l3)
                           (Pb_secret_b)
                           (Bb_secret_b)
                           (initialized))
        :effect (and
                    ; #25952: <==closure== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33514: <==closure== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #39890: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #60729: <==closure== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #61482: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64622: <==closure== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #80947: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #87820: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #11727: <==uncertain_firing== 64622 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #15959: <==uncertain_firing== 87820 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #22811: <==negation-removal== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #23117: <==negation-removal== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #27577: <==uncertain_firing== 39890 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #32991: <==uncertain_firing== 61482 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #49553: <==negation-removal== 33514 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #55894: <==negation-removal== 60729 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #56842: <==uncertain_firing== 33514 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #60207: <==negation-removal== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #63084: <==negation-removal== 64622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #65239: <==uncertain_firing== 80947 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #69460: <==uncertain_firing== 60729 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_b)))

                    ; #82731: <==negation-removal== 25952 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86903: <==negation-removal== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89392: <==uncertain_firing== 25952 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Bb_secret_c)
                           (at_b_l1)
                           (initialized)
                           (Pb_secret_c))
        :effect (and
                    ; #12406: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #21307: <==closure== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26591: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #47550: <==closure== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #57743: <==closure== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #69628: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #82968: <==closure== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #86219: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #12693: <==negation-removal== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #30671: <==negation-removal== 21307 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #34917: <==uncertain_firing== 12406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #37476: <==uncertain_firing== 86219 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #47939: <==uncertain_firing== 57743 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #49535: <==uncertain_firing== 69628 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #49671: <==negation-removal== 57743 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #50523: <==negation-removal== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #58086: <==negation-removal== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #68938: <==negation-removal== 47550 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #71861: <==uncertain_firing== 26591 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #77126: <==uncertain_firing== 47550 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84089: <==negation-removal== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #85470: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #85730: <==uncertain_firing== 21307 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #91397: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c)
                           (initialized)
                           (Pb_secret_c))
        :effect (and
                    ; #15741: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #16112: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #16580: <==closure== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30426: <==closure== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42656: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #47786: <==closure== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #52629: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #58871: <==closure== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #10645: <==negation-removal== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #20159: <==uncertain_firing== 42656 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #23715: <==uncertain_firing== 52629 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #25706: <==uncertain_firing== 16112 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #29083: <==uncertain_firing== 58871 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #37498: <==negation-removal== 30426 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #50194: <==uncertain_firing== 47786 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #54672: <==negation-removal== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #56271: <==negation-removal== 58871 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #57857: <==negation-removal== 47786 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #68955: <==uncertain_firing== 16580 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #71699: <==negation-removal== 16580 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #72435: <==negation-removal== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #74605: <==negation-removal== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #80916: <==uncertain_firing== 30426 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #83498: <==uncertain_firing== 15741 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (at_b_l3)
                           (Bb_secret_c)
                           (initialized)
                           (Pb_secret_c))
        :effect (and
                    ; #26888: <==closure== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30097: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #31673: <==closure== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42446: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #51207: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #70510: <==closure== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #79280: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #90556: <==closure== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #16030: <==uncertain_firing== 79280 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #16430: <==negation-removal== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #20015: <==negation-removal== 90556 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #21989: <==uncertain_firing== 30097 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #36154: <==uncertain_firing== 26888 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #40824: <==uncertain_firing== 42446 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #55082: <==negation-removal== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #56992: <==uncertain_firing== 51207 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #57732: <==uncertain_firing== 70510 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58268: <==uncertain_firing== 90556 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #69541: <==negation-removal== 70510 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #70897: <==negation-removal== 26888 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #77314: <==negation-removal== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #85792: <==negation-removal== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #89744: <==negation-removal== 31673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #91782: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #48538: <==closure== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #51195: <==closure== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #56428: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #57883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #58973: <==closure== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #65123: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #73392: <==closure== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83495: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #14262: <==negation-removal== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #21904: <==uncertain_firing== 48538 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #23940: <==negation-removal== 58973 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28471: <==negation-removal== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #32034: <==negation-removal== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33640: <==uncertain_firing== 57883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36636: <==uncertain_firing== 58973 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #39287: <==uncertain_firing== 56428 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #48633: <==negation-removal== 73392 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #52312: <==uncertain_firing== 83495 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #62426: <==uncertain_firing== 65123 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #62882: <==negation-removal== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #65998: <==uncertain_firing== 73392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #68814: <==uncertain_firing== 51195 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #81662: <==negation-removal== 48538 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #88780: <==negation-removal== 51195 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #29562: <==closure== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #59890: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #68811: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #70744: <==closure== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #83966: <==closure== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #86937: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #87103: <==closure== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #88219: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #10781: <==negation-removal== 29562 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #21586: <==negation-removal== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #31387: <==uncertain_firing== 59890 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #31691: <==negation-removal== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #33930: <==negation-removal== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #34201: <==uncertain_firing== 83966 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #35059: <==negation-removal== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #45028: <==uncertain_firing== 70744 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #46327: <==uncertain_firing== 88219 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #51957: <==negation-removal== 70744 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #69403: <==uncertain_firing== 86937 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #79789: <==uncertain_firing== 29562 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #84125: <==negation-removal== 87103 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #85943: <==negation-removal== 83966 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #87599: <==uncertain_firing== 68811 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #88393: <==uncertain_firing== 87103 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #11828: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18895: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #21047: <==closure== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #44991: <==closure== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #50377: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #59517: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #69515: <==closure== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85071: <==closure== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #11780: <==uncertain_firing== 18895 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14533: <==negation-removal== 69515 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #26090: <==negation-removal== 21047 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #33045: <==uncertain_firing== 69515 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #41184: <==uncertain_firing== 44991 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #45623: <==uncertain_firing== 21047 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #50846: <==negation-removal== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #56121: <==uncertain_firing== 59517 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #61758: <==uncertain_firing== 50377 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #63464: <==negation-removal== 44991 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #64443: <==negation-removal== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #70424: <==negation-removal== 85071 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #79002: <==negation-removal== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #82620: <==uncertain_firing== 11828 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #88476: <==negation-removal== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #90376: <==uncertain_firing== 85071 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Bc_secret_a)
                           (initialized)
                           (Pc_secret_a)
                           (at_c_l1))
        :effect (and
                    ; #22575: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #35385: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #40987: <==closure== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #69771: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #74093: <==closure== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #77982: <==closure== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #83749: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #90773: <==closure== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #19505: <==uncertain_firing== 22575 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23640: <==uncertain_firing== 90773 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #26699: <==negation-removal== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #30722: <==negation-removal== 40987 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #31080: <==negation-removal== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #32075: <==negation-removal== 74093 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #33558: <==uncertain_firing== 74093 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #38772: <==negation-removal== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #44641: <==uncertain_firing== 40987 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #53212: <==negation-removal== 77982 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #54155: <==negation-removal== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #60257: <==uncertain_firing== 77982 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #62767: <==uncertain_firing== 69771 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_a)))

                    ; #63784: <==uncertain_firing== 83749 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #87906: <==uncertain_firing== 35385 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #88582: <==negation-removal== 90773 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (at_c_l2)
                           (Pc_secret_a)
                           (initialized))
        :effect (and
                    ; #13309: <==closure== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #13562: <==closure== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #21642: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #38038: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #42571: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #62146: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84510: <==closure== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #84839: <==closure== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #21209: <==uncertain_firing== 21642 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #26103: <==uncertain_firing== 38038 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #31266: <==uncertain_firing== 13309 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #32486: <==uncertain_firing== 84510 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #34170: <==negation-removal== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #39804: <==negation-removal== 84839 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #41419: <==negation-removal== 13562 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41986: <==uncertain_firing== 62146 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #42947: <==uncertain_firing== 84839 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #56678: <==negation-removal== 84510 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #63166: <==negation-removal== 13309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #68739: <==uncertain_firing== 42571 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71052: <==negation-removal== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #78339: <==negation-removal== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #87232: <==uncertain_firing== 13562 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #88797: <==negation-removal== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #11479: <==closure== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #20016: <==closure== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #49078: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #54851: <==closure== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #62577: <==closure== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #68781: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #80856: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #85399: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #13090: <==uncertain_firing== 11479 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #13510: <==uncertain_firing== 20016 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #13610: <==negation-removal== 62577 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #13883: <==uncertain_firing== 54851 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #36007: <==uncertain_firing== 85399 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #49473: <==negation-removal== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #50571: <==negation-removal== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #52656: <==uncertain_firing== 49078 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #54369: <==negation-removal== 54851 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #64393: <==uncertain_firing== 80856 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #68043: <==uncertain_firing== 62577 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #70992: <==negation-removal== 11479 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #73088: <==negation-removal== 20016 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73968: <==negation-removal== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #74977: <==uncertain_firing== 68781 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #87439: <==negation-removal== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (Pc_secret_b)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #25555: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #27325: <==closure== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #47320: <==closure== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #71188: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #73049: <==closure== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #75177: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #75546: <==closure== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #84767: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #11529: <==negation-removal== 47320 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #16925: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #21752: <==uncertain_firing== 75177 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #22861: <==uncertain_firing== 25555 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))

                    ; #23167: <==uncertain_firing== 27325 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #29372: <==uncertain_firing== 84767 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #32124: <==uncertain_firing== 71188 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #35110: <==negation-removal== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52827: <==uncertain_firing== 73049 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #54275: <==negation-removal== 73049 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #55803: <==negation-removal== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60441: <==negation-removal== 75546 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #64709: <==negation-removal== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77833: <==negation-removal== 27325 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #79097: <==uncertain_firing== 47320 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #86624: <==negation-removal== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b)
                           (initialized))
        :effect (and
                    ; #15352: <==closure== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31673: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #36046: <==closure== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #60279: <==closure== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #77057: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #77064: <==closure== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #78674: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #83840: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14966: <==negation-removal== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #19963: <==negation-removal== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #21195: <==uncertain_firing== 77064 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #30098: <==negation-removal== 77064 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #47613: <==uncertain_firing== 83840 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49782: <==negation-removal== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #52562: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #53138: <==negation-removal== 60279 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #53220: <==uncertain_firing== 15352 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #54411: <==uncertain_firing== 60279 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #56116: <==uncertain_firing== 78674 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #62582: <==negation-removal== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #70573: <==uncertain_firing== 36046 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #70856: <==uncertain_firing== 77057 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #82354: <==negation-removal== 15352 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #89562: <==negation-removal== 36046 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_b)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #25952: <==closure== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33514: <==closure== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #39890: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #60729: <==closure== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #61482: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64622: <==closure== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #80947: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #87820: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #11727: <==uncertain_firing== 64622 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #15959: <==uncertain_firing== 87820 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #22811: <==negation-removal== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #23117: <==negation-removal== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #27577: <==uncertain_firing== 39890 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #32991: <==uncertain_firing== 61482 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #49553: <==negation-removal== 33514 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #55894: <==negation-removal== 60729 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #56842: <==uncertain_firing== 33514 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #60207: <==negation-removal== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #63084: <==negation-removal== 64622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #65239: <==uncertain_firing== 80947 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #69460: <==uncertain_firing== 60729 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_b)))

                    ; #82731: <==negation-removal== 25952 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86903: <==negation-removal== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89392: <==uncertain_firing== 25952 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #12406: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #21307: <==closure== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26591: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #47550: <==closure== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #57743: <==closure== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #69628: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #82968: <==closure== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #86219: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #12693: <==negation-removal== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #30671: <==negation-removal== 21307 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #34917: <==uncertain_firing== 12406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #37476: <==uncertain_firing== 86219 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #47939: <==uncertain_firing== 57743 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #49535: <==uncertain_firing== 69628 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #49671: <==negation-removal== 57743 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #50523: <==negation-removal== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #58086: <==negation-removal== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #68938: <==negation-removal== 47550 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #71861: <==uncertain_firing== 26591 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #77126: <==uncertain_firing== 47550 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84089: <==negation-removal== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #85470: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #85730: <==uncertain_firing== 21307 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #91397: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized))
        :effect (and
                    ; #15741: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #16112: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #16580: <==closure== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30426: <==closure== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42656: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #47786: <==closure== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #52629: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #58871: <==closure== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #10645: <==negation-removal== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #20159: <==uncertain_firing== 42656 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #23715: <==uncertain_firing== 52629 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #25706: <==uncertain_firing== 16112 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #29083: <==uncertain_firing== 58871 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #37498: <==negation-removal== 30426 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #50194: <==uncertain_firing== 47786 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #54672: <==negation-removal== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #56271: <==negation-removal== 58871 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #57857: <==negation-removal== 47786 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #68955: <==uncertain_firing== 16580 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #71699: <==negation-removal== 16580 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #72435: <==negation-removal== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #74605: <==negation-removal== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #80916: <==uncertain_firing== 30426 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #83498: <==uncertain_firing== 15741 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized))
        :effect (and
                    ; #26888: <==closure== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30097: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #31673: <==closure== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42446: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #51207: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #70510: <==closure== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #79280: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #90556: <==closure== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #16030: <==uncertain_firing== 79280 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #16430: <==negation-removal== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #20015: <==negation-removal== 90556 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #21989: <==uncertain_firing== 30097 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #36154: <==uncertain_firing== 26888 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #40824: <==uncertain_firing== 42446 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #55082: <==negation-removal== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #56992: <==uncertain_firing== 51207 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #57732: <==uncertain_firing== 70510 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58268: <==uncertain_firing== 90556 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #69541: <==negation-removal== 70510 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #70897: <==negation-removal== 26888 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #77314: <==negation-removal== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #85792: <==negation-removal== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #89744: <==negation-removal== 31673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #91782: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #48538: <==closure== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #51195: <==closure== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #56428: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #57883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #58973: <==closure== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #65123: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #73392: <==closure== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83495: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #14262: <==negation-removal== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #21904: <==uncertain_firing== 48538 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #23940: <==negation-removal== 58973 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28471: <==negation-removal== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #32034: <==negation-removal== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33640: <==uncertain_firing== 57883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36636: <==uncertain_firing== 58973 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #39287: <==uncertain_firing== 56428 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #48633: <==negation-removal== 73392 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #52312: <==uncertain_firing== 83495 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #62426: <==uncertain_firing== 65123 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #62882: <==negation-removal== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #65998: <==uncertain_firing== 73392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #68814: <==uncertain_firing== 51195 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #81662: <==negation-removal== 48538 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #88780: <==negation-removal== 51195 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #29562: <==closure== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #59890: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #68811: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #70744: <==closure== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #83966: <==closure== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #86937: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #87103: <==closure== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #88219: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #10781: <==negation-removal== 29562 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #21586: <==negation-removal== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #31387: <==uncertain_firing== 59890 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #31691: <==negation-removal== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #33930: <==negation-removal== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #34201: <==uncertain_firing== 83966 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #35059: <==negation-removal== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #45028: <==uncertain_firing== 70744 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #46327: <==uncertain_firing== 88219 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #51957: <==negation-removal== 70744 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #69403: <==uncertain_firing== 86937 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #79789: <==uncertain_firing== 29562 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #84125: <==negation-removal== 87103 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #85943: <==negation-removal== 83966 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #87599: <==uncertain_firing== 68811 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #88393: <==uncertain_firing== 87103 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #11828: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18895: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #21047: <==closure== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #44991: <==closure== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #50377: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #59517: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #69515: <==closure== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85071: <==closure== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #11780: <==uncertain_firing== 18895 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14533: <==negation-removal== 69515 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #26090: <==negation-removal== 21047 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #33045: <==uncertain_firing== 69515 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #41184: <==uncertain_firing== 44991 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #45623: <==uncertain_firing== 21047 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #50846: <==negation-removal== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #56121: <==uncertain_firing== 59517 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #61758: <==uncertain_firing== 50377 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #63464: <==negation-removal== 44991 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #64443: <==negation-removal== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #70424: <==negation-removal== 85071 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #79002: <==negation-removal== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #82620: <==uncertain_firing== 11828 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #88476: <==negation-removal== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #90376: <==uncertain_firing== 85071 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (initialized))
        :effect (and
                    ; #22575: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #35385: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #40987: <==closure== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #69771: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #74093: <==closure== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #77982: <==closure== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #83749: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #90773: <==closure== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #19505: <==uncertain_firing== 22575 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23640: <==uncertain_firing== 90773 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #26699: <==negation-removal== 69771 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #30722: <==negation-removal== 40987 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #31080: <==negation-removal== 83749 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #32075: <==negation-removal== 74093 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #33558: <==uncertain_firing== 74093 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #38772: <==negation-removal== 22575 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #44641: <==uncertain_firing== 40987 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_a)))

                    ; #53212: <==negation-removal== 77982 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #54155: <==negation-removal== 35385 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #60257: <==uncertain_firing== 77982 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #62767: <==uncertain_firing== 69771 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_a)))

                    ; #63784: <==uncertain_firing== 83749 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #87906: <==uncertain_firing== 35385 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #88582: <==negation-removal== 90773 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (initialized))
        :effect (and
                    ; #13309: <==closure== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #13562: <==closure== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #21642: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #38038: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #42571: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #62146: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #84510: <==closure== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #84839: <==closure== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #21209: <==uncertain_firing== 21642 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #26103: <==uncertain_firing== 38038 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #31266: <==uncertain_firing== 13309 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #32486: <==uncertain_firing== 84510 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #34170: <==negation-removal== 42571 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #39804: <==negation-removal== 84839 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #41419: <==negation-removal== 13562 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41986: <==uncertain_firing== 62146 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #42947: <==uncertain_firing== 84839 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #56678: <==negation-removal== 84510 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #63166: <==negation-removal== 13309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #68739: <==uncertain_firing== 42571 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #71052: <==negation-removal== 21642 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #78339: <==negation-removal== 62146 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #87232: <==uncertain_firing== 13562 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #88797: <==negation-removal== 38038 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (at_d_l3)
                           (Bd_secret_a)
                           (Pd_secret_a)
                           (initialized))
        :effect (and
                    ; #11479: <==closure== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #20016: <==closure== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #49078: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #54851: <==closure== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #62577: <==closure== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #68781: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #80856: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #85399: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #13090: <==uncertain_firing== 11479 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #13510: <==uncertain_firing== 20016 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #13610: <==negation-removal== 62577 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #13883: <==uncertain_firing== 54851 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #36007: <==uncertain_firing== 85399 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #49473: <==negation-removal== 80856 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #50571: <==negation-removal== 49078 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #52656: <==uncertain_firing== 49078 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #54369: <==negation-removal== 54851 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #64393: <==uncertain_firing== 80856 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #68043: <==uncertain_firing== 62577 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #70992: <==negation-removal== 11479 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #73088: <==negation-removal== 20016 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #73968: <==negation-removal== 68781 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #74977: <==uncertain_firing== 68781 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #87439: <==negation-removal== 85399 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Pd_secret_b)
                           (at_d_l1)
                           (Bd_secret_b)
                           (initialized))
        :effect (and
                    ; #25555: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #27325: <==closure== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #47320: <==closure== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #71188: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #73049: <==closure== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #75177: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #75546: <==closure== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #84767: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #11529: <==negation-removal== 47320 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #16925: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #21752: <==uncertain_firing== 75177 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #22861: <==uncertain_firing== 25555 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))

                    ; #23167: <==uncertain_firing== 27325 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #29372: <==uncertain_firing== 84767 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #32124: <==uncertain_firing== 71188 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #35110: <==negation-removal== 25555 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52827: <==uncertain_firing== 73049 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #54275: <==negation-removal== 73049 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #55803: <==negation-removal== 75177 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #60441: <==negation-removal== 75546 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #64709: <==negation-removal== 71188 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77833: <==negation-removal== 27325 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #79097: <==uncertain_firing== 47320 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #86624: <==negation-removal== 84767 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_b)
                           (initialized)
                           (Pd_secret_b))
        :effect (and
                    ; #15352: <==closure== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31673: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #36046: <==closure== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #60279: <==closure== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #77057: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #77064: <==closure== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #78674: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #83840: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14966: <==negation-removal== 77057 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #19963: <==negation-removal== 83840 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #21195: <==uncertain_firing== 77064 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #30098: <==negation-removal== 77064 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #47613: <==uncertain_firing== 83840 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49782: <==negation-removal== 78674 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #52562: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #53138: <==negation-removal== 60279 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #53220: <==uncertain_firing== 15352 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #54411: <==uncertain_firing== 60279 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #56116: <==uncertain_firing== 78674 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #62582: <==negation-removal== 31673 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #70573: <==uncertain_firing== 36046 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #70856: <==uncertain_firing== 77057 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #82354: <==negation-removal== 15352 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #89562: <==negation-removal== 36046 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (Pd_secret_b)
                           (at_d_l3)
                           (Bd_secret_b)
                           (initialized))
        :effect (and
                    ; #25952: <==closure== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33514: <==closure== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Pd_secret_b))

                    ; #39890: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #60729: <==closure== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #61482: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64622: <==closure== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #80947: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #87820: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (Bd_secret_b))

                    ; #11727: <==uncertain_firing== 64622 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #15959: <==uncertain_firing== 87820 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #22811: <==negation-removal== 87820 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Pd_not_secret_b)))

                    ; #23117: <==negation-removal== 80947 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #27577: <==uncertain_firing== 39890 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #32991: <==uncertain_firing== 61482 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #49553: <==negation-removal== 33514 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l3)))
                          (not (Bd_not_secret_b)))

                    ; #55894: <==negation-removal== 60729 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #56842: <==uncertain_firing== 33514 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #60207: <==negation-removal== 61482 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #63084: <==negation-removal== 64622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #65239: <==uncertain_firing== 80947 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #69460: <==uncertain_firing== 60729 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_b)))

                    ; #82731: <==negation-removal== 25952 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86903: <==negation-removal== 39890 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89392: <==uncertain_firing== 25952 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #12406: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #21307: <==closure== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26591: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #47550: <==closure== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #57743: <==closure== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #69628: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #82968: <==closure== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #86219: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #12693: <==negation-removal== 26591 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #30671: <==negation-removal== 21307 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #34917: <==uncertain_firing== 12406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #37476: <==uncertain_firing== 86219 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #47939: <==uncertain_firing== 57743 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #49535: <==uncertain_firing== 69628 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #49671: <==negation-removal== 57743 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #50523: <==negation-removal== 12406 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #58086: <==negation-removal== 69628 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #68938: <==negation-removal== 47550 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #71861: <==uncertain_firing== 26591 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #77126: <==uncertain_firing== 47550 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84089: <==negation-removal== 86219 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #85470: <==negation-removal== 82968 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #85730: <==uncertain_firing== 21307 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #91397: <==uncertain_firing== 82968 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #15741: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #16112: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #16580: <==closure== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30426: <==closure== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42656: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #47786: <==closure== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #52629: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #58871: <==closure== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #10645: <==negation-removal== 16112 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #20159: <==uncertain_firing== 42656 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #23715: <==uncertain_firing== 52629 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #25706: <==uncertain_firing== 16112 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #29083: <==uncertain_firing== 58871 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #37498: <==negation-removal== 30426 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #50194: <==uncertain_firing== 47786 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #54672: <==negation-removal== 15741 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #56271: <==negation-removal== 58871 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #57857: <==negation-removal== 47786 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #68955: <==uncertain_firing== 16580 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #71699: <==negation-removal== 16580 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #72435: <==negation-removal== 52629 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #74605: <==negation-removal== 42656 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #80916: <==uncertain_firing== 30426 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #83498: <==uncertain_firing== 15741 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #26888: <==closure== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #30097: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #31673: <==closure== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #42446: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #51207: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #70510: <==closure== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #79280: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #90556: <==closure== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #16030: <==uncertain_firing== 79280 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #16430: <==negation-removal== 30097 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #20015: <==negation-removal== 90556 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #21989: <==uncertain_firing== 30097 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #36154: <==uncertain_firing== 26888 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #40824: <==uncertain_firing== 42446 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #55082: <==negation-removal== 79280 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #56992: <==uncertain_firing== 51207 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #57732: <==uncertain_firing== 70510 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #58268: <==uncertain_firing== 90556 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #69541: <==negation-removal== 70510 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #70897: <==negation-removal== 26888 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #77314: <==negation-removal== 51207 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #85792: <==negation-removal== 42446 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #89744: <==negation-removal== 31673 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #91782: <==uncertain_firing== 31673 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (initialized))
        :effect (and
                    ; #48538: <==closure== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #51195: <==closure== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #56428: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #57883: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #58973: <==closure== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #65123: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #73392: <==closure== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #83495: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #14262: <==negation-removal== 56428 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #21904: <==uncertain_firing== 48538 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #23940: <==negation-removal== 58973 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28471: <==negation-removal== 65123 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #32034: <==negation-removal== 57883 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #33640: <==uncertain_firing== 57883 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36636: <==uncertain_firing== 58973 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #39287: <==uncertain_firing== 56428 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #48633: <==negation-removal== 73392 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #52312: <==uncertain_firing== 83495 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #62426: <==uncertain_firing== 65123 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #62882: <==negation-removal== 83495 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #65998: <==uncertain_firing== 73392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #68814: <==uncertain_firing== 51195 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #81662: <==negation-removal== 48538 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #88780: <==negation-removal== 51195 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (initialized))
        :effect (and
                    ; #29562: <==closure== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #59890: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #68811: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #70744: <==closure== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #83966: <==closure== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #86937: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #87103: <==closure== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #88219: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #10781: <==negation-removal== 29562 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #21586: <==negation-removal== 86937 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #31387: <==uncertain_firing== 59890 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #31691: <==negation-removal== 88219 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #33930: <==negation-removal== 59890 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #34201: <==uncertain_firing== 83966 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #35059: <==negation-removal== 68811 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #45028: <==uncertain_firing== 70744 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #46327: <==uncertain_firing== 88219 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #51957: <==negation-removal== 70744 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #69403: <==uncertain_firing== 86937 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #79789: <==uncertain_firing== 29562 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #84125: <==negation-removal== 87103 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #85943: <==negation-removal== 83966 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #87599: <==uncertain_firing== 68811 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #88393: <==uncertain_firing== 87103 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (initialized))
        :effect (and
                    ; #11828: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18895: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #21047: <==closure== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #44991: <==closure== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #50377: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #59517: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #69515: <==closure== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #85071: <==closure== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #11780: <==uncertain_firing== 18895 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #14533: <==negation-removal== 69515 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #26090: <==negation-removal== 21047 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #33045: <==uncertain_firing== 69515 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #41184: <==uncertain_firing== 44991 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #45623: <==uncertain_firing== 21047 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #50846: <==negation-removal== 59517 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #56121: <==uncertain_firing== 59517 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #61758: <==uncertain_firing== 50377 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #63464: <==negation-removal== 44991 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #64443: <==negation-removal== 18895 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #70424: <==negation-removal== 85071 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #79002: <==negation-removal== 50377 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #82620: <==uncertain_firing== 11828 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #88476: <==negation-removal== 11828 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #90376: <==uncertain_firing== 85071 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))))

)