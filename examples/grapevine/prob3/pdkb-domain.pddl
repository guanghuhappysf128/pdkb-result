(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_Ba_not_secret_a)
        (Ba_Ba_not_secret_b)
        (Ba_Ba_not_secret_c)
        (Ba_Ba_secret_a)
        (Ba_Ba_secret_b)
        (Ba_Ba_secret_c)
        (Ba_Bb_not_secret_a)
        (Ba_Bb_not_secret_b)
        (Ba_Bb_not_secret_c)
        (Ba_Bb_secret_a)
        (Ba_Bb_secret_b)
        (Ba_Bb_secret_c)
        (Ba_Bc_not_secret_a)
        (Ba_Bc_not_secret_b)
        (Ba_Bc_not_secret_c)
        (Ba_Bc_secret_a)
        (Ba_Bc_secret_b)
        (Ba_Bc_secret_c)
        (Ba_Pa_not_secret_a)
        (Ba_Pa_not_secret_b)
        (Ba_Pa_not_secret_c)
        (Ba_Pa_secret_a)
        (Ba_Pa_secret_b)
        (Ba_Pa_secret_c)
        (Ba_Pb_not_secret_a)
        (Ba_Pb_not_secret_b)
        (Ba_Pb_not_secret_c)
        (Ba_Pb_secret_a)
        (Ba_Pb_secret_b)
        (Ba_Pb_secret_c)
        (Ba_Pc_not_secret_a)
        (Ba_Pc_not_secret_b)
        (Ba_Pc_not_secret_c)
        (Ba_Pc_secret_a)
        (Ba_Pc_secret_b)
        (Ba_Pc_secret_c)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_Ba_not_secret_a)
        (Bb_Ba_not_secret_b)
        (Bb_Ba_not_secret_c)
        (Bb_Ba_secret_a)
        (Bb_Ba_secret_b)
        (Bb_Ba_secret_c)
        (Bb_Bb_not_secret_a)
        (Bb_Bb_not_secret_b)
        (Bb_Bb_not_secret_c)
        (Bb_Bb_secret_a)
        (Bb_Bb_secret_b)
        (Bb_Bb_secret_c)
        (Bb_Bc_not_secret_a)
        (Bb_Bc_not_secret_b)
        (Bb_Bc_not_secret_c)
        (Bb_Bc_secret_a)
        (Bb_Bc_secret_b)
        (Bb_Bc_secret_c)
        (Bb_Pa_not_secret_a)
        (Bb_Pa_not_secret_b)
        (Bb_Pa_not_secret_c)
        (Bb_Pa_secret_a)
        (Bb_Pa_secret_b)
        (Bb_Pa_secret_c)
        (Bb_Pb_not_secret_a)
        (Bb_Pb_not_secret_b)
        (Bb_Pb_not_secret_c)
        (Bb_Pb_secret_a)
        (Bb_Pb_secret_b)
        (Bb_Pb_secret_c)
        (Bb_Pc_not_secret_a)
        (Bb_Pc_not_secret_b)
        (Bb_Pc_not_secret_c)
        (Bb_Pc_secret_a)
        (Bb_Pc_secret_b)
        (Bb_Pc_secret_c)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_Ba_not_secret_a)
        (Bc_Ba_not_secret_b)
        (Bc_Ba_not_secret_c)
        (Bc_Ba_secret_a)
        (Bc_Ba_secret_b)
        (Bc_Ba_secret_c)
        (Bc_Bb_not_secret_a)
        (Bc_Bb_not_secret_b)
        (Bc_Bb_not_secret_c)
        (Bc_Bb_secret_a)
        (Bc_Bb_secret_b)
        (Bc_Bb_secret_c)
        (Bc_Bc_not_secret_a)
        (Bc_Bc_not_secret_b)
        (Bc_Bc_not_secret_c)
        (Bc_Bc_secret_a)
        (Bc_Bc_secret_b)
        (Bc_Bc_secret_c)
        (Bc_Pa_not_secret_a)
        (Bc_Pa_not_secret_b)
        (Bc_Pa_not_secret_c)
        (Bc_Pa_secret_a)
        (Bc_Pa_secret_b)
        (Bc_Pa_secret_c)
        (Bc_Pb_not_secret_a)
        (Bc_Pb_not_secret_b)
        (Bc_Pb_not_secret_c)
        (Bc_Pb_secret_a)
        (Bc_Pb_secret_b)
        (Bc_Pb_secret_c)
        (Bc_Pc_not_secret_a)
        (Bc_Pc_not_secret_b)
        (Bc_Pc_not_secret_c)
        (Bc_Pc_secret_a)
        (Bc_Pc_secret_b)
        (Bc_Pc_secret_c)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_Ba_not_secret_a)
        (Pa_Ba_not_secret_b)
        (Pa_Ba_not_secret_c)
        (Pa_Ba_secret_a)
        (Pa_Ba_secret_b)
        (Pa_Ba_secret_c)
        (Pa_Bb_not_secret_a)
        (Pa_Bb_not_secret_b)
        (Pa_Bb_not_secret_c)
        (Pa_Bb_secret_a)
        (Pa_Bb_secret_b)
        (Pa_Bb_secret_c)
        (Pa_Bc_not_secret_a)
        (Pa_Bc_not_secret_b)
        (Pa_Bc_not_secret_c)
        (Pa_Bc_secret_a)
        (Pa_Bc_secret_b)
        (Pa_Bc_secret_c)
        (Pa_Pa_not_secret_a)
        (Pa_Pa_not_secret_b)
        (Pa_Pa_not_secret_c)
        (Pa_Pa_secret_a)
        (Pa_Pa_secret_b)
        (Pa_Pa_secret_c)
        (Pa_Pb_not_secret_a)
        (Pa_Pb_not_secret_b)
        (Pa_Pb_not_secret_c)
        (Pa_Pb_secret_a)
        (Pa_Pb_secret_b)
        (Pa_Pb_secret_c)
        (Pa_Pc_not_secret_a)
        (Pa_Pc_not_secret_b)
        (Pa_Pc_not_secret_c)
        (Pa_Pc_secret_a)
        (Pa_Pc_secret_b)
        (Pa_Pc_secret_c)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_Ba_not_secret_a)
        (Pb_Ba_not_secret_b)
        (Pb_Ba_not_secret_c)
        (Pb_Ba_secret_a)
        (Pb_Ba_secret_b)
        (Pb_Ba_secret_c)
        (Pb_Bb_not_secret_a)
        (Pb_Bb_not_secret_b)
        (Pb_Bb_not_secret_c)
        (Pb_Bb_secret_a)
        (Pb_Bb_secret_b)
        (Pb_Bb_secret_c)
        (Pb_Bc_not_secret_a)
        (Pb_Bc_not_secret_b)
        (Pb_Bc_not_secret_c)
        (Pb_Bc_secret_a)
        (Pb_Bc_secret_b)
        (Pb_Bc_secret_c)
        (Pb_Pa_not_secret_a)
        (Pb_Pa_not_secret_b)
        (Pb_Pa_not_secret_c)
        (Pb_Pa_secret_a)
        (Pb_Pa_secret_b)
        (Pb_Pa_secret_c)
        (Pb_Pb_not_secret_a)
        (Pb_Pb_not_secret_b)
        (Pb_Pb_not_secret_c)
        (Pb_Pb_secret_a)
        (Pb_Pb_secret_b)
        (Pb_Pb_secret_c)
        (Pb_Pc_not_secret_a)
        (Pb_Pc_not_secret_b)
        (Pb_Pc_not_secret_c)
        (Pb_Pc_secret_a)
        (Pb_Pc_secret_b)
        (Pb_Pc_secret_c)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_Ba_not_secret_a)
        (Pc_Ba_not_secret_b)
        (Pc_Ba_not_secret_c)
        (Pc_Ba_secret_a)
        (Pc_Ba_secret_b)
        (Pc_Ba_secret_c)
        (Pc_Bb_not_secret_a)
        (Pc_Bb_not_secret_b)
        (Pc_Bb_not_secret_c)
        (Pc_Bb_secret_a)
        (Pc_Bb_secret_b)
        (Pc_Bb_secret_c)
        (Pc_Bc_not_secret_a)
        (Pc_Bc_not_secret_b)
        (Pc_Bc_not_secret_c)
        (Pc_Bc_secret_a)
        (Pc_Bc_secret_b)
        (Pc_Bc_secret_c)
        (Pc_Pa_not_secret_a)
        (Pc_Pa_not_secret_b)
        (Pc_Pa_not_secret_c)
        (Pc_Pa_secret_a)
        (Pc_Pa_secret_b)
        (Pc_Pa_secret_c)
        (Pc_Pb_not_secret_a)
        (Pc_Pb_not_secret_b)
        (Pc_Pb_not_secret_c)
        (Pc_Pb_secret_a)
        (Pc_Pb_secret_b)
        (Pc_Pb_secret_c)
        (Pc_Pc_not_secret_a)
        (Pc_Pc_not_secret_b)
        (Pc_Pc_not_secret_c)
        (Pc_Pc_secret_a)
        (Pc_Pc_secret_b)
        (Pc_Pc_secret_c)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (at_a_l1)
        (at_a_l2)
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
    )

    (:action move_a_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_a_l1))
        :effect (and
                    ; #32271: origin
                    (not_at_a_l1)

                    ; #69397: origin
                    (at_a_l1)

                    ; #32271: <==negation-removal== 69397 (pos)
                    (not (not_at_a_l1))

                    ; #69397: <==negation-removal== 32271 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #26025: origin
                    (at_a_l2)

                    ; #32271: origin
                    (not_at_a_l1)

                    ; #15036: <==negation-removal== 26025 (pos)
                    (not (not_at_a_l2))

                    ; #69397: <==negation-removal== 32271 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_a_l2))
        :effect (and
                    ; #15036: origin
                    (not_at_a_l2)

                    ; #69397: origin
                    (at_a_l1)

                    ; #26025: <==negation-removal== 15036 (pos)
                    (not (at_a_l2))

                    ; #32271: <==negation-removal== 69397 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #15036: origin
                    (not_at_a_l2)

                    ; #26025: origin
                    (at_a_l2)

                    ; #15036: <==negation-removal== 26025 (pos)
                    (not (not_at_a_l2))

                    ; #26025: <==negation-removal== 15036 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #24666: origin
                    (not_at_b_l1)

                    ; #55023: origin
                    (at_b_l1)

                    ; #24666: <==negation-removal== 55023 (pos)
                    (not (not_at_b_l1))

                    ; #55023: <==negation-removal== 24666 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #24666: origin
                    (not_at_b_l1)

                    ; #61327: origin
                    (at_b_l2)

                    ; #11694: <==negation-removal== 61327 (pos)
                    (not (not_at_b_l2))

                    ; #55023: <==negation-removal== 24666 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #11694: origin
                    (not_at_b_l2)

                    ; #55023: origin
                    (at_b_l1)

                    ; #24666: <==negation-removal== 55023 (pos)
                    (not (not_at_b_l1))

                    ; #61327: <==negation-removal== 11694 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #11694: origin
                    (not_at_b_l2)

                    ; #61327: origin
                    (at_b_l2)

                    ; #11694: <==negation-removal== 61327 (pos)
                    (not (not_at_b_l2))

                    ; #61327: <==negation-removal== 11694 (pos)
                    (not (at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #53646: origin
                    (not_at_c_l1)

                    ; #58779: origin
                    (at_c_l1)

                    ; #53646: <==negation-removal== 58779 (pos)
                    (not (not_at_c_l1))

                    ; #58779: <==negation-removal== 53646 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #53646: origin
                    (not_at_c_l1)

                    ; #80096: origin
                    (at_c_l2)

                    ; #45894: <==negation-removal== 80096 (pos)
                    (not (not_at_c_l2))

                    ; #58779: <==negation-removal== 53646 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_c_l2))
        :effect (and
                    ; #45894: origin
                    (not_at_c_l2)

                    ; #58779: origin
                    (at_c_l1)

                    ; #53646: <==negation-removal== 58779 (pos)
                    (not (not_at_c_l1))

                    ; #80096: <==negation-removal== 45894 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #45894: origin
                    (not_at_c_l2)

                    ; #80096: origin
                    (at_c_l2)

                    ; #45894: <==negation-removal== 80096 (pos)
                    (not (not_at_c_l2))

                    ; #80096: <==negation-removal== 45894 (pos)
                    (not (at_c_l2))))

    (:action share_a_a_l1
        :precondition (and (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #12028: <==commonly_known== 68062 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #12926: <==commonly_known== 28196 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #16290: <==commonly_known== 28196 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #16815: <==commonly_known== 88281 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #17597: <==closure== 87365 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #21228: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #22834: <==commonly_known== 31411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #23902: <==commonly_known== 54934 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #28196: <==closure== 54934 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #31411: <==closure== 68062 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #39178: <==commonly_known== 50638 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #42218: <==commonly_known== 60689 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #44618: <==commonly_known== 38449 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #47624: <==closure== 54283 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #51420: <==commonly_known== 54934 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #54283: <==commonly_known== 21228 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #54934: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #55324: <==commonly_known== 31411 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #57942: <==commonly_known== 21228 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #59513: <==closure== 23902 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #62622: <==commonly_known== 38449 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #64540: <==commonly_known== 50638 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #64936: <==closure== 57942 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #65434: <==commonly_known== 60689 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #67573: <==closure== 51420 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #68062: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71392: <==commonly_known== 88281 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #87365: <==commonly_known== 68062 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #88281: <==closure== 21228 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #90770: <==closure== 12028 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #11534: <==negation-removal== 67573 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #12349: <==negation-removal== 62622 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #14389: <==negation-removal== 87365 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #14406: <==negation-removal== 31411 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #16822: <==negation-removal== 51420 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #18445: <==negation-removal== 59513 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #18824: <==uncertain_firing== 47624 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #21180: <==uncertain_firing== 90770 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #23318: <==negation-removal== 90770 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #23501: <==uncertain_firing== 28196 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #24275: <==negation-removal== 64540 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #25855: <==negation-removal== 54283 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #26377: <==uncertain_firing== 59513 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #28295: <==negation-removal== 28196 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #30074: <==negation-removal== 16290 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30406: <==uncertain_firing== 55324 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #31659: <==uncertain_firing== 64540 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #37089: <==uncertain_firing== 87365 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #37164: <==uncertain_firing== 51420 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #37395: <==uncertain_firing== 12926 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #38449: <==uncertain_firing== 68062 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #40472: <==uncertain_firing== 44618 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #41380: <==negation-removal== 16815 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #44995: <==uncertain_firing== 12028 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #45131: <==uncertain_firing== 31411 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #46498: <==negation-removal== 44618 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #47320: <==uncertain_firing== 42218 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #49491: <==negation-removal== 71392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #49528: <==uncertain_firing== 57942 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #50638: <==uncertain_firing== 54934 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #53232: <==uncertain_firing== 22834 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #57037: <==negation-removal== 42218 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #57902: <==negation-removal== 57942 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #58082: <==uncertain_firing== 71392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #58188: <==uncertain_firing== 67573 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #59758: <==uncertain_firing== 16815 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #60689: <==uncertain_firing== 21228 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #62725: <==uncertain_firing== 39178 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #63417: <==negation-removal== 88281 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #64543: <==uncertain_firing== 64936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #66504: <==uncertain_firing== 62622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #67826: <==negation-removal== 23902 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #68674: <==uncertain_firing== 17597 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #69206: <==negation-removal== 68062 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #69345: <==negation-removal== 64936 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #70663: <==uncertain_firing== 23902 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #73503: <==negation-removal== 39178 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #75063: <==negation-removal== 17597 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #76545: <==negation-removal== 12926 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #78019: <==negation-removal== 65434 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #79762: <==negation-removal== 21228 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #82172: <==negation-removal== 12028 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #82313: <==uncertain_firing== 16290 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #83950: <==negation-removal== 54934 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #84433: <==negation-removal== 22834 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #84901: <==uncertain_firing== 65434 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #85739: <==uncertain_firing== 88281 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #85953: <==negation-removal== 47624 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #86852: <==negation-removal== 55324 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #90058: <==uncertain_firing== 54283 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Pa_secret_a)
                           (at_a_l2)
                           (Ba_secret_a))
        :effect (and
                    ; #10020: <==commonly_known== 84915 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_a))

                    ; #18426: <==commonly_known== 71627 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_a))

                    ; #20789: <==commonly_known== 29535 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_a))

                    ; #21296: <==commonly_known== 44024 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_a))

                    ; #29535: <==closure== 71627 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #29744: <==closure== 60228 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_a))

                    ; #30294: <==commonly_known== 27656 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_a))

                    ; #37261: <==closure== 81791 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_a))

                    ; #38444: <==commonly_known== 29535 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_a))

                    ; #39709: <==closure== 53379 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #44699: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #46589: <==commonly_known== 84915 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_a))

                    ; #53379: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #56932: <==commonly_known== 73219 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_a))

                    ; #60228: <==commonly_known== 53379 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_a))

                    ; #60577: <==commonly_known== 73219 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #61716: <==commonly_known== 27656 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_a))

                    ; #67905: <==commonly_known== 39709 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #70004: <==commonly_known== 44699 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_a))

                    ; #70474: <==closure== 70504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_a))

                    ; #70504: <==commonly_known== 53379 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #71627: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #72981: <==commonly_known== 44699 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_a))

                    ; #75755: <==closure== 18426 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_a))

                    ; #77578: <==closure== 72981 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_a))

                    ; #81791: <==commonly_known== 71627 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_a))

                    ; #84915: <==closure== 44699 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #85991: <==closure== 70004 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #86938: <==commonly_known== 39709 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_a))

                    ; #90709: <==commonly_known== 44024 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_a))

                    ; #10183: <==uncertain_firing== 37261 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #10818: <==negation-removal== 86938 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #11852: <==negation-removal== 21296 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #12188: <==uncertain_firing== 29744 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #14676: <==negation-removal== 29744 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #15022: <==uncertain_firing== 81791 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #15575: <==uncertain_firing== 20789 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #17227: <==negation-removal== 30294 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #18599: <==negation-removal== 37261 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #19799: <==uncertain_firing== 61716 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #22119: <==uncertain_firing== 46589 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #22178: <==negation-removal== 39709 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22390: <==uncertain_firing== 86938 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #23191: <==uncertain_firing== 60577 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #25512: <==negation-removal== 29535 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #27238: <==negation-removal== 71627 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #27656: <==uncertain_firing== 71627 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #28641: <==negation-removal== 90709 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #31278: <==negation-removal== 18426 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #32137: <==uncertain_firing== 39709 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #35632: <==negation-removal== 77578 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #36777: <==negation-removal== 53379 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #38929: <==negation-removal== 75755 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #39211: <==negation-removal== 85991 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #39908: <==negation-removal== 60228 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #44024: <==uncertain_firing== 44699 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #44684: <==negation-removal== 61716 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #44794: <==uncertain_firing== 56932 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #45806: <==uncertain_firing== 77578 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #46214: <==uncertain_firing== 70474 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #47251: <==uncertain_firing== 38444 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #47520: <==uncertain_firing== 21296 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #48380: <==negation-removal== 67905 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #49746: <==uncertain_firing== 84915 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #51436: <==uncertain_firing== 67905 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #51936: <==uncertain_firing== 18426 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #55891: <==negation-removal== 10020 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #58834: <==uncertain_firing== 72981 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #61539: <==uncertain_firing== 85991 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #63217: <==negation-removal== 70474 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #63632: <==negation-removal== 38444 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #63700: <==uncertain_firing== 70004 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #68998: <==uncertain_firing== 30294 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #70081: <==negation-removal== 44699 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #73023: <==negation-removal== 84915 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #73219: <==uncertain_firing== 53379 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #74379: <==negation-removal== 70004 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #75973: <==negation-removal== 72981 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #76561: <==uncertain_firing== 75755 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #77663: <==negation-removal== 81791 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #79108: <==negation-removal== 20789 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #79403: <==negation-removal== 56932 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #79786: <==negation-removal== 46589 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #83543: <==uncertain_firing== 10020 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #85542: <==uncertain_firing== 90709 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #88276: <==negation-removal== 60577 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #88826: <==uncertain_firing== 60228 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #89159: <==negation-removal== 70504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #90000: <==uncertain_firing== 70504 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #93032: <==uncertain_firing== 29535 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #16097: <==closure== 29295 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #24757: <==commonly_known== 16097 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #25163: <==closure== 44494 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #27559: <==commonly_known== 75109 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #29295: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #32201: <==commonly_known== 28760 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #39237: <==commonly_known== 91973 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #39738: <==commonly_known== 64482 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #39920: <==commonly_known== 64482 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #40558: <==commonly_known== 16097 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #41856: <==commonly_known== 29295 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #43520: <==closure== 55716 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #44494: <==commonly_known== 75109 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #45238: <==commonly_known== 29295 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #51065: <==closure== 27559 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #51204: <==closure== 66205 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #55685: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #55716: <==commonly_known== 55685 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #61149: <==closure== 45238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #64482: <==closure== 55685 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #66205: <==commonly_known== 55685 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #67158: <==closure== 41856 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #69852: <==commonly_known== 28941 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #75109: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79992: <==commonly_known== 86869 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #89341: <==commonly_known== 91973 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #90124: <==commonly_known== 28941 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #91284: <==commonly_known== 86869 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #91973: <==closure== 75109 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #99673: <==commonly_known== 28760 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #10128: <==negation-removal== 32201 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #11348: <==negation-removal== 40558 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #11825: <==uncertain_firing== 24757 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #12252: <==uncertain_firing== 44494 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #16590: <==uncertain_firing== 25163 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #16926: <==negation-removal== 91284 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #17449: <==negation-removal== 55685 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #19192: <==negation-removal== 27559 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #20440: <==uncertain_firing== 32201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #22536: <==uncertain_firing== 43520 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #23408: <==negation-removal== 39920 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #24708: <==negation-removal== 41856 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #26744: <==uncertain_firing== 40558 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #27721: <==uncertain_firing== 89341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #28760: <==uncertain_firing== 29295 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #28941: <==uncertain_firing== 75109 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #29589: <==negation-removal== 25163 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #30197: <==negation-removal== 75109 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #31200: <==negation-removal== 66205 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #31349: <==negation-removal== 91973 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #31486: <==uncertain_firing== 90124 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #31573: <==uncertain_firing== 64482 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #32266: <==uncertain_firing== 45238 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32911: <==negation-removal== 45238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32926: <==negation-removal== 39738 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #34577: <==uncertain_firing== 69852 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #36523: <==negation-removal== 64482 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #38695: <==uncertain_firing== 66205 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #42088: <==uncertain_firing== 91284 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #43136: <==negation-removal== 51204 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #43728: <==uncertain_firing== 41856 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44487: <==negation-removal== 79992 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #44837: <==uncertain_firing== 51065 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #46093: <==negation-removal== 16097 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #46902: <==uncertain_firing== 79992 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #48612: <==uncertain_firing== 61149 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #49312: <==negation-removal== 39237 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #53704: <==uncertain_firing== 55716 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #55928: <==uncertain_firing== 16097 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #56072: <==negation-removal== 44494 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #57455: <==negation-removal== 67158 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #57774: <==negation-removal== 55716 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #64043: <==uncertain_firing== 27559 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #64649: <==negation-removal== 89341 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #66157: <==uncertain_firing== 39237 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #68104: <==negation-removal== 43520 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #69250: <==uncertain_firing== 51204 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #69503: <==negation-removal== 90124 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #69854: <==negation-removal== 69852 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #71223: <==negation-removal== 51065 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #71640: <==uncertain_firing== 99673 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #73213: <==uncertain_firing== 39738 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #75583: <==negation-removal== 24757 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #77250: <==uncertain_firing== 39920 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #81768: <==negation-removal== 61149 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #82417: <==negation-removal== 99673 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #84665: <==negation-removal== 29295 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #85227: <==uncertain_firing== 67158 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #86869: <==uncertain_firing== 55685 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88881: <==uncertain_firing== 91973 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #11948: <==closure== 12104 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12104: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #15229: <==commonly_known== 56429 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_b))

                    ; #15605: <==commonly_known== 12104 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #17645: <==commonly_known== 11948 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_b))

                    ; #21756: <==commonly_known== 70518 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #22201: <==commonly_known== 39498 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_b))

                    ; #22489: <==commonly_known== 76245 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_b))

                    ; #23894: <==closure== 15605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_b))

                    ; #32249: <==commonly_known== 70518 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_b))

                    ; #32772: <==commonly_known== 39498 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_b))

                    ; #33252: <==closure== 58839 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_b))

                    ; #39498: <==closure== 43642 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #39805: <==commonly_known== 34368 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_b))

                    ; #43642: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #46943: <==commonly_known== 56429 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_b))

                    ; #56429: <==closure== 76245 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #57333: <==commonly_known== 34368 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_b))

                    ; #58839: <==commonly_known== 76245 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_b))

                    ; #59535: <==commonly_known== 11948 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #63447: <==closure== 94951 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_b))

                    ; #65415: <==commonly_known== 91482 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_b))

                    ; #70021: <==closure== 80002 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_b))

                    ; #71306: <==commonly_known== 91482 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_b))

                    ; #76245: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #76540: <==closure== 22489 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_b))

                    ; #80002: <==commonly_known== 12104 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_b))

                    ; #83770: <==commonly_known== 43642 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_b))

                    ; #90245: <==closure== 83770 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #94951: <==commonly_known== 43642 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_b))

                    ; #14979: <==negation-removal== 43642 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #16122: <==uncertain_firing== 90245 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #20987: <==uncertain_firing== 83770 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #22823: <==negation-removal== 33252 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #22913: <==uncertain_firing== 32772 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #27423: <==uncertain_firing== 39498 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #27935: <==negation-removal== 83770 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #29842: <==uncertain_firing== 80002 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #30602: <==negation-removal== 39805 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #31860: <==uncertain_firing== 22201 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #32510: <==uncertain_firing== 94951 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #34368: <==uncertain_firing== 43642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #34765: <==negation-removal== 90245 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #36007: <==negation-removal== 23894 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #38378: <==negation-removal== 76540 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #39990: <==negation-removal== 15605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #40097: <==negation-removal== 71306 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #40835: <==negation-removal== 58839 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #42906: <==negation-removal== 15229 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #47191: <==negation-removal== 57333 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #49602: <==negation-removal== 94951 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #50303: <==negation-removal== 39498 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50518: <==uncertain_firing== 46943 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #50605: <==negation-removal== 59535 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #51219: <==uncertain_firing== 11948 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #52958: <==negation-removal== 11948 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #55094: <==negation-removal== 76245 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55138: <==uncertain_firing== 71306 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #55205: <==uncertain_firing== 76540 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #56275: <==uncertain_firing== 15229 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #56472: <==negation-removal== 46943 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #56728: <==uncertain_firing== 58839 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #60693: <==uncertain_firing== 15605 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #60977: <==negation-removal== 22489 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #62402: <==uncertain_firing== 32249 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #62542: <==uncertain_firing== 39805 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #62992: <==negation-removal== 32772 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #64055: <==negation-removal== 56429 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #65339: <==negation-removal== 32249 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #67274: <==uncertain_firing== 59535 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #67779: <==uncertain_firing== 17645 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #69803: <==uncertain_firing== 23894 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #70518: <==uncertain_firing== 12104 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #71038: <==uncertain_firing== 22489 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #73263: <==negation-removal== 63447 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #74926: <==negation-removal== 22201 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #77069: <==uncertain_firing== 56429 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #77482: <==uncertain_firing== 70021 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #77852: <==negation-removal== 21756 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #80217: <==negation-removal== 80002 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #81308: <==uncertain_firing== 33252 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #82296: <==negation-removal== 70021 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #82805: <==negation-removal== 65415 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86724: <==uncertain_firing== 63447 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #89237: <==uncertain_firing== 21756 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #89319: <==negation-removal== 17645 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #91482: <==uncertain_firing== 76245 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #91737: <==uncertain_firing== 57333 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #94215: <==uncertain_firing== 65415 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #97184: <==negation-removal== 12104 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #14296: <==closure== 28435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #15690: <==commonly_known== 16967 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #22258: <==closure== 77442 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #27791: <==closure== 57669 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28435: <==commonly_known== 85724 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #30762: <==commonly_known== 43454 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #30928: <==closure== 62552 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #32673: <==commonly_known== 72048 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #34312: <==commonly_known== 51412 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #36373: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36959: <==commonly_known== 27791 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #43098: <==commonly_known== 43454 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #43144: <==commonly_known== 16967 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #46612: <==commonly_known== 85724 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #51412: <==closure== 85724 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #51586: <==commonly_known== 36373 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #56636: <==commonly_known== 20255 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #57669: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #62552: <==commonly_known== 57669 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #68734: <==commonly_known== 36373 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #71962: <==commonly_known== 72048 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #72048: <==closure== 36373 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #77442: <==commonly_known== 57669 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #78374: <==closure== 51586 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #79204: <==commonly_known== 51412 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #80644: <==commonly_known== 20255 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #81260: <==closure== 46612 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #85724: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89321: <==closure== 68734 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #99521: <==commonly_known== 27791 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #10073: <==uncertain_firing== 34312 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #12425: <==uncertain_firing== 99521 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #14449: <==uncertain_firing== 30928 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #16967: <==uncertain_firing== 36373 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #17410: <==negation-removal== 27791 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #17817: <==uncertain_firing== 36959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #18053: <==negation-removal== 72048 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #20255: <==uncertain_firing== 85724 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20408: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #21369: <==negation-removal== 43098 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #23205: <==uncertain_firing== 43144 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #23256: <==negation-removal== 36373 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #23698: <==uncertain_firing== 56636 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #25127: <==uncertain_firing== 22258 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #25389: <==negation-removal== 30762 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #28131: <==uncertain_firing== 72048 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #30465: <==negation-removal== 68734 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #30589: <==uncertain_firing== 51586 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #30655: <==negation-removal== 46612 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #31584: <==uncertain_firing== 46612 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #32334: <==negation-removal== 14296 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #33665: <==negation-removal== 77442 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #38438: <==negation-removal== 57669 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #40607: <==uncertain_firing== 78374 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #40948: <==uncertain_firing== 14296 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #41272: <==negation-removal== 78374 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #41893: <==negation-removal== 85724 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #43454: <==uncertain_firing== 57669 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44820: <==negation-removal== 28435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #46736: <==uncertain_firing== 28435 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #48246: <==negation-removal== 56636 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #50004: <==negation-removal== 34312 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #52860: <==negation-removal== 36959 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #53139: <==uncertain_firing== 43098 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #54289: <==negation-removal== 15690 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #54557: <==negation-removal== 51586 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #55557: <==negation-removal== 32673 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #56506: <==uncertain_firing== 80644 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #58491: <==negation-removal== 89321 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #58771: <==uncertain_firing== 79204 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #64214: <==uncertain_firing== 89321 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #64468: <==uncertain_firing== 68734 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #64775: <==uncertain_firing== 32673 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #68642: <==negation-removal== 62552 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #69479: <==uncertain_firing== 71962 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #74137: <==uncertain_firing== 62552 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #74874: <==negation-removal== 22258 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #75688: <==negation-removal== 81260 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #77660: <==uncertain_firing== 77442 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #77792: <==uncertain_firing== 30762 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #77842: <==uncertain_firing== 27791 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #79562: <==negation-removal== 79204 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #81005: <==negation-removal== 30928 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #83415: <==negation-removal== 99521 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #83783: <==negation-removal== 43144 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #84192: <==uncertain_firing== 15690 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #90343: <==uncertain_firing== 51412 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #90443: <==negation-removal== 71962 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #91402: <==negation-removal== 80644 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #94904: <==negation-removal== 51412 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #10050: <==closure== 38584 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #10104: <==commonly_known== 86036 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_c))

                    ; #10826: <==commonly_known== 15223 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_c))

                    ; #16501: <==commonly_known== 44605 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_c))

                    ; #21676: <==closure== 44605 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #24235: <==commonly_known== 21676 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #26492: <==commonly_known== 49477 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_c))

                    ; #31306: <==closure== 50112 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_c))

                    ; #31780: <==commonly_known== 10050 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_c))

                    ; #38584: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39520: <==commonly_known== 50340 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_c))

                    ; #42296: <==commonly_known== 49477 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_c))

                    ; #42352: <==closure== 72188 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #42419: <==closure== 80100 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_c))

                    ; #44530: <==closure== 10104 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_c))

                    ; #44605: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #50112: <==commonly_known== 38584 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_c))

                    ; #50340: <==closure== 86036 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #50578: <==closure== 16501 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_c))

                    ; #55262: <==commonly_known== 21676 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_c))

                    ; #56134: <==commonly_known== 80423 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_c))

                    ; #71907: <==commonly_known== 80423 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_c))

                    ; #72188: <==commonly_known== 86036 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_c))

                    ; #73383: <==commonly_known== 10050 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_c))

                    ; #80100: <==commonly_known== 38584 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_c))

                    ; #80666: <==commonly_known== 44605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #80677: <==commonly_known== 15223 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #83086: <==commonly_known== 50340 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_c))

                    ; #86036: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #94370: <==closure== 80666 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_c))

                    ; #10829: <==negation-removal== 72188 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #13358: <==negation-removal== 31780 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #14170: <==negation-removal== 50578 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #14537: <==uncertain_firing== 16501 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #14773: <==negation-removal== 42296 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #15223: <==uncertain_firing== 44605 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #17347: <==negation-removal== 21676 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #19191: <==uncertain_firing== 80666 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #20422: <==negation-removal== 56134 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #22131: <==negation-removal== 39520 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #22464: <==negation-removal== 86036 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #23480: <==negation-removal== 71907 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #24181: <==negation-removal== 16501 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #28722: <==uncertain_firing== 80100 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #29404: <==negation-removal== 80666 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #29639: <==uncertain_firing== 56134 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #31551: <==uncertain_firing== 42419 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #31574: <==negation-removal== 31306 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #31796: <==negation-removal== 73383 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #34274: <==negation-removal== 94370 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #34931: <==uncertain_firing== 31306 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #35604: <==negation-removal== 83086 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #40688: <==negation-removal== 26492 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #41536: <==uncertain_firing== 39520 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #42374: <==uncertain_firing== 50112 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #43774: <==uncertain_firing== 10826 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46295: <==negation-removal== 44530 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #47832: <==negation-removal== 10050 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #48997: <==uncertain_firing== 73383 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #49338: <==negation-removal== 55262 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #49477: <==uncertain_firing== 38584 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #50210: <==negation-removal== 44605 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #51011: <==uncertain_firing== 10104 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #51639: <==uncertain_firing== 42296 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #52751: <==uncertain_firing== 24235 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #53503: <==negation-removal== 50340 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #55234: <==uncertain_firing== 50578 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #56944: <==uncertain_firing== 21676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62549: <==negation-removal== 80100 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #64692: <==uncertain_firing== 10050 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #64696: <==negation-removal== 24235 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #67034: <==uncertain_firing== 71907 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #71404: <==uncertain_firing== 42352 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #71982: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #72036: <==uncertain_firing== 44530 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #73363: <==uncertain_firing== 26492 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #76658: <==uncertain_firing== 50340 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #78088: <==negation-removal== 50112 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #78408: <==uncertain_firing== 31780 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #80423: <==uncertain_firing== 86036 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #82147: <==uncertain_firing== 72188 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #82190: <==uncertain_firing== 80677 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #85093: <==negation-removal== 10104 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #87431: <==uncertain_firing== 83086 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #87695: <==negation-removal== 10826 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #88682: <==negation-removal== 42352 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #89806: <==negation-removal== 38584 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #89982: <==negation-removal== 42419 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #90806: <==uncertain_firing== 94370 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #91121: <==negation-removal== 80677 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_c)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l1))
        :effect (and
                    ; #12028: <==commonly_known== 68062 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #12926: <==commonly_known== 28196 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #16290: <==commonly_known== 28196 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #16815: <==commonly_known== 88281 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #17597: <==closure== 87365 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #21228: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #22834: <==commonly_known== 31411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #23902: <==commonly_known== 54934 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #28196: <==closure== 54934 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #31411: <==closure== 68062 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #39178: <==commonly_known== 50638 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #42218: <==commonly_known== 60689 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #44618: <==commonly_known== 38449 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #47624: <==closure== 54283 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #51420: <==commonly_known== 54934 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #54283: <==commonly_known== 21228 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #54934: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #55324: <==commonly_known== 31411 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #57942: <==commonly_known== 21228 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #59513: <==closure== 23902 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #62622: <==commonly_known== 38449 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #64540: <==commonly_known== 50638 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #64936: <==closure== 57942 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #65434: <==commonly_known== 60689 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #67573: <==closure== 51420 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #68062: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71392: <==commonly_known== 88281 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #87365: <==commonly_known== 68062 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #88281: <==closure== 21228 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #90770: <==closure== 12028 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #11534: <==negation-removal== 67573 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #12349: <==negation-removal== 62622 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #14389: <==negation-removal== 87365 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #14406: <==negation-removal== 31411 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #16822: <==negation-removal== 51420 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #18445: <==negation-removal== 59513 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #18824: <==uncertain_firing== 47624 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #21180: <==uncertain_firing== 90770 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #23318: <==negation-removal== 90770 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #23501: <==uncertain_firing== 28196 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #24275: <==negation-removal== 64540 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #25855: <==negation-removal== 54283 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #26377: <==uncertain_firing== 59513 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #28295: <==negation-removal== 28196 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #30074: <==negation-removal== 16290 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30406: <==uncertain_firing== 55324 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #31659: <==uncertain_firing== 64540 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #37089: <==uncertain_firing== 87365 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #37164: <==uncertain_firing== 51420 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #37395: <==uncertain_firing== 12926 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #38449: <==uncertain_firing== 68062 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #40472: <==uncertain_firing== 44618 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #41380: <==negation-removal== 16815 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #44995: <==uncertain_firing== 12028 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #45131: <==uncertain_firing== 31411 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #46498: <==negation-removal== 44618 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #47320: <==uncertain_firing== 42218 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #49491: <==negation-removal== 71392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #49528: <==uncertain_firing== 57942 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #50638: <==uncertain_firing== 54934 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #53232: <==uncertain_firing== 22834 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #57037: <==negation-removal== 42218 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #57902: <==negation-removal== 57942 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #58082: <==uncertain_firing== 71392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #58188: <==uncertain_firing== 67573 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #59758: <==uncertain_firing== 16815 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #60689: <==uncertain_firing== 21228 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #62725: <==uncertain_firing== 39178 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #63417: <==negation-removal== 88281 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #64543: <==uncertain_firing== 64936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #66504: <==uncertain_firing== 62622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #67826: <==negation-removal== 23902 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #68674: <==uncertain_firing== 17597 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #69206: <==negation-removal== 68062 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #69345: <==negation-removal== 64936 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #70663: <==uncertain_firing== 23902 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #73503: <==negation-removal== 39178 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #75063: <==negation-removal== 17597 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #76545: <==negation-removal== 12926 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #78019: <==negation-removal== 65434 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #79762: <==negation-removal== 21228 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #82172: <==negation-removal== 12028 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #82313: <==uncertain_firing== 16290 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #83950: <==negation-removal== 54934 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #84433: <==negation-removal== 22834 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #84901: <==uncertain_firing== 65434 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #85739: <==uncertain_firing== 88281 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #85953: <==negation-removal== 47624 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #86852: <==negation-removal== 55324 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #90058: <==uncertain_firing== 54283 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #10020: <==commonly_known== 84915 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_a))

                    ; #18426: <==commonly_known== 71627 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_a))

                    ; #20789: <==commonly_known== 29535 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_a))

                    ; #21296: <==commonly_known== 44024 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_a))

                    ; #29535: <==closure== 71627 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #29744: <==closure== 60228 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_a))

                    ; #30294: <==commonly_known== 27656 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_a))

                    ; #37261: <==closure== 81791 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_a))

                    ; #38444: <==commonly_known== 29535 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_a))

                    ; #39709: <==closure== 53379 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #44699: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #46589: <==commonly_known== 84915 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_a))

                    ; #53379: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #56932: <==commonly_known== 73219 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_a))

                    ; #60228: <==commonly_known== 53379 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_a))

                    ; #60577: <==commonly_known== 73219 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #61716: <==commonly_known== 27656 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_a))

                    ; #67905: <==commonly_known== 39709 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #70004: <==commonly_known== 44699 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_a))

                    ; #70474: <==closure== 70504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_a))

                    ; #70504: <==commonly_known== 53379 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #71627: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #72981: <==commonly_known== 44699 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_a))

                    ; #75755: <==closure== 18426 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_a))

                    ; #77578: <==closure== 72981 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_a))

                    ; #81791: <==commonly_known== 71627 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_a))

                    ; #84915: <==closure== 44699 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #85991: <==closure== 70004 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #86938: <==commonly_known== 39709 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_a))

                    ; #90709: <==commonly_known== 44024 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_a))

                    ; #10183: <==uncertain_firing== 37261 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #10818: <==negation-removal== 86938 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #11852: <==negation-removal== 21296 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #12188: <==uncertain_firing== 29744 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #14676: <==negation-removal== 29744 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #15022: <==uncertain_firing== 81791 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #15575: <==uncertain_firing== 20789 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #17227: <==negation-removal== 30294 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #18599: <==negation-removal== 37261 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #19799: <==uncertain_firing== 61716 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #22119: <==uncertain_firing== 46589 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #22178: <==negation-removal== 39709 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22390: <==uncertain_firing== 86938 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #23191: <==uncertain_firing== 60577 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #25512: <==negation-removal== 29535 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #27238: <==negation-removal== 71627 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #27656: <==uncertain_firing== 71627 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #28641: <==negation-removal== 90709 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #31278: <==negation-removal== 18426 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #32137: <==uncertain_firing== 39709 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #35632: <==negation-removal== 77578 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #36777: <==negation-removal== 53379 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #38929: <==negation-removal== 75755 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #39211: <==negation-removal== 85991 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #39908: <==negation-removal== 60228 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #44024: <==uncertain_firing== 44699 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #44684: <==negation-removal== 61716 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #44794: <==uncertain_firing== 56932 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #45806: <==uncertain_firing== 77578 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #46214: <==uncertain_firing== 70474 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #47251: <==uncertain_firing== 38444 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #47520: <==uncertain_firing== 21296 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #48380: <==negation-removal== 67905 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #49746: <==uncertain_firing== 84915 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #51436: <==uncertain_firing== 67905 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #51936: <==uncertain_firing== 18426 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #55891: <==negation-removal== 10020 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #58834: <==uncertain_firing== 72981 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #61539: <==uncertain_firing== 85991 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #63217: <==negation-removal== 70474 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #63632: <==negation-removal== 38444 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #63700: <==uncertain_firing== 70004 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #68998: <==uncertain_firing== 30294 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #70081: <==negation-removal== 44699 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #73023: <==negation-removal== 84915 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #73219: <==uncertain_firing== 53379 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #74379: <==negation-removal== 70004 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #75973: <==negation-removal== 72981 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #76561: <==uncertain_firing== 75755 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #77663: <==negation-removal== 81791 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #79108: <==negation-removal== 20789 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #79403: <==negation-removal== 56932 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #79786: <==negation-removal== 46589 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #83543: <==uncertain_firing== 10020 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #85542: <==uncertain_firing== 90709 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #88276: <==negation-removal== 60577 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #88826: <==uncertain_firing== 60228 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #89159: <==negation-removal== 70504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #90000: <==uncertain_firing== 70504 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #93032: <==uncertain_firing== 29535 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #16097: <==closure== 29295 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #24757: <==commonly_known== 16097 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #25163: <==closure== 44494 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #27559: <==commonly_known== 75109 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #29295: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #32201: <==commonly_known== 28760 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #39237: <==commonly_known== 91973 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #39738: <==commonly_known== 64482 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #39920: <==commonly_known== 64482 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #40558: <==commonly_known== 16097 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #41856: <==commonly_known== 29295 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #43520: <==closure== 55716 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #44494: <==commonly_known== 75109 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #45238: <==commonly_known== 29295 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #51065: <==closure== 27559 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #51204: <==closure== 66205 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #55685: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #55716: <==commonly_known== 55685 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #61149: <==closure== 45238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #64482: <==closure== 55685 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #66205: <==commonly_known== 55685 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #67158: <==closure== 41856 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #69852: <==commonly_known== 28941 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #75109: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79992: <==commonly_known== 86869 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #89341: <==commonly_known== 91973 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #90124: <==commonly_known== 28941 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #91284: <==commonly_known== 86869 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #91973: <==closure== 75109 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #99673: <==commonly_known== 28760 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #10128: <==negation-removal== 32201 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #11348: <==negation-removal== 40558 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #11825: <==uncertain_firing== 24757 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #12252: <==uncertain_firing== 44494 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #16590: <==uncertain_firing== 25163 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #16926: <==negation-removal== 91284 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #17449: <==negation-removal== 55685 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #19192: <==negation-removal== 27559 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #20440: <==uncertain_firing== 32201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #22536: <==uncertain_firing== 43520 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #23408: <==negation-removal== 39920 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #24708: <==negation-removal== 41856 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #26744: <==uncertain_firing== 40558 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #27721: <==uncertain_firing== 89341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #28760: <==uncertain_firing== 29295 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #28941: <==uncertain_firing== 75109 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #29589: <==negation-removal== 25163 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #30197: <==negation-removal== 75109 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #31200: <==negation-removal== 66205 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #31349: <==negation-removal== 91973 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #31486: <==uncertain_firing== 90124 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #31573: <==uncertain_firing== 64482 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #32266: <==uncertain_firing== 45238 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32911: <==negation-removal== 45238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32926: <==negation-removal== 39738 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #34577: <==uncertain_firing== 69852 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #36523: <==negation-removal== 64482 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #38695: <==uncertain_firing== 66205 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #42088: <==uncertain_firing== 91284 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #43136: <==negation-removal== 51204 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #43728: <==uncertain_firing== 41856 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44487: <==negation-removal== 79992 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #44837: <==uncertain_firing== 51065 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #46093: <==negation-removal== 16097 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #46902: <==uncertain_firing== 79992 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #48612: <==uncertain_firing== 61149 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #49312: <==negation-removal== 39237 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #53704: <==uncertain_firing== 55716 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #55928: <==uncertain_firing== 16097 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #56072: <==negation-removal== 44494 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #57455: <==negation-removal== 67158 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #57774: <==negation-removal== 55716 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #64043: <==uncertain_firing== 27559 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #64649: <==negation-removal== 89341 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #66157: <==uncertain_firing== 39237 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #68104: <==negation-removal== 43520 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #69250: <==uncertain_firing== 51204 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #69503: <==negation-removal== 90124 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #69854: <==negation-removal== 69852 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #71223: <==negation-removal== 51065 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #71640: <==uncertain_firing== 99673 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #73213: <==uncertain_firing== 39738 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #75583: <==negation-removal== 24757 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #77250: <==uncertain_firing== 39920 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #81768: <==negation-removal== 61149 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #82417: <==negation-removal== 99673 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #84665: <==negation-removal== 29295 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #85227: <==uncertain_firing== 67158 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #86869: <==uncertain_firing== 55685 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88881: <==uncertain_firing== 91973 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #11948: <==closure== 12104 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12104: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #15229: <==commonly_known== 56429 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_b))

                    ; #15605: <==commonly_known== 12104 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #17645: <==commonly_known== 11948 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_b))

                    ; #21756: <==commonly_known== 70518 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #22201: <==commonly_known== 39498 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_b))

                    ; #22489: <==commonly_known== 76245 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_b))

                    ; #23894: <==closure== 15605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_b))

                    ; #32249: <==commonly_known== 70518 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_b))

                    ; #32772: <==commonly_known== 39498 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_b))

                    ; #33252: <==closure== 58839 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_b))

                    ; #39498: <==closure== 43642 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #39805: <==commonly_known== 34368 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_b))

                    ; #43642: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #46943: <==commonly_known== 56429 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_b))

                    ; #56429: <==closure== 76245 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #57333: <==commonly_known== 34368 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_b))

                    ; #58839: <==commonly_known== 76245 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_b))

                    ; #59535: <==commonly_known== 11948 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #63447: <==closure== 94951 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_b))

                    ; #65415: <==commonly_known== 91482 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_b))

                    ; #70021: <==closure== 80002 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_b))

                    ; #71306: <==commonly_known== 91482 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_b))

                    ; #76245: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #76540: <==closure== 22489 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_b))

                    ; #80002: <==commonly_known== 12104 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_b))

                    ; #83770: <==commonly_known== 43642 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_b))

                    ; #90245: <==closure== 83770 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #94951: <==commonly_known== 43642 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_b))

                    ; #14979: <==negation-removal== 43642 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #16122: <==uncertain_firing== 90245 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #20987: <==uncertain_firing== 83770 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #22823: <==negation-removal== 33252 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #22913: <==uncertain_firing== 32772 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #27423: <==uncertain_firing== 39498 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #27935: <==negation-removal== 83770 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #29842: <==uncertain_firing== 80002 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #30602: <==negation-removal== 39805 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #31860: <==uncertain_firing== 22201 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #32510: <==uncertain_firing== 94951 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #34368: <==uncertain_firing== 43642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #34765: <==negation-removal== 90245 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #36007: <==negation-removal== 23894 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #38378: <==negation-removal== 76540 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #39990: <==negation-removal== 15605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #40097: <==negation-removal== 71306 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #40835: <==negation-removal== 58839 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #42906: <==negation-removal== 15229 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #47191: <==negation-removal== 57333 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #49602: <==negation-removal== 94951 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #50303: <==negation-removal== 39498 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50518: <==uncertain_firing== 46943 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #50605: <==negation-removal== 59535 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #51219: <==uncertain_firing== 11948 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #52958: <==negation-removal== 11948 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #55094: <==negation-removal== 76245 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55138: <==uncertain_firing== 71306 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #55205: <==uncertain_firing== 76540 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #56275: <==uncertain_firing== 15229 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #56472: <==negation-removal== 46943 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #56728: <==uncertain_firing== 58839 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #60693: <==uncertain_firing== 15605 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #60977: <==negation-removal== 22489 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #62402: <==uncertain_firing== 32249 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #62542: <==uncertain_firing== 39805 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #62992: <==negation-removal== 32772 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #64055: <==negation-removal== 56429 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #65339: <==negation-removal== 32249 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #67274: <==uncertain_firing== 59535 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #67779: <==uncertain_firing== 17645 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #69803: <==uncertain_firing== 23894 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #70518: <==uncertain_firing== 12104 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #71038: <==uncertain_firing== 22489 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #73263: <==negation-removal== 63447 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #74926: <==negation-removal== 22201 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #77069: <==uncertain_firing== 56429 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #77482: <==uncertain_firing== 70021 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #77852: <==negation-removal== 21756 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #80217: <==negation-removal== 80002 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #81308: <==uncertain_firing== 33252 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #82296: <==negation-removal== 70021 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #82805: <==negation-removal== 65415 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86724: <==uncertain_firing== 63447 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #89237: <==uncertain_firing== 21756 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #89319: <==negation-removal== 17645 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #91482: <==uncertain_firing== 76245 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #91737: <==uncertain_firing== 57333 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #94215: <==uncertain_firing== 65415 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #97184: <==negation-removal== 12104 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #14296: <==closure== 28435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #15690: <==commonly_known== 16967 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #22258: <==closure== 77442 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #27791: <==closure== 57669 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28435: <==commonly_known== 85724 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #30762: <==commonly_known== 43454 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #30928: <==closure== 62552 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #32673: <==commonly_known== 72048 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #34312: <==commonly_known== 51412 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #36373: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36959: <==commonly_known== 27791 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #43098: <==commonly_known== 43454 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #43144: <==commonly_known== 16967 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #46612: <==commonly_known== 85724 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #51412: <==closure== 85724 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #51586: <==commonly_known== 36373 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #56636: <==commonly_known== 20255 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #57669: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #62552: <==commonly_known== 57669 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #68734: <==commonly_known== 36373 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #71962: <==commonly_known== 72048 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #72048: <==closure== 36373 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #77442: <==commonly_known== 57669 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #78374: <==closure== 51586 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #79204: <==commonly_known== 51412 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #80644: <==commonly_known== 20255 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #81260: <==closure== 46612 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #85724: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89321: <==closure== 68734 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #99521: <==commonly_known== 27791 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #10073: <==uncertain_firing== 34312 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #12425: <==uncertain_firing== 99521 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #14449: <==uncertain_firing== 30928 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #16967: <==uncertain_firing== 36373 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #17410: <==negation-removal== 27791 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #17817: <==uncertain_firing== 36959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #18053: <==negation-removal== 72048 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #20255: <==uncertain_firing== 85724 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20408: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #21369: <==negation-removal== 43098 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #23205: <==uncertain_firing== 43144 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #23256: <==negation-removal== 36373 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #23698: <==uncertain_firing== 56636 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #25127: <==uncertain_firing== 22258 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #25389: <==negation-removal== 30762 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #28131: <==uncertain_firing== 72048 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #30465: <==negation-removal== 68734 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #30589: <==uncertain_firing== 51586 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #30655: <==negation-removal== 46612 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #31584: <==uncertain_firing== 46612 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #32334: <==negation-removal== 14296 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #33665: <==negation-removal== 77442 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #38438: <==negation-removal== 57669 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #40607: <==uncertain_firing== 78374 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #40948: <==uncertain_firing== 14296 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #41272: <==negation-removal== 78374 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #41893: <==negation-removal== 85724 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #43454: <==uncertain_firing== 57669 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44820: <==negation-removal== 28435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #46736: <==uncertain_firing== 28435 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #48246: <==negation-removal== 56636 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #50004: <==negation-removal== 34312 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #52860: <==negation-removal== 36959 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #53139: <==uncertain_firing== 43098 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #54289: <==negation-removal== 15690 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #54557: <==negation-removal== 51586 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #55557: <==negation-removal== 32673 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #56506: <==uncertain_firing== 80644 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #58491: <==negation-removal== 89321 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #58771: <==uncertain_firing== 79204 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #64214: <==uncertain_firing== 89321 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #64468: <==uncertain_firing== 68734 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #64775: <==uncertain_firing== 32673 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #68642: <==negation-removal== 62552 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #69479: <==uncertain_firing== 71962 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #74137: <==uncertain_firing== 62552 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #74874: <==negation-removal== 22258 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #75688: <==negation-removal== 81260 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #77660: <==uncertain_firing== 77442 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #77792: <==uncertain_firing== 30762 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #77842: <==uncertain_firing== 27791 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #79562: <==negation-removal== 79204 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #81005: <==negation-removal== 30928 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #83415: <==negation-removal== 99521 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #83783: <==negation-removal== 43144 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #84192: <==uncertain_firing== 15690 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #90343: <==uncertain_firing== 51412 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #90443: <==negation-removal== 71962 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #91402: <==negation-removal== 80644 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #94904: <==negation-removal== 51412 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #10050: <==closure== 38584 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #10104: <==commonly_known== 86036 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_c))

                    ; #10826: <==commonly_known== 15223 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_c))

                    ; #16501: <==commonly_known== 44605 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_c))

                    ; #21676: <==closure== 44605 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #24235: <==commonly_known== 21676 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #26492: <==commonly_known== 49477 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_c))

                    ; #31306: <==closure== 50112 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_c))

                    ; #31780: <==commonly_known== 10050 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_c))

                    ; #38584: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39520: <==commonly_known== 50340 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_c))

                    ; #42296: <==commonly_known== 49477 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_c))

                    ; #42352: <==closure== 72188 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #42419: <==closure== 80100 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_c))

                    ; #44530: <==closure== 10104 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_c))

                    ; #44605: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #50112: <==commonly_known== 38584 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_c))

                    ; #50340: <==closure== 86036 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #50578: <==closure== 16501 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_c))

                    ; #55262: <==commonly_known== 21676 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_c))

                    ; #56134: <==commonly_known== 80423 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_c))

                    ; #71907: <==commonly_known== 80423 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_c))

                    ; #72188: <==commonly_known== 86036 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_c))

                    ; #73383: <==commonly_known== 10050 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_c))

                    ; #80100: <==commonly_known== 38584 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_c))

                    ; #80666: <==commonly_known== 44605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #80677: <==commonly_known== 15223 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #83086: <==commonly_known== 50340 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_c))

                    ; #86036: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #94370: <==closure== 80666 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_c))

                    ; #10829: <==negation-removal== 72188 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #13358: <==negation-removal== 31780 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #14170: <==negation-removal== 50578 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #14537: <==uncertain_firing== 16501 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #14773: <==negation-removal== 42296 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #15223: <==uncertain_firing== 44605 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #17347: <==negation-removal== 21676 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #19191: <==uncertain_firing== 80666 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #20422: <==negation-removal== 56134 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #22131: <==negation-removal== 39520 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #22464: <==negation-removal== 86036 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #23480: <==negation-removal== 71907 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #24181: <==negation-removal== 16501 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #28722: <==uncertain_firing== 80100 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #29404: <==negation-removal== 80666 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #29639: <==uncertain_firing== 56134 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #31551: <==uncertain_firing== 42419 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #31574: <==negation-removal== 31306 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #31796: <==negation-removal== 73383 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #34274: <==negation-removal== 94370 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #34931: <==uncertain_firing== 31306 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #35604: <==negation-removal== 83086 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #40688: <==negation-removal== 26492 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #41536: <==uncertain_firing== 39520 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #42374: <==uncertain_firing== 50112 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #43774: <==uncertain_firing== 10826 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46295: <==negation-removal== 44530 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #47832: <==negation-removal== 10050 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #48997: <==uncertain_firing== 73383 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #49338: <==negation-removal== 55262 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #49477: <==uncertain_firing== 38584 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #50210: <==negation-removal== 44605 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #51011: <==uncertain_firing== 10104 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #51639: <==uncertain_firing== 42296 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #52751: <==uncertain_firing== 24235 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #53503: <==negation-removal== 50340 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #55234: <==uncertain_firing== 50578 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #56944: <==uncertain_firing== 21676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62549: <==negation-removal== 80100 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #64692: <==uncertain_firing== 10050 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #64696: <==negation-removal== 24235 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #67034: <==uncertain_firing== 71907 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #71404: <==uncertain_firing== 42352 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #71982: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #72036: <==uncertain_firing== 44530 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #73363: <==uncertain_firing== 26492 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #76658: <==uncertain_firing== 50340 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #78088: <==negation-removal== 50112 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #78408: <==uncertain_firing== 31780 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #80423: <==uncertain_firing== 86036 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #82147: <==uncertain_firing== 72188 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #82190: <==uncertain_firing== 80677 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #85093: <==negation-removal== 10104 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #87431: <==uncertain_firing== 83086 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #87695: <==negation-removal== 10826 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #88682: <==negation-removal== 42352 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #89806: <==negation-removal== 38584 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #89982: <==negation-removal== 42419 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #90806: <==uncertain_firing== 94370 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #91121: <==negation-removal== 80677 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_c)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #12028: <==commonly_known== 68062 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #12926: <==commonly_known== 28196 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #16290: <==commonly_known== 28196 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #16815: <==commonly_known== 88281 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #17597: <==closure== 87365 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #21228: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #22834: <==commonly_known== 31411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #23902: <==commonly_known== 54934 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #28196: <==closure== 54934 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #31411: <==closure== 68062 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #39178: <==commonly_known== 50638 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #42218: <==commonly_known== 60689 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #44618: <==commonly_known== 38449 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #47624: <==closure== 54283 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #51420: <==commonly_known== 54934 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #54283: <==commonly_known== 21228 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #54934: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #55324: <==commonly_known== 31411 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #57942: <==commonly_known== 21228 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #59513: <==closure== 23902 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #62622: <==commonly_known== 38449 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #64540: <==commonly_known== 50638 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #64936: <==closure== 57942 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #65434: <==commonly_known== 60689 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #67573: <==closure== 51420 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #68062: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71392: <==commonly_known== 88281 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #87365: <==commonly_known== 68062 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #88281: <==closure== 21228 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #90770: <==closure== 12028 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #11534: <==negation-removal== 67573 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #12349: <==negation-removal== 62622 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #14389: <==negation-removal== 87365 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #14406: <==negation-removal== 31411 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #16822: <==negation-removal== 51420 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #18445: <==negation-removal== 59513 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #18824: <==uncertain_firing== 47624 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #21180: <==uncertain_firing== 90770 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #23318: <==negation-removal== 90770 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #23501: <==uncertain_firing== 28196 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #24275: <==negation-removal== 64540 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #25855: <==negation-removal== 54283 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #26377: <==uncertain_firing== 59513 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #28295: <==negation-removal== 28196 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #30074: <==negation-removal== 16290 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30406: <==uncertain_firing== 55324 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #31659: <==uncertain_firing== 64540 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #37089: <==uncertain_firing== 87365 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #37164: <==uncertain_firing== 51420 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #37395: <==uncertain_firing== 12926 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #38449: <==uncertain_firing== 68062 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #40472: <==uncertain_firing== 44618 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #41380: <==negation-removal== 16815 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #44995: <==uncertain_firing== 12028 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #45131: <==uncertain_firing== 31411 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #46498: <==negation-removal== 44618 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #47320: <==uncertain_firing== 42218 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #49491: <==negation-removal== 71392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #49528: <==uncertain_firing== 57942 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #50638: <==uncertain_firing== 54934 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #53232: <==uncertain_firing== 22834 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #57037: <==negation-removal== 42218 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #57902: <==negation-removal== 57942 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #58082: <==uncertain_firing== 71392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #58188: <==uncertain_firing== 67573 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #59758: <==uncertain_firing== 16815 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #60689: <==uncertain_firing== 21228 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #62725: <==uncertain_firing== 39178 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #63417: <==negation-removal== 88281 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #64543: <==uncertain_firing== 64936 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #66504: <==uncertain_firing== 62622 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #67826: <==negation-removal== 23902 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #68674: <==uncertain_firing== 17597 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #69206: <==negation-removal== 68062 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #69345: <==negation-removal== 64936 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #70663: <==uncertain_firing== 23902 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #73503: <==negation-removal== 39178 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #75063: <==negation-removal== 17597 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #76545: <==negation-removal== 12926 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #78019: <==negation-removal== 65434 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #79762: <==negation-removal== 21228 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #82172: <==negation-removal== 12028 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #82313: <==uncertain_firing== 16290 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #83950: <==negation-removal== 54934 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #84433: <==negation-removal== 22834 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #84901: <==uncertain_firing== 65434 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #85739: <==uncertain_firing== 88281 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #85953: <==negation-removal== 47624 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #86852: <==negation-removal== 55324 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #90058: <==uncertain_firing== 54283 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (at_c_l2)
                           (Pc_secret_a))
        :effect (and
                    ; #10020: <==commonly_known== 84915 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_a))

                    ; #18426: <==commonly_known== 71627 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_a))

                    ; #20789: <==commonly_known== 29535 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_a))

                    ; #21296: <==commonly_known== 44024 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_a))

                    ; #29535: <==closure== 71627 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #29744: <==closure== 60228 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_a))

                    ; #30294: <==commonly_known== 27656 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_a))

                    ; #37261: <==closure== 81791 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_a))

                    ; #38444: <==commonly_known== 29535 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_a))

                    ; #39709: <==closure== 53379 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #44699: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #46589: <==commonly_known== 84915 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_a))

                    ; #53379: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #56932: <==commonly_known== 73219 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_a))

                    ; #60228: <==commonly_known== 53379 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_a))

                    ; #60577: <==commonly_known== 73219 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #61716: <==commonly_known== 27656 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_a))

                    ; #67905: <==commonly_known== 39709 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #70004: <==commonly_known== 44699 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_a))

                    ; #70474: <==closure== 70504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_a))

                    ; #70504: <==commonly_known== 53379 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #71627: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #72981: <==commonly_known== 44699 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_a))

                    ; #75755: <==closure== 18426 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_a))

                    ; #77578: <==closure== 72981 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_a))

                    ; #81791: <==commonly_known== 71627 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_a))

                    ; #84915: <==closure== 44699 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #85991: <==closure== 70004 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #86938: <==commonly_known== 39709 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_a))

                    ; #90709: <==commonly_known== 44024 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_a))

                    ; #10183: <==uncertain_firing== 37261 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #10818: <==negation-removal== 86938 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #11852: <==negation-removal== 21296 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #12188: <==uncertain_firing== 29744 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #14676: <==negation-removal== 29744 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #15022: <==uncertain_firing== 81791 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #15575: <==uncertain_firing== 20789 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #17227: <==negation-removal== 30294 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #18599: <==negation-removal== 37261 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #19799: <==uncertain_firing== 61716 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #22119: <==uncertain_firing== 46589 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #22178: <==negation-removal== 39709 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22390: <==uncertain_firing== 86938 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #23191: <==uncertain_firing== 60577 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #25512: <==negation-removal== 29535 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #27238: <==negation-removal== 71627 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #27656: <==uncertain_firing== 71627 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #28641: <==negation-removal== 90709 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #31278: <==negation-removal== 18426 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #32137: <==uncertain_firing== 39709 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #35632: <==negation-removal== 77578 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #36777: <==negation-removal== 53379 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #38929: <==negation-removal== 75755 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #39211: <==negation-removal== 85991 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #39908: <==negation-removal== 60228 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #44024: <==uncertain_firing== 44699 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #44684: <==negation-removal== 61716 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #44794: <==uncertain_firing== 56932 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #45806: <==uncertain_firing== 77578 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #46214: <==uncertain_firing== 70474 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #47251: <==uncertain_firing== 38444 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #47520: <==uncertain_firing== 21296 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #48380: <==negation-removal== 67905 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #49746: <==uncertain_firing== 84915 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #51436: <==uncertain_firing== 67905 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #51936: <==uncertain_firing== 18426 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #55891: <==negation-removal== 10020 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #58834: <==uncertain_firing== 72981 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #61539: <==uncertain_firing== 85991 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #63217: <==negation-removal== 70474 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #63632: <==negation-removal== 38444 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #63700: <==uncertain_firing== 70004 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #68998: <==uncertain_firing== 30294 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #70081: <==negation-removal== 44699 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #73023: <==negation-removal== 84915 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #73219: <==uncertain_firing== 53379 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #74379: <==negation-removal== 70004 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #75973: <==negation-removal== 72981 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #76561: <==uncertain_firing== 75755 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #77663: <==negation-removal== 81791 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #79108: <==negation-removal== 20789 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #79403: <==negation-removal== 56932 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #79786: <==negation-removal== 46589 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #83543: <==uncertain_firing== 10020 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #85542: <==uncertain_firing== 90709 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #88276: <==negation-removal== 60577 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #88826: <==uncertain_firing== 60228 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #89159: <==negation-removal== 70504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #90000: <==uncertain_firing== 70504 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #93032: <==uncertain_firing== 29535 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Pc_secret_b)
                           (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #16097: <==closure== 29295 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #24757: <==commonly_known== 16097 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #25163: <==closure== 44494 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #27559: <==commonly_known== 75109 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #29295: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #32201: <==commonly_known== 28760 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #39237: <==commonly_known== 91973 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #39738: <==commonly_known== 64482 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #39920: <==commonly_known== 64482 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #40558: <==commonly_known== 16097 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #41856: <==commonly_known== 29295 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #43520: <==closure== 55716 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #44494: <==commonly_known== 75109 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #45238: <==commonly_known== 29295 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #51065: <==closure== 27559 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #51204: <==closure== 66205 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #55685: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #55716: <==commonly_known== 55685 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #61149: <==closure== 45238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #64482: <==closure== 55685 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #66205: <==commonly_known== 55685 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #67158: <==closure== 41856 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #69852: <==commonly_known== 28941 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #75109: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79992: <==commonly_known== 86869 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #89341: <==commonly_known== 91973 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #90124: <==commonly_known== 28941 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #91284: <==commonly_known== 86869 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #91973: <==closure== 75109 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #99673: <==commonly_known== 28760 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #10128: <==negation-removal== 32201 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #11348: <==negation-removal== 40558 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #11825: <==uncertain_firing== 24757 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #12252: <==uncertain_firing== 44494 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #16590: <==uncertain_firing== 25163 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #16926: <==negation-removal== 91284 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #17449: <==negation-removal== 55685 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #19192: <==negation-removal== 27559 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #20440: <==uncertain_firing== 32201 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #22536: <==uncertain_firing== 43520 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #23408: <==negation-removal== 39920 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #24708: <==negation-removal== 41856 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #26744: <==uncertain_firing== 40558 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #27721: <==uncertain_firing== 89341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #28760: <==uncertain_firing== 29295 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #28941: <==uncertain_firing== 75109 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #29589: <==negation-removal== 25163 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #30197: <==negation-removal== 75109 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #31200: <==negation-removal== 66205 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #31349: <==negation-removal== 91973 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #31486: <==uncertain_firing== 90124 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #31573: <==uncertain_firing== 64482 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #32266: <==uncertain_firing== 45238 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32911: <==negation-removal== 45238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32926: <==negation-removal== 39738 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #34577: <==uncertain_firing== 69852 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #36523: <==negation-removal== 64482 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #38695: <==uncertain_firing== 66205 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #42088: <==uncertain_firing== 91284 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #43136: <==negation-removal== 51204 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #43728: <==uncertain_firing== 41856 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44487: <==negation-removal== 79992 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #44837: <==uncertain_firing== 51065 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #46093: <==negation-removal== 16097 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #46902: <==uncertain_firing== 79992 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #48612: <==uncertain_firing== 61149 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #49312: <==negation-removal== 39237 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #53704: <==uncertain_firing== 55716 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #55928: <==uncertain_firing== 16097 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #56072: <==negation-removal== 44494 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #57455: <==negation-removal== 67158 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #57774: <==negation-removal== 55716 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #64043: <==uncertain_firing== 27559 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #64649: <==negation-removal== 89341 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #66157: <==uncertain_firing== 39237 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #68104: <==negation-removal== 43520 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #69250: <==uncertain_firing== 51204 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #69503: <==negation-removal== 90124 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #69854: <==negation-removal== 69852 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #71223: <==negation-removal== 51065 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #71640: <==uncertain_firing== 99673 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #73213: <==uncertain_firing== 39738 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #75583: <==negation-removal== 24757 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #77250: <==uncertain_firing== 39920 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #81768: <==negation-removal== 61149 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #82417: <==negation-removal== 99673 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #84665: <==negation-removal== 29295 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #85227: <==uncertain_firing== 67158 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #86869: <==uncertain_firing== 55685 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #88881: <==uncertain_firing== 91973 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Pc_secret_b)
                           (at_c_l2)
                           (Bc_secret_b))
        :effect (and
                    ; #11948: <==closure== 12104 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12104: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #15229: <==commonly_known== 56429 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_b))

                    ; #15605: <==commonly_known== 12104 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #17645: <==commonly_known== 11948 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_b))

                    ; #21756: <==commonly_known== 70518 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #22201: <==commonly_known== 39498 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_b))

                    ; #22489: <==commonly_known== 76245 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_b))

                    ; #23894: <==closure== 15605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_b))

                    ; #32249: <==commonly_known== 70518 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_b))

                    ; #32772: <==commonly_known== 39498 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_b))

                    ; #33252: <==closure== 58839 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_b))

                    ; #39498: <==closure== 43642 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #39805: <==commonly_known== 34368 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_b))

                    ; #43642: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #46943: <==commonly_known== 56429 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_b))

                    ; #56429: <==closure== 76245 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #57333: <==commonly_known== 34368 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_b))

                    ; #58839: <==commonly_known== 76245 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_b))

                    ; #59535: <==commonly_known== 11948 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #63447: <==closure== 94951 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_b))

                    ; #65415: <==commonly_known== 91482 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_b))

                    ; #70021: <==closure== 80002 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_b))

                    ; #71306: <==commonly_known== 91482 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_b))

                    ; #76245: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #76540: <==closure== 22489 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_b))

                    ; #80002: <==commonly_known== 12104 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_b))

                    ; #83770: <==commonly_known== 43642 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_b))

                    ; #90245: <==closure== 83770 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #94951: <==commonly_known== 43642 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_b))

                    ; #14979: <==negation-removal== 43642 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #16122: <==uncertain_firing== 90245 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #20987: <==uncertain_firing== 83770 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #22823: <==negation-removal== 33252 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #22913: <==uncertain_firing== 32772 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #27423: <==uncertain_firing== 39498 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #27935: <==negation-removal== 83770 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #29842: <==uncertain_firing== 80002 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #30602: <==negation-removal== 39805 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #31860: <==uncertain_firing== 22201 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #32510: <==uncertain_firing== 94951 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #34368: <==uncertain_firing== 43642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #34765: <==negation-removal== 90245 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #36007: <==negation-removal== 23894 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #38378: <==negation-removal== 76540 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #39990: <==negation-removal== 15605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #40097: <==negation-removal== 71306 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #40835: <==negation-removal== 58839 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #42906: <==negation-removal== 15229 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #47191: <==negation-removal== 57333 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #49602: <==negation-removal== 94951 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #50303: <==negation-removal== 39498 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50518: <==uncertain_firing== 46943 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #50605: <==negation-removal== 59535 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #51219: <==uncertain_firing== 11948 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #52958: <==negation-removal== 11948 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #55094: <==negation-removal== 76245 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55138: <==uncertain_firing== 71306 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #55205: <==uncertain_firing== 76540 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #56275: <==uncertain_firing== 15229 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #56472: <==negation-removal== 46943 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #56728: <==uncertain_firing== 58839 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #60693: <==uncertain_firing== 15605 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #60977: <==negation-removal== 22489 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #62402: <==uncertain_firing== 32249 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #62542: <==uncertain_firing== 39805 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #62992: <==negation-removal== 32772 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #64055: <==negation-removal== 56429 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #65339: <==negation-removal== 32249 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #67274: <==uncertain_firing== 59535 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #67779: <==uncertain_firing== 17645 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #69803: <==uncertain_firing== 23894 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #70518: <==uncertain_firing== 12104 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #71038: <==uncertain_firing== 22489 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #73263: <==negation-removal== 63447 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #74926: <==negation-removal== 22201 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #77069: <==uncertain_firing== 56429 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #77482: <==uncertain_firing== 70021 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #77852: <==negation-removal== 21756 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #80217: <==negation-removal== 80002 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #81308: <==uncertain_firing== 33252 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #82296: <==negation-removal== 70021 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #82805: <==negation-removal== 65415 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86724: <==uncertain_firing== 63447 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #89237: <==uncertain_firing== 21756 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #89319: <==negation-removal== 17645 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #91482: <==uncertain_firing== 76245 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #91737: <==uncertain_firing== 57333 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #94215: <==uncertain_firing== 65415 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #97184: <==negation-removal== 12104 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #14296: <==closure== 28435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #15690: <==commonly_known== 16967 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #22258: <==closure== 77442 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #27791: <==closure== 57669 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #28435: <==commonly_known== 85724 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #30762: <==commonly_known== 43454 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #30928: <==closure== 62552 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #32673: <==commonly_known== 72048 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #34312: <==commonly_known== 51412 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #36373: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36959: <==commonly_known== 27791 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #43098: <==commonly_known== 43454 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #43144: <==commonly_known== 16967 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #46612: <==commonly_known== 85724 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #51412: <==closure== 85724 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #51586: <==commonly_known== 36373 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #56636: <==commonly_known== 20255 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #57669: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #62552: <==commonly_known== 57669 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #68734: <==commonly_known== 36373 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #71962: <==commonly_known== 72048 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #72048: <==closure== 36373 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #77442: <==commonly_known== 57669 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #78374: <==closure== 51586 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #79204: <==commonly_known== 51412 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #80644: <==commonly_known== 20255 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #81260: <==closure== 46612 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #85724: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89321: <==closure== 68734 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #99521: <==commonly_known== 27791 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #10073: <==uncertain_firing== 34312 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #12425: <==uncertain_firing== 99521 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #14449: <==uncertain_firing== 30928 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #16967: <==uncertain_firing== 36373 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #17410: <==negation-removal== 27791 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #17817: <==uncertain_firing== 36959 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #18053: <==negation-removal== 72048 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #20255: <==uncertain_firing== 85724 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20408: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #21369: <==negation-removal== 43098 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #23205: <==uncertain_firing== 43144 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #23256: <==negation-removal== 36373 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #23698: <==uncertain_firing== 56636 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #25127: <==uncertain_firing== 22258 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #25389: <==negation-removal== 30762 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #28131: <==uncertain_firing== 72048 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #30465: <==negation-removal== 68734 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #30589: <==uncertain_firing== 51586 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #30655: <==negation-removal== 46612 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #31584: <==uncertain_firing== 46612 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #32334: <==negation-removal== 14296 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #33665: <==negation-removal== 77442 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #38438: <==negation-removal== 57669 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #40607: <==uncertain_firing== 78374 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #40948: <==uncertain_firing== 14296 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #41272: <==negation-removal== 78374 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #41893: <==negation-removal== 85724 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #43454: <==uncertain_firing== 57669 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44820: <==negation-removal== 28435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #46736: <==uncertain_firing== 28435 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #48246: <==negation-removal== 56636 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #50004: <==negation-removal== 34312 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #52860: <==negation-removal== 36959 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #53139: <==uncertain_firing== 43098 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #54289: <==negation-removal== 15690 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #54557: <==negation-removal== 51586 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #55557: <==negation-removal== 32673 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #56506: <==uncertain_firing== 80644 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #58491: <==negation-removal== 89321 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #58771: <==uncertain_firing== 79204 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #64214: <==uncertain_firing== 89321 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #64468: <==uncertain_firing== 68734 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #64775: <==uncertain_firing== 32673 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #68642: <==negation-removal== 62552 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #69479: <==uncertain_firing== 71962 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #74137: <==uncertain_firing== 62552 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #74874: <==negation-removal== 22258 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #75688: <==negation-removal== 81260 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #77660: <==uncertain_firing== 77442 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #77792: <==uncertain_firing== 30762 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #77842: <==uncertain_firing== 27791 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #79562: <==negation-removal== 79204 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #81005: <==negation-removal== 30928 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #83415: <==negation-removal== 99521 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #83783: <==negation-removal== 43144 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #84192: <==uncertain_firing== 15690 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #90343: <==uncertain_firing== 51412 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #90443: <==negation-removal== 71962 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #91402: <==negation-removal== 80644 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #94904: <==negation-removal== 51412 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #10050: <==closure== 38584 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #10104: <==commonly_known== 86036 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Bc_secret_c))

                    ; #10826: <==commonly_known== 15223 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Bb_secret_c))

                    ; #16501: <==commonly_known== 44605 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Bb_secret_c))

                    ; #21676: <==closure== 44605 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #24235: <==commonly_known== 21676 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #26492: <==commonly_known== 49477 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Ba_secret_c))

                    ; #31306: <==closure== 50112 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Pa_secret_c))

                    ; #31780: <==commonly_known== 10050 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Pa_secret_c))

                    ; #38584: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39520: <==commonly_known== 50340 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Ba_Pc_secret_c))

                    ; #42296: <==commonly_known== 49477 (neg)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pb_Ba_secret_c))

                    ; #42352: <==closure== 72188 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #42419: <==closure== 80100 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pc_Pa_secret_c))

                    ; #44530: <==closure== 10104 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Pc_secret_c))

                    ; #44605: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #50112: <==commonly_known== 38584 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Ba_secret_c))

                    ; #50340: <==closure== 86036 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #50578: <==closure== 16501 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Pa_Pb_secret_c))

                    ; #55262: <==commonly_known== 21676 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Ba_Pb_secret_c))

                    ; #56134: <==commonly_known== 80423 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_c))

                    ; #71907: <==commonly_known== 80423 (neg)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Pa_Bc_secret_c))

                    ; #72188: <==commonly_known== 86036 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_c))

                    ; #73383: <==commonly_known== 10050 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (Bb_Pa_secret_c))

                    ; #80100: <==commonly_known== 38584 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (Bc_Ba_secret_c))

                    ; #80666: <==commonly_known== 44605 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #80677: <==commonly_known== 15223 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #83086: <==commonly_known== 50340 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_c))

                    ; #86036: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #94370: <==closure== 80666 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_c))

                    ; #10829: <==negation-removal== 72188 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #13358: <==negation-removal== 31780 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #14170: <==negation-removal== 50578 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #14537: <==uncertain_firing== 16501 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #14773: <==negation-removal== 42296 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #15223: <==uncertain_firing== 44605 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #17347: <==negation-removal== 21676 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #19191: <==uncertain_firing== 80666 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #20422: <==negation-removal== 56134 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #22131: <==negation-removal== 39520 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #22464: <==negation-removal== 86036 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #23480: <==negation-removal== 71907 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #24181: <==negation-removal== 16501 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #28722: <==uncertain_firing== 80100 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #29404: <==negation-removal== 80666 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #29639: <==uncertain_firing== 56134 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #31551: <==uncertain_firing== 42419 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #31574: <==negation-removal== 31306 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #31796: <==negation-removal== 73383 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #34274: <==negation-removal== 94370 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #34931: <==uncertain_firing== 31306 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #35604: <==negation-removal== 83086 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #40688: <==negation-removal== 26492 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #41536: <==uncertain_firing== 39520 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #42374: <==uncertain_firing== 50112 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #43774: <==uncertain_firing== 10826 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46295: <==negation-removal== 44530 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #47832: <==negation-removal== 10050 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #48997: <==uncertain_firing== 73383 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #49338: <==negation-removal== 55262 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #49477: <==uncertain_firing== 38584 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #50210: <==negation-removal== 44605 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #51011: <==uncertain_firing== 10104 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #51639: <==uncertain_firing== 42296 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #52751: <==uncertain_firing== 24235 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #53503: <==negation-removal== 50340 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #55234: <==uncertain_firing== 50578 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #56944: <==uncertain_firing== 21676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62549: <==negation-removal== 80100 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #64692: <==uncertain_firing== 10050 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #64696: <==negation-removal== 24235 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #67034: <==uncertain_firing== 71907 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #71404: <==uncertain_firing== 42352 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #71982: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #72036: <==uncertain_firing== 44530 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #73363: <==uncertain_firing== 26492 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #76658: <==uncertain_firing== 50340 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #78088: <==negation-removal== 50112 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #78408: <==uncertain_firing== 31780 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #80423: <==uncertain_firing== 86036 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #82147: <==uncertain_firing== 72188 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #82190: <==uncertain_firing== 80677 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #85093: <==negation-removal== 10104 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #87431: <==uncertain_firing== 83086 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #87695: <==negation-removal== 10826 (pos)
                    (when (and (and (at_b_l2)
                               (at_a_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #88682: <==negation-removal== 42352 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #89806: <==negation-removal== 38584 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #89982: <==negation-removal== 42419 (pos)
                    (when (and (and (at_c_l2)
                               (at_a_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #90806: <==uncertain_firing== 94370 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #91121: <==negation-removal== 80677 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_c)))))

)