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
                           (at_a_l1)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #15838: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #19083: <==closure== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #28064: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #28169: <==closure== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #31110: <==closure== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #45903: <==closure== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #54473: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #73292: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #11711: <==negation-removal== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #14837: <==negation-removal== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #16437: <==negation-removal== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #17072: <==uncertain_firing== 54473 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #21475: <==uncertain_firing== 15838 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #26471: <==negation-removal== 19083 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #34529: <==negation-removal== 45903 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #45359: <==uncertain_firing== 73292 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #45648: <==uncertain_firing== 31110 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #53105: <==uncertain_firing== 28064 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #64365: <==uncertain_firing== 45903 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #68400: <==negation-removal== 28169 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #72465: <==negation-removal== 31110 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #75144: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85606: <==uncertain_firing== 28169 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #90991: <==negation-removal== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (Ba_secret_a)
                           (initialized)
                           (at_a_l2)
                           (Pa_secret_a))
        :effect (and
                    ; #14322: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #15502: <==closure== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #17338: <==closure== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #44674: <==closure== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #45452: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #45618: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #57029: <==closure== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #75905: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #14710: <==negation-removal== 17338 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #21370: <==negation-removal== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #26987: <==negation-removal== 15502 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #43279: <==uncertain_firing== 75905 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #44971: <==negation-removal== 57029 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #52096: <==uncertain_firing== 15502 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #52450: <==uncertain_firing== 44674 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #55406: <==uncertain_firing== 45452 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))

                    ; #55839: <==negation-removal== 44674 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #63406: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #65890: <==negation-removal== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #66790: <==uncertain_firing== 57029 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #78824: <==uncertain_firing== 45618 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #80339: <==negation-removal== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #81350: <==uncertain_firing== 17338 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #94860: <==negation-removal== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a)
                           (at_a_l3))
        :effect (and
                    ; #20136: <==closure== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #25798: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #30697: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #41260: <==closure== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #46255: <==closure== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #52452: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #55323: <==closure== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #78082: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #13419: <==negation-removal== 41260 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #15088: <==negation-removal== 55323 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #17123: <==negation-removal== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #17629: <==uncertain_firing== 41260 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #24998: <==negation-removal== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #38813: <==uncertain_firing== 46255 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #42699: <==uncertain_firing== 55323 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46006: <==uncertain_firing== 25798 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #51822: <==uncertain_firing== 78082 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #62470: <==uncertain_firing== 20136 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #69799: <==negation-removal== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #75161: <==negation-removal== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #78693: <==negation-removal== 20136 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #78927: <==uncertain_firing== 30697 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #81136: <==uncertain_firing== 52452 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89709: <==negation-removal== 46255 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #28080: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #35107: <==closure== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #53008: <==closure== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #54488: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #54927: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #69398: <==closure== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #75805: <==closure== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #83958: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #11764: <==negation-removal== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #16515: <==negation-removal== 69398 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #19613: <==uncertain_firing== 53008 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #25909: <==uncertain_firing== 28080 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #38593: <==uncertain_firing== 75805 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #51102: <==negation-removal== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #52479: <==negation-removal== 35107 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #54632: <==uncertain_firing== 54927 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #68400: <==negation-removal== 53008 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #70007: <==negation-removal== 75805 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #72956: <==negation-removal== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #74175: <==uncertain_firing== 54488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #81137: <==uncertain_firing== 69398 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #82347: <==uncertain_firing== 83958 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84440: <==negation-removal== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #89210: <==uncertain_firing== 35107 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #11869: <==closure== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #42676: <==closure== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #64763: <==closure== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #66964: <==closure== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #67120: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #71432: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #80022: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #98592: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11512: <==uncertain_firing== 64763 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #18661: <==negation-removal== 66964 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #20319: <==negation-removal== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #21773: <==negation-removal== 42676 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26843: <==uncertain_firing== 67120 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #33669: <==uncertain_firing== 80022 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #36875: <==negation-removal== 11869 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #44556: <==negation-removal== 64763 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53491: <==negation-removal== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #59251: <==uncertain_firing== 66964 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #61680: <==uncertain_firing== 71432 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #64577: <==negation-removal== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #65092: <==uncertain_firing== 11869 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #69068: <==uncertain_firing== 42676 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #75821: <==negation-removal== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #78175: <==uncertain_firing== 98592 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l3))
        :effect (and
                    ; #17048: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #21786: <==closure== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #33264: <==closure== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #53406: <==closure== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #55830: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #60285: <==closure== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #64591: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80070: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #11723: <==negation-removal== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #14576: <==uncertain_firing== 60285 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #26951: <==uncertain_firing== 55830 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27780: <==negation-removal== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34493: <==negation-removal== 21786 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #36869: <==negation-removal== 60285 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #37880: <==uncertain_firing== 64591 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #39307: <==uncertain_firing== 80070 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #43253: <==uncertain_firing== 21786 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #47938: <==negation-removal== 33264 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53014: <==uncertain_firing== 17048 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #58565: <==uncertain_firing== 53406 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #65119: <==negation-removal== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #70492: <==negation-removal== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #89912: <==uncertain_firing== 33264 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #91484: <==negation-removal== 53406 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #12059: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #16897: <==closure== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #32852: <==closure== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #51169: <==closure== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #72886: <==closure== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75059: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75333: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #98069: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #11644: <==uncertain_firing== 98069 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #12037: <==uncertain_firing== 32852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #13927: <==negation-removal== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #14413: <==negation-removal== 51169 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #15246: <==uncertain_firing== 75059 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #39533: <==uncertain_firing== 12059 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #39721: <==uncertain_firing== 75333 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #42787: <==uncertain_firing== 16897 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #49750: <==negation-removal== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #53433: <==negation-removal== 16897 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59375: <==negation-removal== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #60297: <==negation-removal== 72886 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #69993: <==uncertain_firing== 51169 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #79203: <==negation-removal== 32852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #87314: <==uncertain_firing== 72886 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #89019: <==negation-removal== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #15293: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #26925: <==closure== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #33687: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #42842: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #45585: <==closure== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #45731: <==closure== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #59641: <==closure== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #75546: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #29991: <==uncertain_firing== 15293 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #33207: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #33410: <==negation-removal== 45731 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #35177: <==negation-removal== 45585 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #35583: <==negation-removal== 26925 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #41306: <==uncertain_firing== 45731 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #41416: <==uncertain_firing== 26925 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #54996: <==negation-removal== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #57106: <==negation-removal== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #60131: <==uncertain_firing== 45585 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #62001: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #66751: <==negation-removal== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #68189: <==negation-removal== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #77252: <==uncertain_firing== 33687 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #78798: <==uncertain_firing== 59641 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #83413: <==negation-removal== 59641 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (at_a_l3))
        :effect (and
                    ; #22735: <==closure== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #22773: <==closure== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #44027: <==closure== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #44141: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #57943: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #68286: <==closure== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #69058: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #86053: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #18163: <==negation-removal== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #20983: <==uncertain_firing== 69058 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #25908: <==uncertain_firing== 86053 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #28914: <==uncertain_firing== 68286 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #38363: <==negation-removal== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #41740: <==negation-removal== 22773 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #43693: <==negation-removal== 68286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #49218: <==negation-removal== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49775: <==uncertain_firing== 57943 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #52865: <==negation-removal== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #61191: <==uncertain_firing== 44027 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #66723: <==uncertain_firing== 22773 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #75952: <==uncertain_firing== 44141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #76246: <==negation-removal== 44027 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #76835: <==uncertain_firing== 22735 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #83487: <==negation-removal== 22735 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d)
                           (initialized))
        :effect (and
                    ; #12796: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13983: <==closure== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #33071: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #37391: <==closure== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #52838: <==closure== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #65253: <==closure== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #66488: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #88020: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #11336: <==negation-removal== 65253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16013: <==uncertain_firing== 52838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #20332: <==negation-removal== 37391 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #21910: <==uncertain_firing== 65253 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #23751: <==uncertain_firing== 37391 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #29537: <==negation-removal== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #33150: <==uncertain_firing== 12796 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #35074: <==negation-removal== 52838 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #40150: <==uncertain_firing== 66488 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #43366: <==uncertain_firing== 33071 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #47971: <==negation-removal== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #56937: <==uncertain_firing== 13983 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #64579: <==negation-removal== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74182: <==negation-removal== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #75162: <==negation-removal== 13983 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #96772: <==uncertain_firing== 88020 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l2)
                           (initialized))
        :effect (and
                    ; #29990: <==closure== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #31664: <==closure== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #46420: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #65687: <==closure== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #68917: <==closure== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #81685: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #87768: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #87887: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #16758: <==negation-removal== 68917 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #28064: <==negation-removal== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #39927: <==negation-removal== 31664 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #42839: <==uncertain_firing== 46420 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47397: <==negation-removal== 29990 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #47639: <==negation-removal== 65687 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #47640: <==negation-removal== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #49267: <==negation-removal== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #51980: <==uncertain_firing== 29990 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #58413: <==uncertain_firing== 65687 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #61479: <==negation-removal== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #76283: <==uncertain_firing== 87768 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77704: <==uncertain_firing== 68917 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #89024: <==uncertain_firing== 87887 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #91253: <==uncertain_firing== 31664 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #93580: <==uncertain_firing== 81685 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #10004: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #29013: <==closure== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #33255: <==closure== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #40219: <==closure== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #46329: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47478: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48148: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #67991: <==closure== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #14238: <==negation-removal== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #26282: <==negation-removal== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #27907: <==uncertain_firing== 67991 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #28057: <==negation-removal== 33255 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31705: <==uncertain_firing== 10004 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #35027: <==uncertain_firing== 33255 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #42003: <==uncertain_firing== 29013 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #50000: <==negation-removal== 29013 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #51649: <==negation-removal== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #58367: <==uncertain_firing== 47478 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #64375: <==uncertain_firing== 46329 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #66467: <==negation-removal== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #73440: <==negation-removal== 40219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #83154: <==negation-removal== 67991 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #88825: <==uncertain_firing== 48148 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #91954: <==uncertain_firing== 40219 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #15838: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #19083: <==closure== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #28064: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #28169: <==closure== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #31110: <==closure== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #45903: <==closure== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #54473: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #73292: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #11711: <==negation-removal== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #14837: <==negation-removal== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #16437: <==negation-removal== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #17072: <==uncertain_firing== 54473 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #21475: <==uncertain_firing== 15838 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #26471: <==negation-removal== 19083 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #34529: <==negation-removal== 45903 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #45359: <==uncertain_firing== 73292 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #45648: <==uncertain_firing== 31110 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #53105: <==uncertain_firing== 28064 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #64365: <==uncertain_firing== 45903 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #68400: <==negation-removal== 28169 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #72465: <==negation-removal== 31110 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #75144: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85606: <==uncertain_firing== 28169 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #90991: <==negation-removal== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (initialized)
                           (Pb_secret_a)
                           (at_b_l2)
                           (Bb_secret_a))
        :effect (and
                    ; #14322: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #15502: <==closure== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #17338: <==closure== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #44674: <==closure== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #45452: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #45618: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #57029: <==closure== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #75905: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #14710: <==negation-removal== 17338 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #21370: <==negation-removal== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #26987: <==negation-removal== 15502 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #43279: <==uncertain_firing== 75905 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #44971: <==negation-removal== 57029 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #52096: <==uncertain_firing== 15502 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #52450: <==uncertain_firing== 44674 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #55406: <==uncertain_firing== 45452 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))

                    ; #55839: <==negation-removal== 44674 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #63406: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #65890: <==negation-removal== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #66790: <==uncertain_firing== 57029 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #78824: <==uncertain_firing== 45618 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #80339: <==negation-removal== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #81350: <==uncertain_firing== 17338 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #94860: <==negation-removal== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (at_b_l3)
                           (Pb_secret_a)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #20136: <==closure== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #25798: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #30697: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #41260: <==closure== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #46255: <==closure== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #52452: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #55323: <==closure== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #78082: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #13419: <==negation-removal== 41260 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #15088: <==negation-removal== 55323 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #17123: <==negation-removal== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #17629: <==uncertain_firing== 41260 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #24998: <==negation-removal== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #38813: <==uncertain_firing== 46255 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #42699: <==uncertain_firing== 55323 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46006: <==uncertain_firing== 25798 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #51822: <==uncertain_firing== 78082 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #62470: <==uncertain_firing== 20136 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #69799: <==negation-removal== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #75161: <==negation-removal== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #78693: <==negation-removal== 20136 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #78927: <==uncertain_firing== 30697 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #81136: <==uncertain_firing== 52452 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89709: <==negation-removal== 46255 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #28080: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #35107: <==closure== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #53008: <==closure== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #54488: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #54927: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #69398: <==closure== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #75805: <==closure== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #83958: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #11764: <==negation-removal== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #16515: <==negation-removal== 69398 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #19613: <==uncertain_firing== 53008 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #25909: <==uncertain_firing== 28080 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #38593: <==uncertain_firing== 75805 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #51102: <==negation-removal== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #52479: <==negation-removal== 35107 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #54632: <==uncertain_firing== 54927 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #68400: <==negation-removal== 53008 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #70007: <==negation-removal== 75805 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #72956: <==negation-removal== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #74175: <==uncertain_firing== 54488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #81137: <==uncertain_firing== 69398 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #82347: <==uncertain_firing== 83958 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84440: <==negation-removal== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #89210: <==uncertain_firing== 35107 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized)
                           (at_b_l2))
        :effect (and
                    ; #11869: <==closure== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #42676: <==closure== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #64763: <==closure== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #66964: <==closure== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #67120: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #71432: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #80022: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #98592: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11512: <==uncertain_firing== 64763 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #18661: <==negation-removal== 66964 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #20319: <==negation-removal== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #21773: <==negation-removal== 42676 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26843: <==uncertain_firing== 67120 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #33669: <==uncertain_firing== 80022 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #36875: <==negation-removal== 11869 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #44556: <==negation-removal== 64763 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53491: <==negation-removal== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #59251: <==uncertain_firing== 66964 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #61680: <==uncertain_firing== 71432 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #64577: <==negation-removal== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #65092: <==uncertain_firing== 11869 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #69068: <==uncertain_firing== 42676 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #75821: <==negation-removal== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #78175: <==uncertain_firing== 98592 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #17048: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #21786: <==closure== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #33264: <==closure== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #53406: <==closure== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #55830: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #60285: <==closure== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #64591: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80070: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #11723: <==negation-removal== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #14576: <==uncertain_firing== 60285 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #26951: <==uncertain_firing== 55830 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27780: <==negation-removal== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34493: <==negation-removal== 21786 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #36869: <==negation-removal== 60285 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #37880: <==uncertain_firing== 64591 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #39307: <==uncertain_firing== 80070 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #43253: <==uncertain_firing== 21786 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #47938: <==negation-removal== 33264 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53014: <==uncertain_firing== 17048 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #58565: <==uncertain_firing== 53406 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #65119: <==negation-removal== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #70492: <==negation-removal== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #89912: <==uncertain_firing== 33264 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #91484: <==negation-removal== 53406 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #12059: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #16897: <==closure== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #32852: <==closure== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #51169: <==closure== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #72886: <==closure== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75059: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75333: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #98069: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #11644: <==uncertain_firing== 98069 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #12037: <==uncertain_firing== 32852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #13927: <==negation-removal== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #14413: <==negation-removal== 51169 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #15246: <==uncertain_firing== 75059 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #39533: <==uncertain_firing== 12059 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #39721: <==uncertain_firing== 75333 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #42787: <==uncertain_firing== 16897 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #49750: <==negation-removal== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #53433: <==negation-removal== 16897 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59375: <==negation-removal== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #60297: <==negation-removal== 72886 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #69993: <==uncertain_firing== 51169 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #79203: <==negation-removal== 32852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #87314: <==uncertain_firing== 72886 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #89019: <==negation-removal== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (Bb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #15293: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #26925: <==closure== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #33687: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #42842: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #45585: <==closure== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #45731: <==closure== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #59641: <==closure== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #75546: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #29991: <==uncertain_firing== 15293 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #33207: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #33410: <==negation-removal== 45731 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #35177: <==negation-removal== 45585 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #35583: <==negation-removal== 26925 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #41306: <==uncertain_firing== 45731 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #41416: <==uncertain_firing== 26925 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #54996: <==negation-removal== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #57106: <==negation-removal== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #60131: <==uncertain_firing== 45585 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #62001: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #66751: <==negation-removal== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #68189: <==negation-removal== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #77252: <==uncertain_firing== 33687 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #78798: <==uncertain_firing== 59641 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #83413: <==negation-removal== 59641 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (Pb_secret_c)
                           (at_b_l3)
                           (Bb_secret_c)
                           (initialized))
        :effect (and
                    ; #22735: <==closure== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #22773: <==closure== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #44027: <==closure== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #44141: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #57943: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #68286: <==closure== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #69058: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #86053: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #18163: <==negation-removal== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #20983: <==uncertain_firing== 69058 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #25908: <==uncertain_firing== 86053 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #28914: <==uncertain_firing== 68286 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #38363: <==negation-removal== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #41740: <==negation-removal== 22773 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #43693: <==negation-removal== 68286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #49218: <==negation-removal== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49775: <==uncertain_firing== 57943 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #52865: <==negation-removal== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #61191: <==uncertain_firing== 44027 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #66723: <==uncertain_firing== 22773 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #75952: <==uncertain_firing== 44141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #76246: <==negation-removal== 44027 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #76835: <==uncertain_firing== 22735 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #83487: <==negation-removal== 22735 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (initialized)
                           (Bb_secret_d)
                           (Pb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #12796: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13983: <==closure== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #33071: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #37391: <==closure== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #52838: <==closure== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #65253: <==closure== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #66488: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #88020: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #11336: <==negation-removal== 65253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16013: <==uncertain_firing== 52838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #20332: <==negation-removal== 37391 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #21910: <==uncertain_firing== 65253 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #23751: <==uncertain_firing== 37391 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #29537: <==negation-removal== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #33150: <==uncertain_firing== 12796 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #35074: <==negation-removal== 52838 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #40150: <==uncertain_firing== 66488 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #43366: <==uncertain_firing== 33071 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #47971: <==negation-removal== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #56937: <==uncertain_firing== 13983 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #64579: <==negation-removal== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74182: <==negation-removal== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #75162: <==negation-removal== 13983 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #96772: <==uncertain_firing== 88020 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (at_b_l2)
                           (Bb_secret_d))
        :effect (and
                    ; #29990: <==closure== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #31664: <==closure== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #46420: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #65687: <==closure== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #68917: <==closure== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #81685: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #87768: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #87887: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #16758: <==negation-removal== 68917 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #28064: <==negation-removal== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #39927: <==negation-removal== 31664 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #42839: <==uncertain_firing== 46420 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47397: <==negation-removal== 29990 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #47639: <==negation-removal== 65687 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #47640: <==negation-removal== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #49267: <==negation-removal== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #51980: <==uncertain_firing== 29990 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #58413: <==uncertain_firing== 65687 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #61479: <==negation-removal== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #76283: <==uncertain_firing== 87768 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77704: <==uncertain_firing== 68917 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #89024: <==uncertain_firing== 87887 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #91253: <==uncertain_firing== 31664 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #93580: <==uncertain_firing== 81685 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #10004: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #29013: <==closure== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #33255: <==closure== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #40219: <==closure== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #46329: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47478: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48148: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #67991: <==closure== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #14238: <==negation-removal== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #26282: <==negation-removal== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #27907: <==uncertain_firing== 67991 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #28057: <==negation-removal== 33255 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31705: <==uncertain_firing== 10004 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #35027: <==uncertain_firing== 33255 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #42003: <==uncertain_firing== 29013 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #50000: <==negation-removal== 29013 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #51649: <==negation-removal== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #58367: <==uncertain_firing== 47478 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #64375: <==uncertain_firing== 46329 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #66467: <==negation-removal== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #73440: <==negation-removal== 40219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #83154: <==negation-removal== 67991 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #88825: <==uncertain_firing== 48148 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #91954: <==uncertain_firing== 40219 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #15838: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #19083: <==closure== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #28064: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #28169: <==closure== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #31110: <==closure== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #45903: <==closure== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #54473: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #73292: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #11711: <==negation-removal== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #14837: <==negation-removal== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #16437: <==negation-removal== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #17072: <==uncertain_firing== 54473 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #21475: <==uncertain_firing== 15838 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #26471: <==negation-removal== 19083 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #34529: <==negation-removal== 45903 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #45359: <==uncertain_firing== 73292 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #45648: <==uncertain_firing== 31110 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #53105: <==uncertain_firing== 28064 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #64365: <==uncertain_firing== 45903 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #68400: <==negation-removal== 28169 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #72465: <==negation-removal== 31110 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #75144: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85606: <==uncertain_firing== 28169 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #90991: <==negation-removal== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #14322: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #15502: <==closure== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #17338: <==closure== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #44674: <==closure== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #45452: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #45618: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #57029: <==closure== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #75905: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #14710: <==negation-removal== 17338 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #21370: <==negation-removal== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #26987: <==negation-removal== 15502 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #43279: <==uncertain_firing== 75905 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #44971: <==negation-removal== 57029 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #52096: <==uncertain_firing== 15502 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #52450: <==uncertain_firing== 44674 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #55406: <==uncertain_firing== 45452 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))

                    ; #55839: <==negation-removal== 44674 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #63406: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #65890: <==negation-removal== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #66790: <==uncertain_firing== 57029 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #78824: <==uncertain_firing== 45618 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #80339: <==negation-removal== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #81350: <==uncertain_firing== 17338 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #94860: <==negation-removal== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #20136: <==closure== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #25798: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #30697: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #41260: <==closure== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #46255: <==closure== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #52452: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #55323: <==closure== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #78082: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #13419: <==negation-removal== 41260 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #15088: <==negation-removal== 55323 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #17123: <==negation-removal== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #17629: <==uncertain_firing== 41260 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #24998: <==negation-removal== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #38813: <==uncertain_firing== 46255 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #42699: <==uncertain_firing== 55323 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46006: <==uncertain_firing== 25798 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #51822: <==uncertain_firing== 78082 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #62470: <==uncertain_firing== 20136 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #69799: <==negation-removal== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #75161: <==negation-removal== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #78693: <==negation-removal== 20136 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #78927: <==uncertain_firing== 30697 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #81136: <==uncertain_firing== 52452 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89709: <==negation-removal== 46255 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #28080: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #35107: <==closure== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #53008: <==closure== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #54488: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #54927: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #69398: <==closure== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #75805: <==closure== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #83958: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #11764: <==negation-removal== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #16515: <==negation-removal== 69398 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #19613: <==uncertain_firing== 53008 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #25909: <==uncertain_firing== 28080 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #38593: <==uncertain_firing== 75805 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #51102: <==negation-removal== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #52479: <==negation-removal== 35107 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #54632: <==uncertain_firing== 54927 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #68400: <==negation-removal== 53008 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #70007: <==negation-removal== 75805 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #72956: <==negation-removal== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #74175: <==uncertain_firing== 54488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #81137: <==uncertain_firing== 69398 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #82347: <==uncertain_firing== 83958 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84440: <==negation-removal== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #89210: <==uncertain_firing== 35107 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (Pc_secret_b)
                           (Bc_secret_b)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #11869: <==closure== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #42676: <==closure== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #64763: <==closure== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #66964: <==closure== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #67120: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #71432: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #80022: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #98592: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11512: <==uncertain_firing== 64763 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #18661: <==negation-removal== 66964 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #20319: <==negation-removal== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #21773: <==negation-removal== 42676 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26843: <==uncertain_firing== 67120 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #33669: <==uncertain_firing== 80022 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #36875: <==negation-removal== 11869 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #44556: <==negation-removal== 64763 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53491: <==negation-removal== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #59251: <==uncertain_firing== 66964 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #61680: <==uncertain_firing== 71432 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #64577: <==negation-removal== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #65092: <==uncertain_firing== 11869 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #69068: <==uncertain_firing== 42676 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #75821: <==negation-removal== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #78175: <==uncertain_firing== 98592 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #17048: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #21786: <==closure== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #33264: <==closure== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #53406: <==closure== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #55830: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #60285: <==closure== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #64591: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80070: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #11723: <==negation-removal== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #14576: <==uncertain_firing== 60285 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #26951: <==uncertain_firing== 55830 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27780: <==negation-removal== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34493: <==negation-removal== 21786 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #36869: <==negation-removal== 60285 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #37880: <==uncertain_firing== 64591 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #39307: <==uncertain_firing== 80070 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #43253: <==uncertain_firing== 21786 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #47938: <==negation-removal== 33264 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53014: <==uncertain_firing== 17048 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #58565: <==uncertain_firing== 53406 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #65119: <==negation-removal== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #70492: <==negation-removal== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #89912: <==uncertain_firing== 33264 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #91484: <==negation-removal== 53406 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_c)
                           (initialized)
                           (Bc_secret_c))
        :effect (and
                    ; #12059: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #16897: <==closure== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #32852: <==closure== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #51169: <==closure== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #72886: <==closure== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75059: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75333: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #98069: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #11644: <==uncertain_firing== 98069 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #12037: <==uncertain_firing== 32852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #13927: <==negation-removal== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #14413: <==negation-removal== 51169 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #15246: <==uncertain_firing== 75059 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #39533: <==uncertain_firing== 12059 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #39721: <==uncertain_firing== 75333 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #42787: <==uncertain_firing== 16897 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #49750: <==negation-removal== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #53433: <==negation-removal== 16897 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59375: <==negation-removal== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #60297: <==negation-removal== 72886 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #69993: <==uncertain_firing== 51169 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #79203: <==negation-removal== 32852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #87314: <==uncertain_firing== 72886 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #89019: <==negation-removal== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (Pc_secret_c)
                           (Bc_secret_c)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #15293: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #26925: <==closure== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #33687: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #42842: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #45585: <==closure== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #45731: <==closure== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #59641: <==closure== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #75546: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #29991: <==uncertain_firing== 15293 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #33207: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #33410: <==negation-removal== 45731 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #35177: <==negation-removal== 45585 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #35583: <==negation-removal== 26925 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #41306: <==uncertain_firing== 45731 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #41416: <==uncertain_firing== 26925 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #54996: <==negation-removal== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #57106: <==negation-removal== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #60131: <==uncertain_firing== 45585 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #62001: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #66751: <==negation-removal== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #68189: <==negation-removal== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #77252: <==uncertain_firing== 33687 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #78798: <==uncertain_firing== 59641 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #83413: <==negation-removal== 59641 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_c)
                           (initialized)
                           (Bc_secret_c))
        :effect (and
                    ; #22735: <==closure== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #22773: <==closure== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #44027: <==closure== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #44141: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #57943: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #68286: <==closure== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #69058: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #86053: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #18163: <==negation-removal== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #20983: <==uncertain_firing== 69058 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #25908: <==uncertain_firing== 86053 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #28914: <==uncertain_firing== 68286 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #38363: <==negation-removal== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #41740: <==negation-removal== 22773 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #43693: <==negation-removal== 68286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #49218: <==negation-removal== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49775: <==uncertain_firing== 57943 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #52865: <==negation-removal== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #61191: <==uncertain_firing== 44027 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #66723: <==uncertain_firing== 22773 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #75952: <==uncertain_firing== 44141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #76246: <==negation-removal== 44027 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #76835: <==uncertain_firing== 22735 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #83487: <==negation-removal== 22735 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #12796: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13983: <==closure== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #33071: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #37391: <==closure== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #52838: <==closure== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #65253: <==closure== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #66488: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #88020: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #11336: <==negation-removal== 65253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16013: <==uncertain_firing== 52838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #20332: <==negation-removal== 37391 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #21910: <==uncertain_firing== 65253 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #23751: <==uncertain_firing== 37391 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #29537: <==negation-removal== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #33150: <==uncertain_firing== 12796 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #35074: <==negation-removal== 52838 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #40150: <==uncertain_firing== 66488 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #43366: <==uncertain_firing== 33071 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #47971: <==negation-removal== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #56937: <==uncertain_firing== 13983 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #64579: <==negation-removal== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74182: <==negation-removal== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #75162: <==negation-removal== 13983 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #96772: <==uncertain_firing== 88020 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #29990: <==closure== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #31664: <==closure== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #46420: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #65687: <==closure== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #68917: <==closure== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #81685: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #87768: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #87887: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #16758: <==negation-removal== 68917 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #28064: <==negation-removal== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #39927: <==negation-removal== 31664 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #42839: <==uncertain_firing== 46420 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47397: <==negation-removal== 29990 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #47639: <==negation-removal== 65687 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #47640: <==negation-removal== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #49267: <==negation-removal== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #51980: <==uncertain_firing== 29990 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #58413: <==uncertain_firing== 65687 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #61479: <==negation-removal== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #76283: <==uncertain_firing== 87768 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77704: <==uncertain_firing== 68917 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #89024: <==uncertain_firing== 87887 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #91253: <==uncertain_firing== 31664 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #93580: <==uncertain_firing== 81685 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #10004: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #29013: <==closure== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #33255: <==closure== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #40219: <==closure== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #46329: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47478: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48148: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #67991: <==closure== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #14238: <==negation-removal== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #26282: <==negation-removal== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #27907: <==uncertain_firing== 67991 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #28057: <==negation-removal== 33255 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31705: <==uncertain_firing== 10004 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #35027: <==uncertain_firing== 33255 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #42003: <==uncertain_firing== 29013 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #50000: <==negation-removal== 29013 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #51649: <==negation-removal== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #58367: <==uncertain_firing== 47478 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #64375: <==uncertain_firing== 46329 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #66467: <==negation-removal== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #73440: <==negation-removal== 40219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #83154: <==negation-removal== 67991 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #88825: <==uncertain_firing== 48148 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #91954: <==uncertain_firing== 40219 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #15838: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #19083: <==closure== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #28064: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #28169: <==closure== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #31110: <==closure== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #45903: <==closure== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #54473: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #73292: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #11711: <==negation-removal== 73292 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #14837: <==negation-removal== 15838 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #16437: <==negation-removal== 54473 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #17072: <==uncertain_firing== 54473 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #21475: <==uncertain_firing== 15838 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #26471: <==negation-removal== 19083 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #34529: <==negation-removal== 45903 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #45359: <==uncertain_firing== 73292 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #45648: <==uncertain_firing== 31110 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_a))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #53105: <==uncertain_firing== 28064 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #64365: <==uncertain_firing== 45903 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #68400: <==negation-removal== 28169 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #72465: <==negation-removal== 31110 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #75144: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85606: <==uncertain_firing== 28169 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #90991: <==negation-removal== 28064 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #14322: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #15502: <==closure== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #17338: <==closure== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #44674: <==closure== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #45452: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #45618: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #57029: <==closure== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #75905: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #14710: <==negation-removal== 17338 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #21370: <==negation-removal== 75905 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #26987: <==negation-removal== 15502 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #43279: <==uncertain_firing== 75905 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #44971: <==negation-removal== 57029 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #52096: <==uncertain_firing== 15502 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #52450: <==uncertain_firing== 44674 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #55406: <==uncertain_firing== 45452 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))

                    ; #55839: <==negation-removal== 44674 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #63406: <==uncertain_firing== 14322 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #65890: <==negation-removal== 45618 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #66790: <==uncertain_firing== 57029 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #78824: <==uncertain_firing== 45618 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #80339: <==negation-removal== 45452 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #81350: <==uncertain_firing== 17338 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #94860: <==negation-removal== 14322 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #20136: <==closure== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #25798: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #30697: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #41260: <==closure== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #46255: <==closure== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #52452: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #55323: <==closure== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #78082: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #13419: <==negation-removal== 41260 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #15088: <==negation-removal== 55323 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #17123: <==negation-removal== 78082 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #17629: <==uncertain_firing== 41260 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #24998: <==negation-removal== 52452 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #38813: <==uncertain_firing== 46255 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #42699: <==uncertain_firing== 55323 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #46006: <==uncertain_firing== 25798 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #51822: <==uncertain_firing== 78082 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #62470: <==uncertain_firing== 20136 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #69799: <==negation-removal== 25798 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #75161: <==negation-removal== 30697 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #78693: <==negation-removal== 20136 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #78927: <==uncertain_firing== 30697 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #81136: <==uncertain_firing== 52452 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #89709: <==negation-removal== 46255 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #28080: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #35107: <==closure== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #53008: <==closure== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #54488: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #54927: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #69398: <==closure== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #75805: <==closure== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #83958: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #11764: <==negation-removal== 28080 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #16515: <==negation-removal== 69398 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #19613: <==uncertain_firing== 53008 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #25909: <==uncertain_firing== 28080 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #38593: <==uncertain_firing== 75805 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #51102: <==negation-removal== 83958 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #52479: <==negation-removal== 35107 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #54632: <==uncertain_firing== 54927 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #68400: <==negation-removal== 53008 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #70007: <==negation-removal== 75805 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #72956: <==negation-removal== 54488 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #74175: <==uncertain_firing== 54488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #81137: <==uncertain_firing== 69398 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #82347: <==uncertain_firing== 83958 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #84440: <==negation-removal== 54927 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #89210: <==uncertain_firing== 35107 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #11869: <==closure== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #42676: <==closure== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #64763: <==closure== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #66964: <==closure== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #67120: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #71432: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #80022: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #98592: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #11512: <==uncertain_firing== 64763 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))

                    ; #18661: <==negation-removal== 66964 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #20319: <==negation-removal== 80022 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #21773: <==negation-removal== 42676 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26843: <==uncertain_firing== 67120 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #33669: <==uncertain_firing== 80022 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #36875: <==negation-removal== 11869 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #44556: <==negation-removal== 64763 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53491: <==negation-removal== 71432 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #59251: <==uncertain_firing== 66964 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #61680: <==uncertain_firing== 71432 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #64577: <==negation-removal== 67120 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #65092: <==uncertain_firing== 11869 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #69068: <==uncertain_firing== 42676 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (not_at_a_l2))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #75821: <==negation-removal== 98592 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #78175: <==uncertain_firing== 98592 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #17048: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #21786: <==closure== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #33264: <==closure== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #53406: <==closure== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #55830: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #60285: <==closure== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #64591: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #80070: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #11723: <==negation-removal== 17048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #14576: <==uncertain_firing== 60285 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #26951: <==uncertain_firing== 55830 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27780: <==negation-removal== 64591 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34493: <==negation-removal== 21786 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #36869: <==negation-removal== 60285 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #37880: <==uncertain_firing== 64591 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #39307: <==uncertain_firing== 80070 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Pa_secret_b)))

                    ; #43253: <==uncertain_firing== 21786 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_b))
                               (not (Ba_secret_b))))
                          (not (Ba_secret_b)))

                    ; #47938: <==negation-removal== 33264 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #53014: <==uncertain_firing== 17048 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #58565: <==uncertain_firing== 53406 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_b))
                               (not (Bd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #65119: <==negation-removal== 55830 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #70492: <==negation-removal== 80070 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #89912: <==uncertain_firing== 33264 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #91484: <==negation-removal== 53406 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (Bd_secret_c)
                           (at_d_l1)
                           (Pd_secret_c)
                           (initialized))
        :effect (and
                    ; #12059: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #16897: <==closure== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #32852: <==closure== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #51169: <==closure== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #72886: <==closure== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75059: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #75333: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #98069: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #11644: <==uncertain_firing== 98069 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #12037: <==uncertain_firing== 32852 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #13927: <==negation-removal== 75333 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #14413: <==negation-removal== 51169 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #15246: <==uncertain_firing== 75059 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #39533: <==uncertain_firing== 12059 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #39721: <==uncertain_firing== 75333 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #42787: <==uncertain_firing== 16897 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #49750: <==negation-removal== 98069 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #53433: <==negation-removal== 16897 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59375: <==negation-removal== 75059 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #60297: <==negation-removal== 72886 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #69993: <==uncertain_firing== 51169 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #79203: <==negation-removal== 32852 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #87314: <==uncertain_firing== 72886 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_secret_c))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #89019: <==negation-removal== 12059 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_c)
                           (Pd_secret_c)
                           (initialized))
        :effect (and
                    ; #15293: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #26925: <==closure== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #33687: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #42842: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #45585: <==closure== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #45731: <==closure== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #59641: <==closure== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #75546: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #29991: <==uncertain_firing== 15293 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #33207: <==uncertain_firing== 75546 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #33410: <==negation-removal== 45731 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #35177: <==negation-removal== 45585 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #35583: <==negation-removal== 26925 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #41306: <==uncertain_firing== 45731 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #41416: <==uncertain_firing== 26925 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (Bb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #54996: <==negation-removal== 42842 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #57106: <==negation-removal== 75546 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))

                    ; #60131: <==uncertain_firing== 45585 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #62001: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #66751: <==negation-removal== 15293 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #68189: <==negation-removal== 33687 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #77252: <==uncertain_firing== 33687 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #78798: <==uncertain_firing== 59641 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #83413: <==negation-removal== 59641 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (at_d_l3)
                           (Bd_secret_c)
                           (Pd_secret_c)
                           (initialized))
        :effect (and
                    ; #22735: <==closure== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #22773: <==closure== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #44027: <==closure== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #44141: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #57943: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #68286: <==closure== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #69058: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #86053: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #18163: <==negation-removal== 86053 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))

                    ; #20983: <==uncertain_firing== 69058 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #25908: <==uncertain_firing== 86053 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #28914: <==uncertain_firing== 68286 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #38363: <==negation-removal== 44141 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #41740: <==negation-removal== 22773 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #43693: <==negation-removal== 68286 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #49218: <==negation-removal== 57943 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49775: <==uncertain_firing== 57943 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #52865: <==negation-removal== 69058 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #61191: <==uncertain_firing== 44027 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #66723: <==uncertain_firing== 22773 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l3))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #75952: <==uncertain_firing== 44141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #76246: <==negation-removal== 44027 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #76835: <==uncertain_firing== 22735 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #83487: <==negation-removal== 22735 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (at_d_l1)
                           (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #12796: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #13983: <==closure== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #33071: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #37391: <==closure== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #52838: <==closure== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #65253: <==closure== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #66488: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #88020: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #11336: <==negation-removal== 65253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16013: <==uncertain_firing== 52838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #20332: <==negation-removal== 37391 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #21910: <==uncertain_firing== 65253 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #23751: <==uncertain_firing== 37391 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #29537: <==negation-removal== 33071 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #33150: <==uncertain_firing== 12796 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #35074: <==negation-removal== 52838 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #40150: <==uncertain_firing== 66488 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #43366: <==uncertain_firing== 33071 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #47971: <==negation-removal== 66488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #56937: <==uncertain_firing== 13983 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #64579: <==negation-removal== 88020 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #74182: <==negation-removal== 12796 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #75162: <==negation-removal== 13983 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #96772: <==uncertain_firing== 88020 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_d))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (at_d_l2)
                           (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #29990: <==closure== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #31664: <==closure== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #46420: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #65687: <==closure== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #68917: <==closure== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #81685: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #87768: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #87887: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #16758: <==negation-removal== 68917 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #28064: <==negation-removal== 46420 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #39927: <==negation-removal== 31664 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #42839: <==uncertain_firing== 46420 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47397: <==negation-removal== 29990 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #47639: <==negation-removal== 65687 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #47640: <==negation-removal== 87887 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #49267: <==negation-removal== 81685 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #51980: <==uncertain_firing== 29990 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #58413: <==uncertain_firing== 65687 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #61479: <==negation-removal== 87768 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #76283: <==uncertain_firing== 87768 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #77704: <==uncertain_firing== 68917 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #89024: <==uncertain_firing== 87887 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #91253: <==uncertain_firing== 31664 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #93580: <==uncertain_firing== 81685 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #10004: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #29013: <==closure== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #33255: <==closure== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #40219: <==closure== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #46329: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #47478: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48148: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #67991: <==closure== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #14238: <==negation-removal== 48148 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #26282: <==negation-removal== 10004 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #27907: <==uncertain_firing== 67991 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #28057: <==negation-removal== 33255 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31705: <==uncertain_firing== 10004 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #35027: <==uncertain_firing== 33255 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #42003: <==uncertain_firing== 29013 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #50000: <==negation-removal== 29013 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #51649: <==negation-removal== 47478 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #58367: <==uncertain_firing== 47478 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #64375: <==uncertain_firing== 46329 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #66467: <==negation-removal== 46329 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #73440: <==negation-removal== 40219 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #83154: <==negation-removal== 67991 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #88825: <==uncertain_firing== 48148 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_d))
                               (not (Bb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #91954: <==uncertain_firing== 40219 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #38553: origin
                    (Bd_secret_d)

                    ; #45686: origin
                    (Bc_secret_c)

                    ; #47875: origin
                    (Ba_secret_a)

                    ; #50123: origin
                    (initialized)

                    ; #64476: <==closure== 47875 (pos)
                    (Pa_secret_a)

                    ; #70553: <==closure== 87647 (pos)
                    (Pb_secret_b)

                    ; #81305: <==closure== 45686 (pos)
                    (Pc_secret_c)

                    ; #82017: <==closure== 38553 (pos)
                    (Pd_secret_d)

                    ; #87647: origin
                    (Bb_secret_b)

                    ; #17187: <==negation-removal== 38553 (pos)
                    (not (Pd_not_secret_d))

                    ; #22169: <==negation-removal== 81305 (pos)
                    (not (Bc_not_secret_c))

                    ; #26582: <==negation-removal== 87647 (pos)
                    (not (Pb_not_secret_b))

                    ; #30452: <==negation-removal== 64476 (pos)
                    (not (Ba_not_secret_a))

                    ; #39995: <==negation-removal== 82017 (pos)
                    (not (Bd_not_secret_d))

                    ; #52425: <==negation-removal== 70553 (pos)
                    (not (Bb_not_secret_b))

                    ; #69562: <==negation-removal== 47875 (pos)
                    (not (Pa_not_secret_a))

                    ; #75426: <==negation-removal== 45686 (pos)
                    (not (Pc_not_secret_c))

                    ; #81507: <==negation-removal== 50123 (pos)
                    (not (not_initialized))))

    (:action move_a_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #12382: origin
                    (not_at_a_l1)

                    ; #47592: origin
                    (at_a_l1)

                    ; #12382: <==negation-removal== 47592 (pos)
                    (not (not_at_a_l1))

                    ; #47592: <==negation-removal== 12382 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2)
                           (initialized))
        :effect (and
                    ; #12382: origin
                    (not_at_a_l1)

                    ; #15291: origin
                    (at_a_l2)

                    ; #23214: <==negation-removal== 15291 (pos)
                    (not (not_at_a_l2))

                    ; #47592: <==negation-removal== 12382 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l3
        :precondition (and (connected_l1_l3)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #12382: origin
                    (not_at_a_l1)

                    ; #45642: origin
                    (at_a_l3)

                    ; #47592: <==negation-removal== 12382 (pos)
                    (not (at_a_l1))

                    ; #92036: <==negation-removal== 45642 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l2_l1
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #23214: origin
                    (not_at_a_l2)

                    ; #47592: origin
                    (at_a_l1)

                    ; #12382: <==negation-removal== 47592 (pos)
                    (not (not_at_a_l1))

                    ; #15291: <==negation-removal== 23214 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (initialized)
                           (connected_l2_l2))
        :effect (and
                    ; #15291: origin
                    (at_a_l2)

                    ; #23214: origin
                    (not_at_a_l2)

                    ; #15291: <==negation-removal== 23214 (pos)
                    (not (at_a_l2))

                    ; #23214: <==negation-removal== 15291 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (at_a_l2)
                           (initialized)
                           (connected_l2_l3))
        :effect (and
                    ; #23214: origin
                    (not_at_a_l2)

                    ; #45642: origin
                    (at_a_l3)

                    ; #15291: <==negation-removal== 23214 (pos)
                    (not (at_a_l2))

                    ; #92036: <==negation-removal== 45642 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l3_l1
        :precondition (and (connected_l3_l1)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #47592: origin
                    (at_a_l1)

                    ; #92036: origin
                    (not_at_a_l3)

                    ; #12382: <==negation-removal== 47592 (pos)
                    (not (not_at_a_l1))

                    ; #45642: <==negation-removal== 92036 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l2
        :precondition (and (connected_l3_l2)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #15291: origin
                    (at_a_l2)

                    ; #92036: origin
                    (not_at_a_l3)

                    ; #23214: <==negation-removal== 15291 (pos)
                    (not (not_at_a_l2))

                    ; #45642: <==negation-removal== 92036 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l3
        :precondition (and (connected_l3_l3)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #45642: origin
                    (at_a_l3)

                    ; #92036: origin
                    (not_at_a_l3)

                    ; #45642: <==negation-removal== 92036 (pos)
                    (not (at_a_l3))

                    ; #92036: <==negation-removal== 45642 (pos)
                    (not (not_at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #68558: origin
                    (not_at_b_l1)

                    ; #91298: origin
                    (at_b_l1)

                    ; #68558: <==negation-removal== 91298 (pos)
                    (not (not_at_b_l1))

                    ; #91298: <==negation-removal== 68558 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #29475: origin
                    (at_b_l2)

                    ; #68558: origin
                    (not_at_b_l1)

                    ; #25135: <==negation-removal== 29475 (pos)
                    (not (not_at_b_l2))

                    ; #91298: <==negation-removal== 68558 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #64661: origin
                    (at_b_l3)

                    ; #68558: origin
                    (not_at_b_l1)

                    ; #73697: <==negation-removal== 64661 (pos)
                    (not (not_at_b_l3))

                    ; #91298: <==negation-removal== 68558 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #25135: origin
                    (not_at_b_l2)

                    ; #91298: origin
                    (at_b_l1)

                    ; #29475: <==negation-removal== 25135 (pos)
                    (not (at_b_l2))

                    ; #68558: <==negation-removal== 91298 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #25135: origin
                    (not_at_b_l2)

                    ; #29475: origin
                    (at_b_l2)

                    ; #25135: <==negation-removal== 29475 (pos)
                    (not (not_at_b_l2))

                    ; #29475: <==negation-removal== 25135 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_b_l2))
        :effect (and
                    ; #25135: origin
                    (not_at_b_l2)

                    ; #64661: origin
                    (at_b_l3)

                    ; #29475: <==negation-removal== 25135 (pos)
                    (not (at_b_l2))

                    ; #73697: <==negation-removal== 64661 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l3_l1
        :precondition (and (at_b_l3)
                           (connected_l3_l1)
                           (initialized))
        :effect (and
                    ; #73697: origin
                    (not_at_b_l3)

                    ; #91298: origin
                    (at_b_l1)

                    ; #64661: <==negation-removal== 73697 (pos)
                    (not (at_b_l3))

                    ; #68558: <==negation-removal== 91298 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l3_l2
        :precondition (and (connected_l3_l2)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #29475: origin
                    (at_b_l2)

                    ; #73697: origin
                    (not_at_b_l3)

                    ; #25135: <==negation-removal== 29475 (pos)
                    (not (not_at_b_l2))

                    ; #64661: <==negation-removal== 73697 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l3
        :precondition (and (at_b_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #64661: origin
                    (at_b_l3)

                    ; #73697: origin
                    (not_at_b_l3)

                    ; #64661: <==negation-removal== 73697 (pos)
                    (not (at_b_l3))

                    ; #73697: <==negation-removal== 64661 (pos)
                    (not (not_at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1)
                           (initialized))
        :effect (and
                    ; #84418: origin
                    (not_at_c_l1)

                    ; #89781: origin
                    (at_c_l1)

                    ; #84418: <==negation-removal== 89781 (pos)
                    (not (not_at_c_l1))

                    ; #89781: <==negation-removal== 84418 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2)
                           (initialized))
        :effect (and
                    ; #26349: origin
                    (at_c_l2)

                    ; #84418: origin
                    (not_at_c_l1)

                    ; #15792: <==negation-removal== 26349 (pos)
                    (not (not_at_c_l2))

                    ; #89781: <==negation-removal== 84418 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l3
        :precondition (and (connected_l1_l3)
                           (at_c_l1)
                           (initialized))
        :effect (and
                    ; #18431: origin
                    (at_c_l3)

                    ; #84418: origin
                    (not_at_c_l1)

                    ; #79684: <==negation-removal== 18431 (pos)
                    (not (not_at_c_l3))

                    ; #89781: <==negation-removal== 84418 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_c_l2))
        :effect (and
                    ; #15792: origin
                    (not_at_c_l2)

                    ; #89781: origin
                    (at_c_l1)

                    ; #26349: <==negation-removal== 15792 (pos)
                    (not (at_c_l2))

                    ; #84418: <==negation-removal== 89781 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #15792: origin
                    (not_at_c_l2)

                    ; #26349: origin
                    (at_c_l2)

                    ; #15792: <==negation-removal== 26349 (pos)
                    (not (not_at_c_l2))

                    ; #26349: <==negation-removal== 15792 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (connected_l2_l3)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #15792: origin
                    (not_at_c_l2)

                    ; #18431: origin
                    (at_c_l3)

                    ; #26349: <==negation-removal== 15792 (pos)
                    (not (at_c_l2))

                    ; #79684: <==negation-removal== 18431 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (at_c_l3)
                           (connected_l3_l1)
                           (initialized))
        :effect (and
                    ; #79684: origin
                    (not_at_c_l3)

                    ; #89781: origin
                    (at_c_l1)

                    ; #18431: <==negation-removal== 79684 (pos)
                    (not (at_c_l3))

                    ; #84418: <==negation-removal== 89781 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l3_l2
        :precondition (and (at_c_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #26349: origin
                    (at_c_l2)

                    ; #79684: origin
                    (not_at_c_l3)

                    ; #15792: <==negation-removal== 26349 (pos)
                    (not (not_at_c_l2))

                    ; #18431: <==negation-removal== 79684 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #18431: origin
                    (at_c_l3)

                    ; #79684: origin
                    (not_at_c_l3)

                    ; #18431: <==negation-removal== 79684 (pos)
                    (not (at_c_l3))

                    ; #79684: <==negation-removal== 18431 (pos)
                    (not (not_at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #18280: origin
                    (at_d_l1)

                    ; #34123: origin
                    (not_at_d_l1)

                    ; #18280: <==negation-removal== 34123 (pos)
                    (not (at_d_l1))

                    ; #34123: <==negation-removal== 18280 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (at_d_l1)
                           (connected_l1_l2)
                           (initialized))
        :effect (and
                    ; #22024: origin
                    (at_d_l2)

                    ; #34123: origin
                    (not_at_d_l1)

                    ; #18280: <==negation-removal== 34123 (pos)
                    (not (at_d_l1))

                    ; #44846: <==negation-removal== 22024 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l1_l3
        :precondition (and (connected_l1_l3)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #34123: origin
                    (not_at_d_l1)

                    ; #90763: origin
                    (at_d_l3)

                    ; #18280: <==negation-removal== 34123 (pos)
                    (not (at_d_l1))

                    ; #75410: <==negation-removal== 90763 (pos)
                    (not (not_at_d_l3))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (initialized)
                           (connected_l2_l1))
        :effect (and
                    ; #18280: origin
                    (at_d_l1)

                    ; #44846: origin
                    (not_at_d_l2)

                    ; #22024: <==negation-removal== 44846 (pos)
                    (not (at_d_l2))

                    ; #34123: <==negation-removal== 18280 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (initialized)
                           (connected_l2_l2))
        :effect (and
                    ; #22024: origin
                    (at_d_l2)

                    ; #44846: origin
                    (not_at_d_l2)

                    ; #22024: <==negation-removal== 44846 (pos)
                    (not (at_d_l2))

                    ; #44846: <==negation-removal== 22024 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (at_d_l2)
                           (connected_l2_l3)
                           (initialized))
        :effect (and
                    ; #44846: origin
                    (not_at_d_l2)

                    ; #90763: origin
                    (at_d_l3)

                    ; #22024: <==negation-removal== 44846 (pos)
                    (not (at_d_l2))

                    ; #75410: <==negation-removal== 90763 (pos)
                    (not (not_at_d_l3))))

    (:action move_d_l3_l1
        :precondition (and (at_d_l3)
                           (connected_l3_l1)
                           (initialized))
        :effect (and
                    ; #18280: origin
                    (at_d_l1)

                    ; #75410: origin
                    (not_at_d_l3)

                    ; #34123: <==negation-removal== 18280 (pos)
                    (not (not_at_d_l1))

                    ; #90763: <==negation-removal== 75410 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l2
        :precondition (and (at_d_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #22024: origin
                    (at_d_l2)

                    ; #75410: origin
                    (not_at_d_l3)

                    ; #44846: <==negation-removal== 22024 (pos)
                    (not (not_at_d_l2))

                    ; #90763: <==negation-removal== 75410 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #75410: origin
                    (not_at_d_l3)

                    ; #90763: origin
                    (at_d_l3)

                    ; #75410: <==negation-removal== 90763 (pos)
                    (not (not_at_d_l3))

                    ; #90763: <==negation-removal== 75410 (pos)
                    (not (at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (at_a_l1)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #17357: <==closure== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #24052: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #25066: <==closure== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #31426: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #35662: <==closure== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #35698: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #52943: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #54268: <==closure== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13317: <==negation-removal== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #16593: <==uncertain_firing== 17357 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #16740: <==uncertain_firing== 31426 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #20042: <==negation-removal== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #21422: <==uncertain_firing== 25066 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25680: <==negation-removal== 25066 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #32862: <==negation-removal== 54268 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #33335: <==uncertain_firing== 35662 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #37710: <==negation-removal== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #42516: <==uncertain_firing== 35698 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #48157: <==uncertain_firing== 24052 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #58989: <==negation-removal== 35662 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #72424: <==negation-removal== 17357 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #81884: <==negation-removal== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #83780: <==uncertain_firing== 54268 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #95948: <==uncertain_firing== 52943 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Ba_secret_a)
                           (initialized)
                           (at_a_l2)
                           (Pa_secret_a))
        :effect (and
                    ; #10680: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #12016: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #36375: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #64585: <==closure== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #66977: <==closure== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #68752: <==closure== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #77569: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #83111: <==closure== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13184: <==uncertain_firing== 66977 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #19550: <==uncertain_firing== 36375 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #20681: <==uncertain_firing== 10680 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #21815: <==negation-removal== 68752 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #24420: <==uncertain_firing== 12016 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #30629: <==uncertain_firing== 83111 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #38527: <==negation-removal== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #41400: <==uncertain_firing== 68752 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #46068: <==negation-removal== 66977 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #48313: <==negation-removal== 64585 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #59716: <==negation-removal== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #67555: <==negation-removal== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69714: <==uncertain_firing== 64585 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #69850: <==negation-removal== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #75557: <==uncertain_firing== 77569 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #87123: <==negation-removal== 83111 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a)
                           (at_a_l3))
        :effect (and
                    ; #25302: <==closure== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41178: <==closure== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #50663: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #50714: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #66769: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #79716: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79785: <==closure== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #80851: <==closure== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #16906: <==negation-removal== 25302 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #17644: <==uncertain_firing== 66769 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #18983: <==negation-removal== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #29535: <==uncertain_firing== 79785 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #30103: <==uncertain_firing== 50714 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #32727: <==negation-removal== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #37941: <==uncertain_firing== 50663 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #40102: <==uncertain_firing== 80851 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #42061: <==negation-removal== 80851 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #56613: <==negation-removal== 79785 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #63887: <==negation-removal== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #64172: <==negation-removal== 41178 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #71494: <==negation-removal== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #84435: <==uncertain_firing== 25302 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #85436: <==uncertain_firing== 41178 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #88049: <==uncertain_firing== 79716 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #25469: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #29745: <==closure== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #30473: <==closure== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #52364: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #57552: <==closure== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #73430: <==closure== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #85486: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #93989: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #10678: <==negation-removal== 30473 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15681: <==uncertain_firing== 57552 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #20142: <==negation-removal== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #22584: <==negation-removal== 29745 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #32627: <==negation-removal== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #36346: <==uncertain_firing== 29745 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #37519: <==negation-removal== 73430 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #39912: <==uncertain_firing== 93989 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #41376: <==negation-removal== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #53455: <==negation-removal== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #65608: <==uncertain_firing== 73430 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #72133: <==uncertain_firing== 52364 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #77181: <==uncertain_firing== 30473 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #82936: <==uncertain_firing== 85486 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89127: <==uncertain_firing== 25469 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89339: <==negation-removal== 57552 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #25831: <==closure== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #34722: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #36350: <==closure== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #52391: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #57816: <==closure== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #70641: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #76113: <==closure== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #87375: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #15072: <==negation-removal== 25831 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17634: <==negation-removal== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #20775: <==uncertain_firing== 70641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #22774: <==negation-removal== 36350 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #31410: <==uncertain_firing== 34722 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #32979: <==uncertain_firing== 76113 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #40523: <==negation-removal== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #49351: <==negation-removal== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #50018: <==uncertain_firing== 52391 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #53501: <==uncertain_firing== 57816 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #64668: <==negation-removal== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65464: <==negation-removal== 76113 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #65802: <==uncertain_firing== 87375 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #75991: <==uncertain_firing== 36350 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #78679: <==negation-removal== 57816 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92594: <==uncertain_firing== 25831 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (initialized)
                           (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l3))
        :effect (and
                    ; #22272: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #41159: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44319: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46652: <==closure== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #50045: <==closure== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #62764: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64637: <==closure== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #72952: <==closure== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #10127: <==negation-removal== 50045 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #15572: <==uncertain_firing== 50045 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #25077: <==uncertain_firing== 72952 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #36570: <==uncertain_firing== 41159 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #39436: <==negation-removal== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #42596: <==negation-removal== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #48594: <==negation-removal== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #50517: <==uncertain_firing== 62764 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #50724: <==negation-removal== 46652 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #50805: <==uncertain_firing== 22272 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #75283: <==uncertain_firing== 46652 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #81974: <==negation-removal== 64637 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #83780: <==uncertain_firing== 64637 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #86269: <==uncertain_firing== 44319 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #87078: <==negation-removal== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #95614: <==negation-removal== 72952 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #14714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #25346: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #45813: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #55305: <==closure== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #61626: <==closure== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #62976: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #77119: <==closure== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #81027: <==closure== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #11498: <==uncertain_firing== 61626 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #13513: <==negation-removal== 55305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #17058: <==uncertain_firing== 77119 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #32229: <==uncertain_firing== 14714 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #46050: <==uncertain_firing== 25346 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #50094: <==negation-removal== 81027 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #50401: <==negation-removal== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #51963: <==negation-removal== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #66016: <==uncertain_firing== 81027 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #75392: <==uncertain_firing== 55305 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #76091: <==negation-removal== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #77587: <==negation-removal== 61626 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #80018: <==negation-removal== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #85277: <==negation-removal== 77119 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #87746: <==uncertain_firing== 62976 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #88853: <==uncertain_firing== 45813 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #12637: <==closure== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #23739: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #61773: <==closure== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #62195: <==closure== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #65070: <==closure== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #74615: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #75456: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #75838: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #17262: <==uncertain_firing== 62195 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #23942: <==uncertain_firing== 75456 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #25612: <==negation-removal== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #27237: <==uncertain_firing== 23739 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29478: <==negation-removal== 65070 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #32340: <==negation-removal== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #33357: <==uncertain_firing== 75838 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #36869: <==negation-removal== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #41824: <==uncertain_firing== 74615 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #50295: <==uncertain_firing== 65070 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #53233: <==negation-removal== 61773 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64612: <==negation-removal== 12637 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65788: <==uncertain_firing== 12637 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #70621: <==negation-removal== 62195 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77869: <==uncertain_firing== 61773 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #82654: <==negation-removal== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (at_a_l3))
        :effect (and
                    ; #22669: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #28141: <==closure== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #37757: <==closure== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44613: <==closure== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #73893: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #78305: <==closure== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #85154: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #99116: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #10595: <==negation-removal== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #11381: <==negation-removal== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #15055: <==uncertain_firing== 85154 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #17919: <==uncertain_firing== 37757 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #19159: <==negation-removal== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #26758: <==uncertain_firing== 78305 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #27461: <==negation-removal== 44613 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #28086: <==negation-removal== 28141 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #42095: <==uncertain_firing== 99116 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47788: <==uncertain_firing== 22669 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #55006: <==negation-removal== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #67223: <==negation-removal== 78305 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #74030: <==uncertain_firing== 44613 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #82694: <==negation-removal== 37757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #85199: <==uncertain_firing== 73893 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #86211: <==uncertain_firing== 28141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (Ba_secret_d)
                           (at_a_l1)
                           (Pa_secret_d)
                           (initialized))
        :effect (and
                    ; #28173: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #29598: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #34604: <==closure== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #34859: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #67709: <==closure== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #85677: <==closure== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #86581: <==closure== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #90019: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #14527: <==uncertain_firing== 34859 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19984: <==negation-removal== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #29740: <==negation-removal== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #36042: <==negation-removal== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36643: <==uncertain_firing== 90019 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49995: <==uncertain_firing== 28173 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #65351: <==uncertain_firing== 85677 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #69193: <==negation-removal== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #69653: <==uncertain_firing== 29598 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #76100: <==negation-removal== 34604 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #76306: <==negation-removal== 85677 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #77946: <==negation-removal== 86581 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #80705: <==uncertain_firing== 34604 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80903: <==uncertain_firing== 67709 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #81444: <==uncertain_firing== 86581 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84240: <==negation-removal== 67709 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l2)
                           (initialized))
        :effect (and
                    ; #16740: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18095: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Bc_secret_d))

                    ; #48361: <==closure== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #63428: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #75114: <==closure== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #77313: <==closure== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Pc_secret_d))

                    ; #80402: <==closure== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #87282: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #11518: <==uncertain_firing== 48361 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #15086: <==negation-removal== 80402 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #18018: <==negation-removal== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #21200: <==uncertain_firing== 16740 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #30537: <==negation-removal== 48361 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #36208: <==negation-removal== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #39120: <==uncertain_firing== 75114 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_d)))

                    ; #41374: <==negation-removal== 75114 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #43796: <==uncertain_firing== 63428 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_d)))

                    ; #47815: <==uncertain_firing== 77313 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #61966: <==uncertain_firing== 80402 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #62497: <==negation-removal== 77313 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #65958: <==negation-removal== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #66980: <==uncertain_firing== 18095 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #77837: <==uncertain_firing== 87282 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81317: <==negation-removal== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #32648: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #34490: <==closure== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #47051: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #51661: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #59839: <==closure== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #68522: <==closure== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71333: <==closure== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #88198: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #10835: <==negation-removal== 68522 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29147: <==uncertain_firing== 68522 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #32062: <==negation-removal== 71333 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #35705: <==uncertain_firing== 51661 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #38785: <==negation-removal== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #41731: <==negation-removal== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #48319: <==uncertain_firing== 88198 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49581: <==uncertain_firing== 59839 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50666: <==uncertain_firing== 71333 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #53915: <==negation-removal== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #55370: <==negation-removal== 59839 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #57810: <==negation-removal== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #74511: <==negation-removal== 34490 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78060: <==uncertain_firing== 32648 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80614: <==uncertain_firing== 34490 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #87126: <==uncertain_firing== 47051 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #17357: <==closure== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #24052: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #25066: <==closure== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #31426: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #35662: <==closure== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #35698: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #52943: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #54268: <==closure== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13317: <==negation-removal== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #16593: <==uncertain_firing== 17357 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #16740: <==uncertain_firing== 31426 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #20042: <==negation-removal== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #21422: <==uncertain_firing== 25066 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25680: <==negation-removal== 25066 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #32862: <==negation-removal== 54268 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #33335: <==uncertain_firing== 35662 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #37710: <==negation-removal== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #42516: <==uncertain_firing== 35698 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #48157: <==uncertain_firing== 24052 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #58989: <==negation-removal== 35662 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #72424: <==negation-removal== 17357 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #81884: <==negation-removal== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #83780: <==uncertain_firing== 54268 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #95948: <==uncertain_firing== 52943 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (initialized)
                           (Pb_secret_a)
                           (at_b_l2)
                           (Bb_secret_a))
        :effect (and
                    ; #10680: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #12016: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #36375: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #64585: <==closure== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #66977: <==closure== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #68752: <==closure== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #77569: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #83111: <==closure== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13184: <==uncertain_firing== 66977 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #19550: <==uncertain_firing== 36375 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #20681: <==uncertain_firing== 10680 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #21815: <==negation-removal== 68752 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #24420: <==uncertain_firing== 12016 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #30629: <==uncertain_firing== 83111 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #38527: <==negation-removal== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #41400: <==uncertain_firing== 68752 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #46068: <==negation-removal== 66977 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #48313: <==negation-removal== 64585 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #59716: <==negation-removal== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #67555: <==negation-removal== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69714: <==uncertain_firing== 64585 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #69850: <==negation-removal== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #75557: <==uncertain_firing== 77569 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #87123: <==negation-removal== 83111 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (at_b_l3)
                           (Pb_secret_a)
                           (initialized)
                           (Bb_secret_a))
        :effect (and
                    ; #25302: <==closure== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41178: <==closure== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #50663: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #50714: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #66769: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #79716: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79785: <==closure== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #80851: <==closure== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #16906: <==negation-removal== 25302 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #17644: <==uncertain_firing== 66769 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #18983: <==negation-removal== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #29535: <==uncertain_firing== 79785 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #30103: <==uncertain_firing== 50714 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #32727: <==negation-removal== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #37941: <==uncertain_firing== 50663 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #40102: <==uncertain_firing== 80851 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #42061: <==negation-removal== 80851 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #56613: <==negation-removal== 79785 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #63887: <==negation-removal== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #64172: <==negation-removal== 41178 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #71494: <==negation-removal== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #84435: <==uncertain_firing== 25302 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #85436: <==uncertain_firing== 41178 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #88049: <==uncertain_firing== 79716 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #25469: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #29745: <==closure== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #30473: <==closure== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #52364: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #57552: <==closure== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #73430: <==closure== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #85486: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #93989: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #10678: <==negation-removal== 30473 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15681: <==uncertain_firing== 57552 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #20142: <==negation-removal== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #22584: <==negation-removal== 29745 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #32627: <==negation-removal== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #36346: <==uncertain_firing== 29745 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #37519: <==negation-removal== 73430 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #39912: <==uncertain_firing== 93989 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #41376: <==negation-removal== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #53455: <==negation-removal== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #65608: <==uncertain_firing== 73430 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #72133: <==uncertain_firing== 52364 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #77181: <==uncertain_firing== 30473 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #82936: <==uncertain_firing== 85486 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89127: <==uncertain_firing== 25469 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89339: <==negation-removal== 57552 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (initialized)
                           (at_b_l2))
        :effect (and
                    ; #25831: <==closure== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #34722: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #36350: <==closure== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #52391: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #57816: <==closure== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #70641: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #76113: <==closure== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #87375: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #15072: <==negation-removal== 25831 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17634: <==negation-removal== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #20775: <==uncertain_firing== 70641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #22774: <==negation-removal== 36350 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #31410: <==uncertain_firing== 34722 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #32979: <==uncertain_firing== 76113 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #40523: <==negation-removal== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #49351: <==negation-removal== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #50018: <==uncertain_firing== 52391 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #53501: <==uncertain_firing== 57816 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #64668: <==negation-removal== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65464: <==negation-removal== 76113 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #65802: <==uncertain_firing== 87375 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #75991: <==uncertain_firing== 36350 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #78679: <==negation-removal== 57816 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92594: <==uncertain_firing== 25831 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #22272: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #41159: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44319: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46652: <==closure== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #50045: <==closure== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #62764: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64637: <==closure== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #72952: <==closure== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #10127: <==negation-removal== 50045 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #15572: <==uncertain_firing== 50045 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #25077: <==uncertain_firing== 72952 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #36570: <==uncertain_firing== 41159 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #39436: <==negation-removal== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #42596: <==negation-removal== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #48594: <==negation-removal== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #50517: <==uncertain_firing== 62764 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #50724: <==negation-removal== 46652 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #50805: <==uncertain_firing== 22272 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #75283: <==uncertain_firing== 46652 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #81974: <==negation-removal== 64637 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #83780: <==uncertain_firing== 64637 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #86269: <==uncertain_firing== 44319 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #87078: <==negation-removal== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #95614: <==negation-removal== 72952 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #14714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #25346: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #45813: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #55305: <==closure== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #61626: <==closure== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #62976: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #77119: <==closure== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #81027: <==closure== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #11498: <==uncertain_firing== 61626 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #13513: <==negation-removal== 55305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #17058: <==uncertain_firing== 77119 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #32229: <==uncertain_firing== 14714 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #46050: <==uncertain_firing== 25346 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #50094: <==negation-removal== 81027 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #50401: <==negation-removal== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #51963: <==negation-removal== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #66016: <==uncertain_firing== 81027 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #75392: <==uncertain_firing== 55305 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #76091: <==negation-removal== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #77587: <==negation-removal== 61626 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #80018: <==negation-removal== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #85277: <==negation-removal== 77119 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #87746: <==uncertain_firing== 62976 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #88853: <==uncertain_firing== 45813 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (Bb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #12637: <==closure== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #23739: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #61773: <==closure== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #62195: <==closure== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #65070: <==closure== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #74615: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #75456: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #75838: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #17262: <==uncertain_firing== 62195 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #23942: <==uncertain_firing== 75456 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #25612: <==negation-removal== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #27237: <==uncertain_firing== 23739 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29478: <==negation-removal== 65070 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #32340: <==negation-removal== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #33357: <==uncertain_firing== 75838 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #36869: <==negation-removal== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #41824: <==uncertain_firing== 74615 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #50295: <==uncertain_firing== 65070 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #53233: <==negation-removal== 61773 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64612: <==negation-removal== 12637 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65788: <==uncertain_firing== 12637 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #70621: <==negation-removal== 62195 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77869: <==uncertain_firing== 61773 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #82654: <==negation-removal== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (Pb_secret_c)
                           (at_b_l3)
                           (Bb_secret_c)
                           (initialized))
        :effect (and
                    ; #22669: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #28141: <==closure== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #37757: <==closure== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44613: <==closure== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #73893: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #78305: <==closure== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #85154: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #99116: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #10595: <==negation-removal== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #11381: <==negation-removal== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #15055: <==uncertain_firing== 85154 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #17919: <==uncertain_firing== 37757 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #19159: <==negation-removal== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #26758: <==uncertain_firing== 78305 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #27461: <==negation-removal== 44613 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #28086: <==negation-removal== 28141 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #42095: <==uncertain_firing== 99116 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47788: <==uncertain_firing== 22669 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #55006: <==negation-removal== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #67223: <==negation-removal== 78305 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #74030: <==uncertain_firing== 44613 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #82694: <==negation-removal== 37757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #85199: <==uncertain_firing== 73893 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #86211: <==uncertain_firing== 28141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (initialized)
                           (Bb_secret_d)
                           (Pb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #28173: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #29598: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #34604: <==closure== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #34859: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #67709: <==closure== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #85677: <==closure== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #86581: <==closure== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #90019: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #14527: <==uncertain_firing== 34859 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19984: <==negation-removal== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #29740: <==negation-removal== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #36042: <==negation-removal== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36643: <==uncertain_firing== 90019 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49995: <==uncertain_firing== 28173 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #65351: <==uncertain_firing== 85677 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #69193: <==negation-removal== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #69653: <==uncertain_firing== 29598 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #76100: <==negation-removal== 34604 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #76306: <==negation-removal== 85677 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #77946: <==negation-removal== 86581 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #80705: <==uncertain_firing== 34604 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80903: <==uncertain_firing== 67709 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #81444: <==uncertain_firing== 86581 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84240: <==negation-removal== 67709 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (initialized)
                           (Pb_secret_d)
                           (at_b_l2)
                           (Bb_secret_d))
        :effect (and
                    ; #16740: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18095: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Bc_secret_d))

                    ; #48361: <==closure== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #63428: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #75114: <==closure== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #77313: <==closure== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Pc_secret_d))

                    ; #80402: <==closure== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #87282: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #11518: <==uncertain_firing== 48361 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #15086: <==negation-removal== 80402 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #18018: <==negation-removal== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #21200: <==uncertain_firing== 16740 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #30537: <==negation-removal== 48361 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #36208: <==negation-removal== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #39120: <==uncertain_firing== 75114 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_d)))

                    ; #41374: <==negation-removal== 75114 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #43796: <==uncertain_firing== 63428 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_d)))

                    ; #47815: <==uncertain_firing== 77313 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #61966: <==uncertain_firing== 80402 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #62497: <==negation-removal== 77313 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #65958: <==negation-removal== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #66980: <==uncertain_firing== 18095 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #77837: <==uncertain_firing== 87282 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81317: <==negation-removal== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #32648: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #34490: <==closure== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #47051: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #51661: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #59839: <==closure== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #68522: <==closure== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71333: <==closure== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #88198: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #10835: <==negation-removal== 68522 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29147: <==uncertain_firing== 68522 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #32062: <==negation-removal== 71333 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #35705: <==uncertain_firing== 51661 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #38785: <==negation-removal== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #41731: <==negation-removal== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #48319: <==uncertain_firing== 88198 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49581: <==uncertain_firing== 59839 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50666: <==uncertain_firing== 71333 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #53915: <==negation-removal== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #55370: <==negation-removal== 59839 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #57810: <==negation-removal== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #74511: <==negation-removal== 34490 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78060: <==uncertain_firing== 32648 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80614: <==uncertain_firing== 34490 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #87126: <==uncertain_firing== 47051 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #17357: <==closure== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #24052: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #25066: <==closure== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #31426: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #35662: <==closure== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #35698: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #52943: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #54268: <==closure== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13317: <==negation-removal== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #16593: <==uncertain_firing== 17357 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #16740: <==uncertain_firing== 31426 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #20042: <==negation-removal== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #21422: <==uncertain_firing== 25066 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25680: <==negation-removal== 25066 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #32862: <==negation-removal== 54268 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #33335: <==uncertain_firing== 35662 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #37710: <==negation-removal== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #42516: <==uncertain_firing== 35698 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #48157: <==uncertain_firing== 24052 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #58989: <==negation-removal== 35662 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #72424: <==negation-removal== 17357 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #81884: <==negation-removal== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #83780: <==uncertain_firing== 54268 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #95948: <==uncertain_firing== 52943 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #10680: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #12016: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #36375: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #64585: <==closure== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #66977: <==closure== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #68752: <==closure== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #77569: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #83111: <==closure== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13184: <==uncertain_firing== 66977 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #19550: <==uncertain_firing== 36375 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #20681: <==uncertain_firing== 10680 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #21815: <==negation-removal== 68752 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #24420: <==uncertain_firing== 12016 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #30629: <==uncertain_firing== 83111 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #38527: <==negation-removal== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #41400: <==uncertain_firing== 68752 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #46068: <==negation-removal== 66977 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #48313: <==negation-removal== 64585 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #59716: <==negation-removal== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #67555: <==negation-removal== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69714: <==uncertain_firing== 64585 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #69850: <==negation-removal== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #75557: <==uncertain_firing== 77569 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #87123: <==negation-removal== 83111 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #25302: <==closure== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41178: <==closure== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #50663: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #50714: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #66769: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #79716: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79785: <==closure== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #80851: <==closure== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #16906: <==negation-removal== 25302 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #17644: <==uncertain_firing== 66769 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #18983: <==negation-removal== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #29535: <==uncertain_firing== 79785 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #30103: <==uncertain_firing== 50714 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #32727: <==negation-removal== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #37941: <==uncertain_firing== 50663 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #40102: <==uncertain_firing== 80851 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #42061: <==negation-removal== 80851 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #56613: <==negation-removal== 79785 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #63887: <==negation-removal== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #64172: <==negation-removal== 41178 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #71494: <==negation-removal== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #84435: <==uncertain_firing== 25302 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #85436: <==uncertain_firing== 41178 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #88049: <==uncertain_firing== 79716 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #25469: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #29745: <==closure== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #30473: <==closure== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #52364: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #57552: <==closure== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #73430: <==closure== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #85486: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #93989: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #10678: <==negation-removal== 30473 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15681: <==uncertain_firing== 57552 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #20142: <==negation-removal== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #22584: <==negation-removal== 29745 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #32627: <==negation-removal== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #36346: <==uncertain_firing== 29745 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #37519: <==negation-removal== 73430 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #39912: <==uncertain_firing== 93989 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #41376: <==negation-removal== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #53455: <==negation-removal== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #65608: <==uncertain_firing== 73430 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #72133: <==uncertain_firing== 52364 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #77181: <==uncertain_firing== 30473 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #82936: <==uncertain_firing== 85486 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89127: <==uncertain_firing== 25469 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89339: <==negation-removal== 57552 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Pc_secret_b)
                           (Bc_secret_b)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #25831: <==closure== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #34722: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #36350: <==closure== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #52391: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #57816: <==closure== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #70641: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #76113: <==closure== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #87375: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #15072: <==negation-removal== 25831 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17634: <==negation-removal== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #20775: <==uncertain_firing== 70641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #22774: <==negation-removal== 36350 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #31410: <==uncertain_firing== 34722 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #32979: <==uncertain_firing== 76113 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #40523: <==negation-removal== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #49351: <==negation-removal== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #50018: <==uncertain_firing== 52391 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #53501: <==uncertain_firing== 57816 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #64668: <==negation-removal== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65464: <==negation-removal== 76113 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #65802: <==uncertain_firing== 87375 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #75991: <==uncertain_firing== 36350 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #78679: <==negation-removal== 57816 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92594: <==uncertain_firing== 25831 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #22272: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #41159: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44319: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46652: <==closure== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #50045: <==closure== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #62764: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64637: <==closure== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #72952: <==closure== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #10127: <==negation-removal== 50045 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #15572: <==uncertain_firing== 50045 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #25077: <==uncertain_firing== 72952 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #36570: <==uncertain_firing== 41159 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #39436: <==negation-removal== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #42596: <==negation-removal== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #48594: <==negation-removal== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #50517: <==uncertain_firing== 62764 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #50724: <==negation-removal== 46652 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #50805: <==uncertain_firing== 22272 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #75283: <==uncertain_firing== 46652 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #81974: <==negation-removal== 64637 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #83780: <==uncertain_firing== 64637 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #86269: <==uncertain_firing== 44319 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #87078: <==negation-removal== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #95614: <==negation-removal== 72952 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_c)
                           (initialized)
                           (Bc_secret_c))
        :effect (and
                    ; #14714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #25346: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #45813: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #55305: <==closure== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #61626: <==closure== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #62976: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #77119: <==closure== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #81027: <==closure== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #11498: <==uncertain_firing== 61626 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #13513: <==negation-removal== 55305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #17058: <==uncertain_firing== 77119 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #32229: <==uncertain_firing== 14714 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #46050: <==uncertain_firing== 25346 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #50094: <==negation-removal== 81027 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #50401: <==negation-removal== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #51963: <==negation-removal== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #66016: <==uncertain_firing== 81027 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #75392: <==uncertain_firing== 55305 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #76091: <==negation-removal== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #77587: <==negation-removal== 61626 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #80018: <==negation-removal== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #85277: <==negation-removal== 77119 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #87746: <==uncertain_firing== 62976 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #88853: <==uncertain_firing== 45813 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Pc_secret_c)
                           (Bc_secret_c)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #12637: <==closure== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #23739: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #61773: <==closure== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #62195: <==closure== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #65070: <==closure== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #74615: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #75456: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #75838: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #17262: <==uncertain_firing== 62195 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #23942: <==uncertain_firing== 75456 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #25612: <==negation-removal== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #27237: <==uncertain_firing== 23739 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29478: <==negation-removal== 65070 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #32340: <==negation-removal== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #33357: <==uncertain_firing== 75838 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #36869: <==negation-removal== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #41824: <==uncertain_firing== 74615 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #50295: <==uncertain_firing== 65070 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #53233: <==negation-removal== 61773 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64612: <==negation-removal== 12637 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65788: <==uncertain_firing== 12637 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #70621: <==negation-removal== 62195 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77869: <==uncertain_firing== 61773 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #82654: <==negation-removal== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (at_c_l3)
                           (Pc_secret_c)
                           (initialized)
                           (Bc_secret_c))
        :effect (and
                    ; #22669: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #28141: <==closure== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #37757: <==closure== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44613: <==closure== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #73893: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #78305: <==closure== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #85154: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #99116: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #10595: <==negation-removal== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #11381: <==negation-removal== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #15055: <==uncertain_firing== 85154 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #17919: <==uncertain_firing== 37757 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #19159: <==negation-removal== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #26758: <==uncertain_firing== 78305 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #27461: <==negation-removal== 44613 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #28086: <==negation-removal== 28141 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #42095: <==uncertain_firing== 99116 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47788: <==uncertain_firing== 22669 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #55006: <==negation-removal== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #67223: <==negation-removal== 78305 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #74030: <==uncertain_firing== 44613 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #82694: <==negation-removal== 37757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #85199: <==uncertain_firing== 73893 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #86211: <==uncertain_firing== 28141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #28173: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #29598: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #34604: <==closure== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #34859: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #67709: <==closure== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #85677: <==closure== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #86581: <==closure== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #90019: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #14527: <==uncertain_firing== 34859 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19984: <==negation-removal== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #29740: <==negation-removal== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #36042: <==negation-removal== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36643: <==uncertain_firing== 90019 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49995: <==uncertain_firing== 28173 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #65351: <==uncertain_firing== 85677 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #69193: <==negation-removal== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #69653: <==uncertain_firing== 29598 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #76100: <==negation-removal== 34604 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #76306: <==negation-removal== 85677 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #77946: <==negation-removal== 86581 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #80705: <==uncertain_firing== 34604 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80903: <==uncertain_firing== 67709 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #81444: <==uncertain_firing== 86581 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84240: <==negation-removal== 67709 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #16740: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18095: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Bc_secret_d))

                    ; #48361: <==closure== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #63428: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #75114: <==closure== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #77313: <==closure== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Pc_secret_d))

                    ; #80402: <==closure== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #87282: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #11518: <==uncertain_firing== 48361 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #15086: <==negation-removal== 80402 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #18018: <==negation-removal== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #21200: <==uncertain_firing== 16740 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #30537: <==negation-removal== 48361 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #36208: <==negation-removal== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #39120: <==uncertain_firing== 75114 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_d)))

                    ; #41374: <==negation-removal== 75114 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #43796: <==uncertain_firing== 63428 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_d)))

                    ; #47815: <==uncertain_firing== 77313 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #61966: <==uncertain_firing== 80402 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #62497: <==negation-removal== 77313 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #65958: <==negation-removal== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #66980: <==uncertain_firing== 18095 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #77837: <==uncertain_firing== 87282 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81317: <==negation-removal== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_d)
                           (Pc_secret_d)
                           (initialized))
        :effect (and
                    ; #32648: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #34490: <==closure== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #47051: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #51661: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #59839: <==closure== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #68522: <==closure== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71333: <==closure== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #88198: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #10835: <==negation-removal== 68522 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29147: <==uncertain_firing== 68522 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #32062: <==negation-removal== 71333 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #35705: <==uncertain_firing== 51661 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #38785: <==negation-removal== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #41731: <==negation-removal== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #48319: <==uncertain_firing== 88198 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49581: <==uncertain_firing== 59839 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50666: <==uncertain_firing== 71333 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #53915: <==negation-removal== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #55370: <==negation-removal== 59839 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #57810: <==negation-removal== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #74511: <==negation-removal== 34490 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78060: <==uncertain_firing== 32648 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80614: <==uncertain_firing== 34490 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #87126: <==uncertain_firing== 47051 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #17357: <==closure== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #24052: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #25066: <==closure== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #31426: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #35662: <==closure== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #35698: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #52943: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #54268: <==closure== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13317: <==negation-removal== 31426 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #16593: <==uncertain_firing== 17357 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #16740: <==uncertain_firing== 31426 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #20042: <==negation-removal== 52943 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #21422: <==uncertain_firing== 25066 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #25680: <==negation-removal== 25066 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #32862: <==negation-removal== 54268 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #33335: <==uncertain_firing== 35662 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #37710: <==negation-removal== 35698 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #42516: <==uncertain_firing== 35698 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #48157: <==uncertain_firing== 24052 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #58989: <==negation-removal== 35662 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #72424: <==negation-removal== 17357 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #81884: <==negation-removal== 24052 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #83780: <==uncertain_firing== 54268 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #95948: <==uncertain_firing== 52943 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #10680: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #12016: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #36375: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #64585: <==closure== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #66977: <==closure== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #68752: <==closure== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #77569: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #83111: <==closure== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #13184: <==uncertain_firing== 66977 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #19550: <==uncertain_firing== 36375 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #20681: <==uncertain_firing== 10680 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #21815: <==negation-removal== 68752 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #24420: <==uncertain_firing== 12016 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #30629: <==uncertain_firing== 83111 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #38527: <==negation-removal== 36375 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #41400: <==uncertain_firing== 68752 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #46068: <==negation-removal== 66977 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #48313: <==negation-removal== 64585 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #59716: <==negation-removal== 10680 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #67555: <==negation-removal== 12016 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69714: <==uncertain_firing== 64585 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #69850: <==negation-removal== 77569 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #75557: <==uncertain_firing== 77569 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #87123: <==negation-removal== 83111 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #25302: <==closure== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #41178: <==closure== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #50663: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #50714: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #66769: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #79716: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79785: <==closure== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #80851: <==closure== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #16906: <==negation-removal== 25302 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #17644: <==uncertain_firing== 66769 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #18983: <==negation-removal== 50663 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #29535: <==uncertain_firing== 79785 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #30103: <==uncertain_firing== 50714 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #32727: <==negation-removal== 79716 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #37941: <==uncertain_firing== 50663 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #40102: <==uncertain_firing== 80851 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #42061: <==negation-removal== 80851 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #56613: <==negation-removal== 79785 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #63887: <==negation-removal== 66769 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #64172: <==negation-removal== 41178 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #71494: <==negation-removal== 50714 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #84435: <==uncertain_firing== 25302 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #85436: <==uncertain_firing== 41178 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #88049: <==uncertain_firing== 79716 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #25469: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #29745: <==closure== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #30473: <==closure== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #52364: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #57552: <==closure== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #73430: <==closure== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #85486: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #93989: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #10678: <==negation-removal== 30473 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15681: <==uncertain_firing== 57552 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #20142: <==negation-removal== 85486 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #22584: <==negation-removal== 29745 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #32627: <==negation-removal== 25469 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #36346: <==uncertain_firing== 29745 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #37519: <==negation-removal== 73430 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #39912: <==uncertain_firing== 93989 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #41376: <==negation-removal== 93989 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #53455: <==negation-removal== 52364 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #65608: <==uncertain_firing== 73430 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #72133: <==uncertain_firing== 52364 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l1))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #77181: <==uncertain_firing== 30473 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #82936: <==uncertain_firing== 85486 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89127: <==uncertain_firing== 25469 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #89339: <==negation-removal== 57552 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #25831: <==closure== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #34722: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #36350: <==closure== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #52391: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #57816: <==closure== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #70641: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #76113: <==closure== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #87375: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #15072: <==negation-removal== 25831 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #17634: <==negation-removal== 52391 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #20775: <==uncertain_firing== 70641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #22774: <==negation-removal== 36350 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #31410: <==uncertain_firing== 34722 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #32979: <==uncertain_firing== 76113 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #40523: <==negation-removal== 34722 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #49351: <==negation-removal== 87375 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #50018: <==uncertain_firing== 52391 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #53501: <==uncertain_firing== 57816 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #64668: <==negation-removal== 70641 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65464: <==negation-removal== 76113 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #65802: <==uncertain_firing== 87375 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #75991: <==uncertain_firing== 36350 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #78679: <==negation-removal== 57816 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92594: <==uncertain_firing== 25831 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_b)
                           (initialized)
                           (Bd_secret_b))
        :effect (and
                    ; #22272: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #41159: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44319: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46652: <==closure== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #50045: <==closure== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #62764: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #64637: <==closure== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #72952: <==closure== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #10127: <==negation-removal== 50045 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #15572: <==uncertain_firing== 50045 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #25077: <==uncertain_firing== 72952 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #36570: <==uncertain_firing== 41159 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #39436: <==negation-removal== 22272 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))

                    ; #42596: <==negation-removal== 41159 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #48594: <==negation-removal== 62764 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #50517: <==uncertain_firing== 62764 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #50724: <==negation-removal== 46652 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #50805: <==uncertain_firing== 22272 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_b)))

                    ; #75283: <==uncertain_firing== 46652 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #81974: <==negation-removal== 64637 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #83780: <==uncertain_firing== 64637 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #86269: <==uncertain_firing== 44319 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #87078: <==negation-removal== 44319 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #95614: <==negation-removal== 72952 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (at_d_l1)
                           (Pd_secret_c)
                           (initialized))
        :effect (and
                    ; #14714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #25346: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #45813: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #55305: <==closure== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #61626: <==closure== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #62976: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #77119: <==closure== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #81027: <==closure== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #11498: <==uncertain_firing== 61626 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #13513: <==negation-removal== 55305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #17058: <==uncertain_firing== 77119 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #32229: <==uncertain_firing== 14714 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #46050: <==uncertain_firing== 25346 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #50094: <==negation-removal== 81027 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #50401: <==negation-removal== 62976 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #51963: <==negation-removal== 14714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #66016: <==uncertain_firing== 81027 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #75392: <==uncertain_firing== 55305 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #76091: <==negation-removal== 45813 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #77587: <==negation-removal== 61626 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #80018: <==negation-removal== 25346 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #85277: <==negation-removal== 77119 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #87746: <==uncertain_firing== 62976 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #88853: <==uncertain_firing== 45813 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_c)
                           (Pd_secret_c)
                           (initialized))
        :effect (and
                    ; #12637: <==closure== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #23739: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #61773: <==closure== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #62195: <==closure== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #65070: <==closure== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #74615: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #75456: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #75838: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #17262: <==uncertain_firing== 62195 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #23942: <==uncertain_firing== 75456 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #25612: <==negation-removal== 23739 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #27237: <==uncertain_firing== 23739 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29478: <==negation-removal== 65070 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #32340: <==negation-removal== 75456 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #33357: <==uncertain_firing== 75838 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #36869: <==negation-removal== 75838 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #41824: <==uncertain_firing== 74615 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))

                    ; #50295: <==uncertain_firing== 65070 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #53233: <==negation-removal== 61773 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64612: <==negation-removal== 12637 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65788: <==uncertain_firing== 12637 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #70621: <==negation-removal== 62195 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77869: <==uncertain_firing== 61773 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #82654: <==negation-removal== 74615 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (at_d_l3)
                           (Bd_secret_c)
                           (Pd_secret_c)
                           (initialized))
        :effect (and
                    ; #22669: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #28141: <==closure== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #37757: <==closure== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44613: <==closure== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #73893: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #78305: <==closure== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #85154: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #99116: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #10595: <==negation-removal== 99116 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #11381: <==negation-removal== 85154 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #15055: <==uncertain_firing== 85154 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #17919: <==uncertain_firing== 37757 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #19159: <==negation-removal== 73893 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #26758: <==uncertain_firing== 78305 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #27461: <==negation-removal== 44613 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #28086: <==negation-removal== 28141 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #42095: <==uncertain_firing== 99116 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47788: <==uncertain_firing== 22669 (pos)
                    (when (and (and (not (Bc_not_secret_c))
                               (not (Pc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #55006: <==negation-removal== 22669 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #67223: <==negation-removal== 78305 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #74030: <==uncertain_firing== 44613 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #82694: <==negation-removal== 37757 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #85199: <==uncertain_firing== 73893 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #86211: <==uncertain_firing== 28141 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #28173: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #29598: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #34604: <==closure== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #34859: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #67709: <==closure== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #85677: <==closure== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #86581: <==closure== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #90019: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #14527: <==uncertain_firing== 34859 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19984: <==negation-removal== 90019 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #29740: <==negation-removal== 34859 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #36042: <==negation-removal== 28173 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36643: <==uncertain_firing== 90019 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49995: <==uncertain_firing== 28173 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #65351: <==uncertain_firing== 85677 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (not_at_d_l1))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #69193: <==negation-removal== 29598 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #69653: <==uncertain_firing== 29598 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #76100: <==negation-removal== 34604 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #76306: <==negation-removal== 85677 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #77946: <==negation-removal== 86581 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #80705: <==uncertain_firing== 34604 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80903: <==uncertain_firing== 67709 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #81444: <==uncertain_firing== 86581 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84240: <==negation-removal== 67709 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #16740: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #18095: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Bc_secret_d))

                    ; #48361: <==closure== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #63428: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #75114: <==closure== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #77313: <==closure== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (Pc_secret_d))

                    ; #80402: <==closure== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #87282: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #11518: <==uncertain_firing== 48361 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #15086: <==negation-removal== 80402 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #18018: <==negation-removal== 18095 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #21200: <==uncertain_firing== 16740 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #30537: <==negation-removal== 48361 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #36208: <==negation-removal== 63428 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #39120: <==uncertain_firing== 75114 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_d)))

                    ; #41374: <==negation-removal== 75114 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #43796: <==uncertain_firing== 63428 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_d)))

                    ; #47815: <==uncertain_firing== 77313 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #61966: <==uncertain_firing== 80402 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #62497: <==negation-removal== 77313 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #65958: <==negation-removal== 16740 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #66980: <==uncertain_firing== 18095 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #77837: <==uncertain_firing== 87282 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #81317: <==negation-removal== 87282 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #32648: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #34490: <==closure== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #47051: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #51661: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #59839: <==closure== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #68522: <==closure== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71333: <==closure== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #88198: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #10835: <==negation-removal== 68522 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29147: <==uncertain_firing== 68522 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #32062: <==negation-removal== 71333 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #35705: <==uncertain_firing== 51661 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #38785: <==negation-removal== 88198 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #41731: <==negation-removal== 32648 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #48319: <==uncertain_firing== 88198 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #49581: <==uncertain_firing== 59839 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #50666: <==uncertain_firing== 71333 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #53915: <==negation-removal== 51661 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #55370: <==negation-removal== 59839 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #57810: <==negation-removal== 47051 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #74511: <==negation-removal== 34490 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #78060: <==uncertain_firing== 32648 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80614: <==uncertain_firing== 34490 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #87126: <==uncertain_firing== 47051 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))))

)