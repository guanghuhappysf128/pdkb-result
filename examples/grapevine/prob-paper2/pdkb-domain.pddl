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
        :precondition (and (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #13532: origin
                    (at_a_l1)

                    ; #80265: origin
                    (not_at_a_l1)

                    ; #13532: <==negation-removal== 80265 (pos)
                    (not (at_a_l1))

                    ; #80265: <==negation-removal== 13532 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #50681: origin
                    (at_a_l2)

                    ; #80265: origin
                    (not_at_a_l1)

                    ; #13532: <==negation-removal== 80265 (pos)
                    (not (at_a_l1))

                    ; #18462: <==negation-removal== 50681 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #13532: origin
                    (at_a_l1)

                    ; #18462: origin
                    (not_at_a_l2)

                    ; #50681: <==negation-removal== 18462 (pos)
                    (not (at_a_l2))

                    ; #80265: <==negation-removal== 13532 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #18462: origin
                    (not_at_a_l2)

                    ; #50681: origin
                    (at_a_l2)

                    ; #18462: <==negation-removal== 50681 (pos)
                    (not (not_at_a_l2))

                    ; #50681: <==negation-removal== 18462 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #38823: origin
                    (at_b_l1)

                    ; #62545: origin
                    (not_at_b_l1)

                    ; #38823: <==negation-removal== 62545 (pos)
                    (not (at_b_l1))

                    ; #62545: <==negation-removal== 38823 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #32801: origin
                    (at_b_l2)

                    ; #62545: origin
                    (not_at_b_l1)

                    ; #38823: <==negation-removal== 62545 (pos)
                    (not (at_b_l1))

                    ; #48960: <==negation-removal== 32801 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #38823: origin
                    (at_b_l1)

                    ; #48960: origin
                    (not_at_b_l2)

                    ; #32801: <==negation-removal== 48960 (pos)
                    (not (at_b_l2))

                    ; #62545: <==negation-removal== 38823 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #32801: origin
                    (at_b_l2)

                    ; #48960: origin
                    (not_at_b_l2)

                    ; #32801: <==negation-removal== 48960 (pos)
                    (not (at_b_l2))

                    ; #48960: <==negation-removal== 32801 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_c_l1))
        :effect (and
                    ; #23934: origin
                    (at_c_l1)

                    ; #70198: origin
                    (not_at_c_l1)

                    ; #23934: <==negation-removal== 70198 (pos)
                    (not (at_c_l1))

                    ; #70198: <==negation-removal== 23934 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #24517: origin
                    (at_c_l2)

                    ; #70198: origin
                    (not_at_c_l1)

                    ; #17409: <==negation-removal== 24517 (pos)
                    (not (not_at_c_l2))

                    ; #23934: <==negation-removal== 70198 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_c_l2))
        :effect (and
                    ; #17409: origin
                    (not_at_c_l2)

                    ; #23934: origin
                    (at_c_l1)

                    ; #24517: <==negation-removal== 17409 (pos)
                    (not (at_c_l2))

                    ; #70198: <==negation-removal== 23934 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_c_l2))
        :effect (and
                    ; #17409: origin
                    (not_at_c_l2)

                    ; #24517: origin
                    (at_c_l2)

                    ; #17409: <==negation-removal== 24517 (pos)
                    (not (not_at_c_l2))

                    ; #24517: <==negation-removal== 17409 (pos)
                    (not (at_c_l2))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_a)
                           (Pa_secret_a))
        :effect (and
                    ; #12138: <==commonly_known== 78398 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_a))

                    ; #12949: <==closure== 18269 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_a))

                    ; #17566: <==commonly_known== 50125 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_a))

                    ; #18269: <==commonly_known== 26010 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_a))

                    ; #19437: <==commonly_known== 87863 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_a))

                    ; #19510: <==commonly_known== 50125 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #26010: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #29766: <==commonly_known== 63474 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_a))

                    ; #40001: <==commonly_known== 33312 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #40154: <==closure== 17566 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_a))

                    ; #44774: <==commonly_known== 46082 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_a))

                    ; #46082: <==closure== 50125 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46318: <==commonly_known== 80591 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_a))

                    ; #47975: <==commonly_known== 80591 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_a))

                    ; #50125: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #56243: <==commonly_known== 33312 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_a))

                    ; #56404: <==commonly_known== 64975 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_a))

                    ; #58942: <==commonly_known== 46082 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #64743: <==commonly_known== 78398 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_a))

                    ; #64975: <==closure== 78398 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #64997: <==commonly_known== 26010 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_a))

                    ; #67316: <==closure== 12138 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #68797: <==commonly_known== 64975 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_a))

                    ; #76323: <==closure== 64743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_a))

                    ; #77978: <==commonly_known== 63474 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_a))

                    ; #78398: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79375: <==closure== 64997 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_a))

                    ; #80285: <==commonly_known== 87863 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_a))

                    ; #80591: <==closure== 26010 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #83835: <==closure== 19510 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_a))

                    ; #10146: <==uncertain_firing== 77978 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #10270: <==negation-removal== 50125 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #11035: <==uncertain_firing== 17566 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #11694: <==uncertain_firing== 12138 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #17521: <==negation-removal== 80591 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #18541: <==negation-removal== 46318 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #20075: <==uncertain_firing== 79375 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #20814: <==uncertain_firing== 67316 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #20926: <==uncertain_firing== 56404 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #21214: <==uncertain_firing== 18269 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #21312: <==uncertain_firing== 83835 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #21979: <==uncertain_firing== 19510 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #24867: <==uncertain_firing== 47975 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #27333: <==negation-removal== 46082 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #27904: <==negation-removal== 18269 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #28865: <==negation-removal== 19437 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #33312: <==uncertain_firing== 50125 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #35134: <==negation-removal== 19510 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #35602: <==uncertain_firing== 46318 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #37752: <==uncertain_firing== 56243 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #40146: <==uncertain_firing== 40001 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #41447: <==uncertain_firing== 64997 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #41744: <==uncertain_firing== 29766 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #41971: <==negation-removal== 40154 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #42376: <==negation-removal== 78398 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #43464: <==negation-removal== 76323 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44886: <==uncertain_firing== 19437 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #49973: <==uncertain_firing== 80285 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #50502: <==negation-removal== 67316 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #52276: <==negation-removal== 12949 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #53056: <==uncertain_firing== 46082 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53811: <==negation-removal== 17566 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #55686: <==negation-removal== 12138 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #56941: <==negation-removal== 56243 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #57503: <==uncertain_firing== 64743 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #58606: <==negation-removal== 40001 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #60654: <==negation-removal== 79375 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #62908: <==negation-removal== 58942 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #63319: <==uncertain_firing== 40154 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #63474: <==uncertain_firing== 26010 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #65704: <==negation-removal== 77978 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #67458: <==negation-removal== 68797 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #69917: <==negation-removal== 80285 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #70183: <==negation-removal== 44774 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #71098: <==uncertain_firing== 68797 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #73951: <==negation-removal== 64997 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #75521: <==negation-removal== 64975 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #75761: <==uncertain_firing== 76323 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #78088: <==uncertain_firing== 80591 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #78371: <==negation-removal== 29766 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #79117: <==negation-removal== 56404 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #79398: <==negation-removal== 64743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #79953: <==uncertain_firing== 64975 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81615: <==uncertain_firing== 44774 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #83551: <==negation-removal== 83835 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #84683: <==negation-removal== 26010 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87863: <==uncertain_firing== 78398 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #88037: <==negation-removal== 47975 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #89092: <==uncertain_firing== 58942 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #92133: <==uncertain_firing== 12949 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_a)
                           (Pa_secret_a))
        :effect (and
                    ; #10547: <==commonly_known== 40198 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_a))

                    ; #12038: <==commonly_known== 68733 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #15445: <==commonly_known== 24848 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #15810: <==closure== 74196 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #16728: <==commonly_known== 13291 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #20796: <==commonly_known== 60838 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #23674: <==commonly_known== 40198 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #24848: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #26046: <==commonly_known== 63063 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #26745: <==commonly_known== 68733 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #29543: <==commonly_known== 63063 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #48857: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #49929: <==commonly_known== 24848 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #51394: <==commonly_known== 60838 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_a))

                    ; #51402: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #59470: <==commonly_known== 48857 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #60159: <==closure== 49929 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #60838: <==closure== 51402 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63063: <==closure== 24848 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #64399: <==closure== 91584 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #67703: <==commonly_known== 73446 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #68733: <==closure== 48857 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #71070: <==closure== 59470 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #71938: <==closure== 15445 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_a))

                    ; #74196: <==commonly_known== 48857 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #79291: <==commonly_known== 73446 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #82410: <==closure== 87726 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #87726: <==commonly_known== 51402 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_a))

                    ; #91584: <==commonly_known== 51402 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #92069: <==commonly_known== 13291 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #10984: <==uncertain_firing== 71938 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #12269: <==uncertain_firing== 82410 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #12672: <==uncertain_firing== 60838 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #13291: <==uncertain_firing== 48857 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #14311: <==negation-removal== 63063 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #14811: <==uncertain_firing== 64399 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #15224: <==uncertain_firing== 12038 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #15700: <==negation-removal== 68733 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #19469: <==uncertain_firing== 10547 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #19755: <==uncertain_firing== 59470 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #21319: <==negation-removal== 16728 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #25740: <==uncertain_firing== 67703 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #27676: <==negation-removal== 15445 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #28365: <==uncertain_firing== 26745 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #29844: <==negation-removal== 67703 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #30187: <==negation-removal== 60838 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #31181: <==uncertain_firing== 79291 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #31563: <==uncertain_firing== 23674 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #34990: <==negation-removal== 82410 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #36589: <==negation-removal== 74196 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #37925: <==uncertain_firing== 92069 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #39347: <==uncertain_firing== 29543 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #40198: <==uncertain_firing== 51402 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40530: <==uncertain_firing== 26046 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #43102: <==negation-removal== 15810 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #43627: <==negation-removal== 79291 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #45979: <==uncertain_firing== 74196 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #46471: <==uncertain_firing== 15445 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #46802: <==uncertain_firing== 20796 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #48299: <==negation-removal== 51394 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #49623: <==negation-removal== 91584 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #49640: <==uncertain_firing== 60159 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #49929: <==negation-removal== 60159 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #51893: <==negation-removal== 87726 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #52654: <==negation-removal== 10547 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #52985: <==uncertain_firing== 51394 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #54034: <==negation-removal== 64399 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #54716: <==uncertain_firing== 71070 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #55562: <==negation-removal== 71070 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #57558: <==negation-removal== 12038 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #59053: <==uncertain_firing== 16728 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #60021: <==negation-removal== 24848 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #60846: <==uncertain_firing== 63063 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #61531: <==negation-removal== 29543 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #63976: <==negation-removal== 26046 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #65914: <==negation-removal== 20796 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #66482: <==uncertain_firing== 91584 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #66658: <==uncertain_firing== 87726 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #69586: <==negation-removal== 26745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #73446: <==uncertain_firing== 24848 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #76511: <==uncertain_firing== 68733 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #76711: <==negation-removal== 23674 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #78321: <==negation-removal== 92069 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #82832: <==negation-removal== 48857 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #85388: <==negation-removal== 59470 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #85866: <==uncertain_firing== 15810 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #86446: <==negation-removal== 51402 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #86907: <==negation-removal== 71938 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #90444: <==uncertain_firing== 49929 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #91673: <==negation-removal== 49929 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #11103: <==closure== 49756 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_b))

                    ; #18516: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #22709: <==closure== 18516 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #24031: <==commonly_known== 50018 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_b))

                    ; #24061: <==closure== 86290 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #28363: <==closure== 50018 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #29301: <==commonly_known== 28363 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_b))

                    ; #30471: <==closure== 49261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_b))

                    ; #34222: <==closure== 44695 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #36487: <==commonly_known== 22709 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_b))

                    ; #37688: <==commonly_known== 10580 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_b))

                    ; #39930: <==closure== 24031 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_b))

                    ; #41316: <==commonly_known== 22709 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_b))

                    ; #41570: <==commonly_known== 40435 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_b))

                    ; #41642: <==commonly_known== 24061 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_b))

                    ; #44695: <==commonly_known== 18516 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_b))

                    ; #44873: <==commonly_known== 74508 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_b))

                    ; #45125: <==commonly_known== 10580 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_b))

                    ; #49261: <==commonly_known== 50018 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #49756: <==commonly_known== 86290 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_b))

                    ; #50018: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #57224: <==commonly_known== 86290 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_b))

                    ; #59202: <==closure== 63363 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_b))

                    ; #63363: <==commonly_known== 18516 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_b))

                    ; #63443: <==commonly_known== 28363 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #65045: <==commonly_known== 74508 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_b))

                    ; #65055: <==commonly_known== 40435 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #65352: <==closure== 57224 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_b))

                    ; #76125: <==commonly_known== 24061 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_b))

                    ; #86290: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #10580: <==uncertain_firing== 18516 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13903: <==negation-removal== 29301 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #14325: <==negation-removal== 57224 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #16199: <==negation-removal== 63363 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17081: <==uncertain_firing== 24031 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #18931: <==negation-removal== 41642 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #19759: <==negation-removal== 28363 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19934: <==negation-removal== 11103 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #21100: <==negation-removal== 65045 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #21797: <==negation-removal== 44695 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #24195: <==negation-removal== 49756 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #25754: <==negation-removal== 39930 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #26109: <==uncertain_firing== 63363 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #27328: <==uncertain_firing== 28363 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #27918: <==negation-removal== 76125 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #28255: <==negation-removal== 49261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #29564: <==uncertain_firing== 49756 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #29928: <==uncertain_firing== 41570 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #31165: <==uncertain_firing== 34222 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #31985: <==uncertain_firing== 59202 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #32116: <==uncertain_firing== 65055 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #33183: <==negation-removal== 36487 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #37365: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #38994: <==uncertain_firing== 65045 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #39180: <==uncertain_firing== 57224 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #39928: <==negation-removal== 63443 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #40435: <==uncertain_firing== 50018 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #41039: <==uncertain_firing== 11103 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #41476: <==uncertain_firing== 22709 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #42053: <==uncertain_firing== 76125 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #45230: <==negation-removal== 22709 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #45746: <==uncertain_firing== 65352 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #46332: <==negation-removal== 50018 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #46507: <==uncertain_firing== 29301 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #46540: <==uncertain_firing== 44695 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #47015: <==negation-removal== 18516 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #52394: <==uncertain_firing== 45125 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #54942: <==uncertain_firing== 41316 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #56703: <==uncertain_firing== 36487 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #56932: <==negation-removal== 41570 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #59069: <==negation-removal== 59202 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #59765: <==uncertain_firing== 24061 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #60291: <==negation-removal== 30471 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #67140: <==negation-removal== 65352 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #69227: <==negation-removal== 24031 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #71005: <==negation-removal== 44873 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #71547: <==uncertain_firing== 49261 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #73281: <==uncertain_firing== 41642 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #74508: <==uncertain_firing== 86290 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #76796: <==negation-removal== 24061 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #77242: <==negation-removal== 86290 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #77591: <==negation-removal== 37688 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #80110: <==negation-removal== 65055 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #81667: <==uncertain_firing== 37688 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #81959: <==negation-removal== 34222 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #85874: <==uncertain_firing== 44873 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #86458: <==negation-removal== 41316 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #86831: <==uncertain_firing== 39930 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #87193: <==uncertain_firing== 30471 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #89818: <==negation-removal== 45125 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #11707: <==commonly_known== 81141 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #15520: <==commonly_known== 70382 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #17806: <==closure== 46138 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #21104: <==closure== 69449 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #25565: <==closure== 81141 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #26100: <==commonly_known== 25726 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #34695: <==closure== 84558 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_b))

                    ; #42441: <==commonly_known== 97491 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #43690: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #46026: <==closure== 85457 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #46138: <==commonly_known== 43690 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #46983: <==closure== 43690 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #47797: <==commonly_known== 97491 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #49350: <==closure== 15520 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #51529: <==commonly_known== 25565 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #52170: <==commonly_known== 46983 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #55292: <==commonly_known== 35457 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #56815: <==closure== 11707 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #59110: <==commonly_known== 25565 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_b))

                    ; #63632: <==commonly_known== 35457 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_b))

                    ; #69449: <==commonly_known== 43690 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #70382: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #73691: <==commonly_known== 46983 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #77065: <==commonly_known== 25726 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #81141: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #84558: <==commonly_known== 70382 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #85457: <==commonly_known== 81141 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_b))

                    ; #88976: <==commonly_known== 64640 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #89985: <==commonly_known== 64640 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #97491: <==closure== 70382 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #13765: <==negation-removal== 42441 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #15251: <==negation-removal== 85457 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #15282: <==negation-removal== 73691 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #15771: <==uncertain_firing== 25565 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #15949: <==negation-removal== 88976 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #16957: <==negation-removal== 69449 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #17455: <==negation-removal== 89985 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #18155: <==negation-removal== 97491 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #21848: <==uncertain_firing== 63632 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #25069: <==uncertain_firing== 56815 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #25581: <==negation-removal== 56815 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #25726: <==uncertain_firing== 43690 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #27047: <==uncertain_firing== 46026 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #28314: <==uncertain_firing== 42441 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #29135: <==uncertain_firing== 89985 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #30283: <==uncertain_firing== 26100 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #32905: <==negation-removal== 46983 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #33185: <==negation-removal== 52170 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #34635: <==negation-removal== 84558 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #35457: <==uncertain_firing== 81141 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37081: <==uncertain_firing== 69449 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #38018: <==uncertain_firing== 77065 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #38849: <==uncertain_firing== 51529 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #44214: <==negation-removal== 34695 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #44976: <==uncertain_firing== 46983 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #45727: <==negation-removal== 17806 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #46931: <==negation-removal== 70382 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47050: <==uncertain_firing== 59110 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48669: <==negation-removal== 47797 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #50363: <==uncertain_firing== 85457 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #52065: <==uncertain_firing== 49350 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #53339: <==negation-removal== 51529 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #55379: <==negation-removal== 15520 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #56476: <==uncertain_firing== 46138 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #58402: <==uncertain_firing== 55292 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #59376: <==negation-removal== 59110 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #60430: <==negation-removal== 25565 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #62299: <==negation-removal== 43690 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #62832: <==negation-removal== 63632 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #64191: <==uncertain_firing== 88976 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #64640: <==uncertain_firing== 70382 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65609: <==uncertain_firing== 47797 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #67524: <==negation-removal== 46026 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #71957: <==uncertain_firing== 17806 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #72311: <==negation-removal== 77065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #73111: <==uncertain_firing== 15520 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #73324: <==negation-removal== 46138 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #73482: <==negation-removal== 21104 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #75053: <==uncertain_firing== 52170 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #76172: <==negation-removal== 55292 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #79347: <==uncertain_firing== 11707 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #81039: <==negation-removal== 81141 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #83902: <==uncertain_firing== 21104 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #84054: <==uncertain_firing== 84558 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #86701: <==negation-removal== 26100 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86839: <==negation-removal== 11707 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #89860: <==negation-removal== 49350 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #91189: <==uncertain_firing== 97491 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92077: <==uncertain_firing== 34695 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #93550: <==uncertain_firing== 73691 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #13229: <==closure== 23279 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #18796: <==commonly_known== 90261 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_c))

                    ; #20452: <==closure== 21689 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_c))

                    ; #21689: <==commonly_known== 23279 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_c))

                    ; #23279: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #24897: <==commonly_known== 69620 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #29878: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #30463: <==commonly_known== 13229 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_c))

                    ; #31505: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35691: <==commonly_known== 69620 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_c))

                    ; #36612: <==closure== 36679 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_c))

                    ; #36679: <==commonly_known== 31505 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_c))

                    ; #37482: <==closure== 70738 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_c))

                    ; #40529: <==closure== 31505 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #41026: <==commonly_known== 78527 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_c))

                    ; #41043: <==commonly_known== 90261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_c))

                    ; #45392: <==commonly_known== 29878 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_c))

                    ; #49482: <==commonly_known== 37043 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_c))

                    ; #60935: <==commonly_known== 37043 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_c))

                    ; #64387: <==commonly_known== 13229 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #65220: <==closure== 75361 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_c))

                    ; #65743: <==closure== 78522 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_c))

                    ; #69028: <==closure== 45392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #70738: <==commonly_known== 23279 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #73453: <==commonly_known== 78527 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_c))

                    ; #75361: <==commonly_known== 31505 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_c))

                    ; #78522: <==commonly_known== 29878 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_c))

                    ; #84040: <==commonly_known== 40529 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_c))

                    ; #87928: <==commonly_known== 40529 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_c))

                    ; #90261: <==closure== 29878 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #11583: <==uncertain_firing== 75361 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #12806: <==negation-removal== 41026 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #15000: <==negation-removal== 35691 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #15481: <==uncertain_firing== 84040 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #15620: <==negation-removal== 70738 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #20214: <==uncertain_firing== 90261 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23674: <==negation-removal== 64387 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #23825: <==negation-removal== 20452 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #24908: <==negation-removal== 40529 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #26063: <==negation-removal== 65743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #29642: <==negation-removal== 30463 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #29744: <==uncertain_firing== 40529 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #31015: <==negation-removal== 36679 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #32143: <==uncertain_firing== 60935 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #36606: <==uncertain_firing== 87928 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #37043: <==uncertain_firing== 31505 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #37830: <==uncertain_firing== 37482 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #38760: <==negation-removal== 65220 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #39099: <==uncertain_firing== 18796 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #40368: <==uncertain_firing== 65220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #40432: <==uncertain_firing== 45392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #41093: <==negation-removal== 21689 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #44254: <==uncertain_firing== 78522 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #46796: <==uncertain_firing== 35691 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #48809: <==uncertain_firing== 70738 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #50012: <==uncertain_firing== 21689 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #51520: <==negation-removal== 90261 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #53092: <==uncertain_firing== 64387 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #53585: <==uncertain_firing== 36679 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #53996: <==uncertain_firing== 24897 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #56559: <==negation-removal== 49482 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #57984: <==negation-removal== 23279 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #63133: <==uncertain_firing== 13229 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #63611: <==negation-removal== 45392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #65743: <==negation-removal== 87928 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #66202: <==uncertain_firing== 41043 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #66325: <==negation-removal== 18796 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #66759: <==negation-removal== 84040 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #67850: <==negation-removal== 37482 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #69576: <==negation-removal== 31505 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #69620: <==uncertain_firing== 23279 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #69831: <==uncertain_firing== 36612 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #70666: <==uncertain_firing== 20452 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #71780: <==negation-removal== 24897 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #72376: <==negation-removal== 73453 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #72503: <==negation-removal== 13229 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #73074: <==negation-removal== 41043 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #74823: <==negation-removal== 75361 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #75330: <==uncertain_firing== 73453 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #75801: <==negation-removal== 36612 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #76445: <==uncertain_firing== 49482 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #76760: <==negation-removal== 69028 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #78527: <==uncertain_firing== 29878 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #84102: <==negation-removal== 60935 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #87343: <==uncertain_firing== 41026 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #88730: <==negation-removal== 29878 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #90722: <==uncertain_firing== 30463 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #90726: <==uncertain_firing== 69028 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #91423: <==negation-removal== 78522 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #96196: <==uncertain_firing== 65743 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #15698: <==closure== 34077 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #18225: <==commonly_known== 90116 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #20815: <==commonly_known== 65105 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #21537: <==commonly_known== 33282 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #26545: <==closure== 39134 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #29478: <==closure== 86215 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #29603: <==commonly_known== 75675 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #31301: <==closure== 65105 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #33282: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #34077: <==commonly_known== 86215 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #39134: <==commonly_known== 65105 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #44144: <==commonly_known== 86215 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #44633: <==commonly_known== 54672 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #49781: <==closure== 44144 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_c))

                    ; #49890: <==commonly_known== 31301 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #50603: <==closure== 70128 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #51512: <==commonly_known== 29478 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #56305: <==commonly_known== 42501 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #61974: <==closure== 20815 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #64191: <==commonly_known== 42501 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #65105: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67194: <==closure== 21537 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #70128: <==commonly_known== 33282 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_c))

                    ; #71115: <==commonly_known== 31301 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #76726: <==commonly_known== 75675 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #77758: <==commonly_known== 90116 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_c))

                    ; #86215: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #87496: <==commonly_known== 29478 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #90116: <==closure== 33282 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #90412: <==commonly_known== 54672 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_c))

                    ; #11355: <==negation-removal== 76726 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #11385: <==uncertain_firing== 90412 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #13740: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #14120: <==negation-removal== 51512 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #15498: <==uncertain_firing== 70128 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #19120: <==negation-removal== 39134 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #20380: <==negation-removal== 56305 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #23346: <==uncertain_firing== 15698 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #26971: <==uncertain_firing== 49890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #30664: <==uncertain_firing== 39134 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #30701: <==uncertain_firing== 29478 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32462: <==uncertain_firing== 26545 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #34484: <==uncertain_firing== 21537 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #34524: <==negation-removal== 50603 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #35381: <==negation-removal== 15698 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #42501: <==uncertain_firing== 65105 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #42745: <==negation-removal== 65105 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #43076: <==uncertain_firing== 44633 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #43200: <==uncertain_firing== 61974 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #43456: <==negation-removal== 31301 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #44606: <==negation-removal== 26545 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #45040: <==uncertain_firing== 76726 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46050: <==negation-removal== 67194 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #46461: <==negation-removal== 49890 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #47753: <==negation-removal== 29478 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #48198: <==uncertain_firing== 20815 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #48213: <==negation-removal== 20815 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #48829: <==negation-removal== 77758 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #49780: <==uncertain_firing== 90116 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #53986: <==uncertain_firing== 18225 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #54297: <==negation-removal== 18225 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #54672: <==uncertain_firing== 33282 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55233: <==uncertain_firing== 34077 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #57399: <==negation-removal== 70128 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #57731: <==negation-removal== 49781 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #58630: <==negation-removal== 90116 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #60330: <==uncertain_firing== 77758 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #65981: <==negation-removal== 61974 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #69568: <==negation-removal== 71115 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #69952: <==uncertain_firing== 67194 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #70092: <==uncertain_firing== 64191 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #70141: <==negation-removal== 90412 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #70457: <==uncertain_firing== 49781 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #73100: <==negation-removal== 33282 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73826: <==negation-removal== 64191 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #75194: <==uncertain_firing== 87496 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #75210: <==negation-removal== 21537 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #75254: <==uncertain_firing== 31301 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75675: <==uncertain_firing== 86215 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #78022: <==negation-removal== 87496 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #78755: <==uncertain_firing== 44144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #80145: <==negation-removal== 29603 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #81808: <==uncertain_firing== 51512 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #82265: <==uncertain_firing== 71115 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #83186: <==negation-removal== 34077 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #83599: <==uncertain_firing== 50603 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #85422: <==negation-removal== 86215 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #88352: <==negation-removal== 44144 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #90504: <==negation-removal== 44633 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #91890: <==uncertain_firing== 29603 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_c)))))

    (:action share_b_a_l1
        :precondition (and (Pb_secret_a)
                           (at_b_l1)
                           (Bb_secret_a))
        :effect (and
                    ; #12138: <==commonly_known== 78398 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_a))

                    ; #12949: <==closure== 18269 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_a))

                    ; #17566: <==commonly_known== 50125 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_a))

                    ; #18269: <==commonly_known== 26010 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_a))

                    ; #19437: <==commonly_known== 87863 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_a))

                    ; #19510: <==commonly_known== 50125 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #26010: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #29766: <==commonly_known== 63474 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_a))

                    ; #40001: <==commonly_known== 33312 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #40154: <==closure== 17566 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_a))

                    ; #44774: <==commonly_known== 46082 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_a))

                    ; #46082: <==closure== 50125 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46318: <==commonly_known== 80591 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_a))

                    ; #47975: <==commonly_known== 80591 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_a))

                    ; #50125: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #56243: <==commonly_known== 33312 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_a))

                    ; #56404: <==commonly_known== 64975 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_a))

                    ; #58942: <==commonly_known== 46082 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #64743: <==commonly_known== 78398 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_a))

                    ; #64975: <==closure== 78398 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #64997: <==commonly_known== 26010 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_a))

                    ; #67316: <==closure== 12138 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #68797: <==commonly_known== 64975 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_a))

                    ; #76323: <==closure== 64743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_a))

                    ; #77978: <==commonly_known== 63474 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_a))

                    ; #78398: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79375: <==closure== 64997 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_a))

                    ; #80285: <==commonly_known== 87863 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_a))

                    ; #80591: <==closure== 26010 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #83835: <==closure== 19510 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_a))

                    ; #10146: <==uncertain_firing== 77978 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #10270: <==negation-removal== 50125 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #11035: <==uncertain_firing== 17566 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #11694: <==uncertain_firing== 12138 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #17521: <==negation-removal== 80591 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #18541: <==negation-removal== 46318 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #20075: <==uncertain_firing== 79375 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #20814: <==uncertain_firing== 67316 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #20926: <==uncertain_firing== 56404 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #21214: <==uncertain_firing== 18269 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #21312: <==uncertain_firing== 83835 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #21979: <==uncertain_firing== 19510 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #24867: <==uncertain_firing== 47975 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #27333: <==negation-removal== 46082 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #27904: <==negation-removal== 18269 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #28865: <==negation-removal== 19437 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #33312: <==uncertain_firing== 50125 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #35134: <==negation-removal== 19510 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #35602: <==uncertain_firing== 46318 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #37752: <==uncertain_firing== 56243 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #40146: <==uncertain_firing== 40001 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #41447: <==uncertain_firing== 64997 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #41744: <==uncertain_firing== 29766 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #41971: <==negation-removal== 40154 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #42376: <==negation-removal== 78398 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #43464: <==negation-removal== 76323 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44886: <==uncertain_firing== 19437 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #49973: <==uncertain_firing== 80285 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #50502: <==negation-removal== 67316 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #52276: <==negation-removal== 12949 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #53056: <==uncertain_firing== 46082 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53811: <==negation-removal== 17566 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #55686: <==negation-removal== 12138 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #56941: <==negation-removal== 56243 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #57503: <==uncertain_firing== 64743 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #58606: <==negation-removal== 40001 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #60654: <==negation-removal== 79375 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #62908: <==negation-removal== 58942 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #63319: <==uncertain_firing== 40154 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #63474: <==uncertain_firing== 26010 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #65704: <==negation-removal== 77978 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #67458: <==negation-removal== 68797 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #69917: <==negation-removal== 80285 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #70183: <==negation-removal== 44774 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #71098: <==uncertain_firing== 68797 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #73951: <==negation-removal== 64997 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #75521: <==negation-removal== 64975 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #75761: <==uncertain_firing== 76323 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #78088: <==uncertain_firing== 80591 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #78371: <==negation-removal== 29766 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #79117: <==negation-removal== 56404 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #79398: <==negation-removal== 64743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #79953: <==uncertain_firing== 64975 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81615: <==uncertain_firing== 44774 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #83551: <==negation-removal== 83835 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #84683: <==negation-removal== 26010 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87863: <==uncertain_firing== 78398 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #88037: <==negation-removal== 47975 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #89092: <==uncertain_firing== 58942 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #92133: <==uncertain_firing== 12949 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Pb_secret_a)
                           (at_b_l2)
                           (Bb_secret_a))
        :effect (and
                    ; #10547: <==commonly_known== 40198 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_a))

                    ; #12038: <==commonly_known== 68733 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #15445: <==commonly_known== 24848 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #15810: <==closure== 74196 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #16728: <==commonly_known== 13291 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #20796: <==commonly_known== 60838 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #23674: <==commonly_known== 40198 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #24848: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #26046: <==commonly_known== 63063 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #26745: <==commonly_known== 68733 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #29543: <==commonly_known== 63063 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #48857: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #49929: <==commonly_known== 24848 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #51394: <==commonly_known== 60838 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_a))

                    ; #51402: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #59470: <==commonly_known== 48857 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #60159: <==closure== 49929 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #60838: <==closure== 51402 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63063: <==closure== 24848 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #64399: <==closure== 91584 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #67703: <==commonly_known== 73446 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #68733: <==closure== 48857 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #71070: <==closure== 59470 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #71938: <==closure== 15445 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_a))

                    ; #74196: <==commonly_known== 48857 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #79291: <==commonly_known== 73446 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #82410: <==closure== 87726 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #87726: <==commonly_known== 51402 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_a))

                    ; #91584: <==commonly_known== 51402 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #92069: <==commonly_known== 13291 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #10984: <==uncertain_firing== 71938 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #12269: <==uncertain_firing== 82410 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #12672: <==uncertain_firing== 60838 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #13291: <==uncertain_firing== 48857 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #14311: <==negation-removal== 63063 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #14811: <==uncertain_firing== 64399 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #15224: <==uncertain_firing== 12038 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #15700: <==negation-removal== 68733 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #19469: <==uncertain_firing== 10547 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #19755: <==uncertain_firing== 59470 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #21319: <==negation-removal== 16728 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #25740: <==uncertain_firing== 67703 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #27676: <==negation-removal== 15445 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #28365: <==uncertain_firing== 26745 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #29844: <==negation-removal== 67703 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #30187: <==negation-removal== 60838 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #31181: <==uncertain_firing== 79291 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #31563: <==uncertain_firing== 23674 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #34990: <==negation-removal== 82410 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #36589: <==negation-removal== 74196 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #37925: <==uncertain_firing== 92069 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #39347: <==uncertain_firing== 29543 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #40198: <==uncertain_firing== 51402 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40530: <==uncertain_firing== 26046 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #43102: <==negation-removal== 15810 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #43627: <==negation-removal== 79291 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #45979: <==uncertain_firing== 74196 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #46471: <==uncertain_firing== 15445 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #46802: <==uncertain_firing== 20796 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #48299: <==negation-removal== 51394 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #49623: <==negation-removal== 91584 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #49640: <==uncertain_firing== 60159 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #49929: <==negation-removal== 60159 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #51893: <==negation-removal== 87726 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #52654: <==negation-removal== 10547 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #52985: <==uncertain_firing== 51394 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #54034: <==negation-removal== 64399 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #54716: <==uncertain_firing== 71070 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #55562: <==negation-removal== 71070 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #57558: <==negation-removal== 12038 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #59053: <==uncertain_firing== 16728 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #60021: <==negation-removal== 24848 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #60846: <==uncertain_firing== 63063 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #61531: <==negation-removal== 29543 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #63976: <==negation-removal== 26046 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #65914: <==negation-removal== 20796 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #66482: <==uncertain_firing== 91584 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #66658: <==uncertain_firing== 87726 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #69586: <==negation-removal== 26745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #73446: <==uncertain_firing== 24848 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #76511: <==uncertain_firing== 68733 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #76711: <==negation-removal== 23674 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #78321: <==negation-removal== 92069 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #82832: <==negation-removal== 48857 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #85388: <==negation-removal== 59470 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #85866: <==uncertain_firing== 15810 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #86446: <==negation-removal== 51402 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #86907: <==negation-removal== 71938 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #90444: <==uncertain_firing== 49929 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #91673: <==negation-removal== 49929 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #11103: <==closure== 49756 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_b))

                    ; #18516: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #22709: <==closure== 18516 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #24031: <==commonly_known== 50018 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_b))

                    ; #24061: <==closure== 86290 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #28363: <==closure== 50018 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #29301: <==commonly_known== 28363 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_b))

                    ; #30471: <==closure== 49261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_b))

                    ; #34222: <==closure== 44695 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #36487: <==commonly_known== 22709 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_b))

                    ; #37688: <==commonly_known== 10580 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_b))

                    ; #39930: <==closure== 24031 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_b))

                    ; #41316: <==commonly_known== 22709 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_b))

                    ; #41570: <==commonly_known== 40435 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_b))

                    ; #41642: <==commonly_known== 24061 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_b))

                    ; #44695: <==commonly_known== 18516 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_b))

                    ; #44873: <==commonly_known== 74508 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_b))

                    ; #45125: <==commonly_known== 10580 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_b))

                    ; #49261: <==commonly_known== 50018 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #49756: <==commonly_known== 86290 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_b))

                    ; #50018: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #57224: <==commonly_known== 86290 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_b))

                    ; #59202: <==closure== 63363 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_b))

                    ; #63363: <==commonly_known== 18516 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_b))

                    ; #63443: <==commonly_known== 28363 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #65045: <==commonly_known== 74508 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_b))

                    ; #65055: <==commonly_known== 40435 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #65352: <==closure== 57224 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_b))

                    ; #76125: <==commonly_known== 24061 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_b))

                    ; #86290: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #10580: <==uncertain_firing== 18516 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13903: <==negation-removal== 29301 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #14325: <==negation-removal== 57224 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #16199: <==negation-removal== 63363 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17081: <==uncertain_firing== 24031 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #18931: <==negation-removal== 41642 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #19759: <==negation-removal== 28363 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19934: <==negation-removal== 11103 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #21100: <==negation-removal== 65045 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #21797: <==negation-removal== 44695 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #24195: <==negation-removal== 49756 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #25754: <==negation-removal== 39930 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #26109: <==uncertain_firing== 63363 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #27328: <==uncertain_firing== 28363 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #27918: <==negation-removal== 76125 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #28255: <==negation-removal== 49261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #29564: <==uncertain_firing== 49756 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #29928: <==uncertain_firing== 41570 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #31165: <==uncertain_firing== 34222 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #31985: <==uncertain_firing== 59202 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #32116: <==uncertain_firing== 65055 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #33183: <==negation-removal== 36487 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #37365: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #38994: <==uncertain_firing== 65045 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #39180: <==uncertain_firing== 57224 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #39928: <==negation-removal== 63443 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #40435: <==uncertain_firing== 50018 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #41039: <==uncertain_firing== 11103 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #41476: <==uncertain_firing== 22709 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #42053: <==uncertain_firing== 76125 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #45230: <==negation-removal== 22709 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #45746: <==uncertain_firing== 65352 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #46332: <==negation-removal== 50018 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #46507: <==uncertain_firing== 29301 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #46540: <==uncertain_firing== 44695 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #47015: <==negation-removal== 18516 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #52394: <==uncertain_firing== 45125 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #54942: <==uncertain_firing== 41316 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #56703: <==uncertain_firing== 36487 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #56932: <==negation-removal== 41570 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #59069: <==negation-removal== 59202 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #59765: <==uncertain_firing== 24061 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #60291: <==negation-removal== 30471 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #67140: <==negation-removal== 65352 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #69227: <==negation-removal== 24031 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #71005: <==negation-removal== 44873 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #71547: <==uncertain_firing== 49261 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #73281: <==uncertain_firing== 41642 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #74508: <==uncertain_firing== 86290 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #76796: <==negation-removal== 24061 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #77242: <==negation-removal== 86290 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #77591: <==negation-removal== 37688 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #80110: <==negation-removal== 65055 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #81667: <==uncertain_firing== 37688 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #81959: <==negation-removal== 34222 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #85874: <==uncertain_firing== 44873 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #86458: <==negation-removal== 41316 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #86831: <==uncertain_firing== 39930 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #87193: <==uncertain_firing== 30471 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #89818: <==negation-removal== 45125 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Pb_secret_b)
                           (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #11707: <==commonly_known== 81141 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #15520: <==commonly_known== 70382 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #17806: <==closure== 46138 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #21104: <==closure== 69449 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #25565: <==closure== 81141 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #26100: <==commonly_known== 25726 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #34695: <==closure== 84558 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_b))

                    ; #42441: <==commonly_known== 97491 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #43690: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #46026: <==closure== 85457 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #46138: <==commonly_known== 43690 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #46983: <==closure== 43690 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #47797: <==commonly_known== 97491 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #49350: <==closure== 15520 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #51529: <==commonly_known== 25565 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #52170: <==commonly_known== 46983 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #55292: <==commonly_known== 35457 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #56815: <==closure== 11707 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #59110: <==commonly_known== 25565 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_b))

                    ; #63632: <==commonly_known== 35457 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_b))

                    ; #69449: <==commonly_known== 43690 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #70382: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #73691: <==commonly_known== 46983 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #77065: <==commonly_known== 25726 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #81141: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #84558: <==commonly_known== 70382 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #85457: <==commonly_known== 81141 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_b))

                    ; #88976: <==commonly_known== 64640 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #89985: <==commonly_known== 64640 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #97491: <==closure== 70382 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #13765: <==negation-removal== 42441 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #15251: <==negation-removal== 85457 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #15282: <==negation-removal== 73691 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #15771: <==uncertain_firing== 25565 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #15949: <==negation-removal== 88976 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #16957: <==negation-removal== 69449 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #17455: <==negation-removal== 89985 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #18155: <==negation-removal== 97491 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #21848: <==uncertain_firing== 63632 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #25069: <==uncertain_firing== 56815 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #25581: <==negation-removal== 56815 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #25726: <==uncertain_firing== 43690 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #27047: <==uncertain_firing== 46026 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #28314: <==uncertain_firing== 42441 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #29135: <==uncertain_firing== 89985 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #30283: <==uncertain_firing== 26100 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #32905: <==negation-removal== 46983 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #33185: <==negation-removal== 52170 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #34635: <==negation-removal== 84558 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #35457: <==uncertain_firing== 81141 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37081: <==uncertain_firing== 69449 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #38018: <==uncertain_firing== 77065 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #38849: <==uncertain_firing== 51529 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #44214: <==negation-removal== 34695 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #44976: <==uncertain_firing== 46983 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #45727: <==negation-removal== 17806 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #46931: <==negation-removal== 70382 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47050: <==uncertain_firing== 59110 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48669: <==negation-removal== 47797 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #50363: <==uncertain_firing== 85457 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #52065: <==uncertain_firing== 49350 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #53339: <==negation-removal== 51529 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #55379: <==negation-removal== 15520 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #56476: <==uncertain_firing== 46138 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #58402: <==uncertain_firing== 55292 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #59376: <==negation-removal== 59110 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #60430: <==negation-removal== 25565 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #62299: <==negation-removal== 43690 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #62832: <==negation-removal== 63632 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #64191: <==uncertain_firing== 88976 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #64640: <==uncertain_firing== 70382 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65609: <==uncertain_firing== 47797 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #67524: <==negation-removal== 46026 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #71957: <==uncertain_firing== 17806 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #72311: <==negation-removal== 77065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #73111: <==uncertain_firing== 15520 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #73324: <==negation-removal== 46138 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #73482: <==negation-removal== 21104 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #75053: <==uncertain_firing== 52170 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #76172: <==negation-removal== 55292 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #79347: <==uncertain_firing== 11707 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #81039: <==negation-removal== 81141 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #83902: <==uncertain_firing== 21104 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #84054: <==uncertain_firing== 84558 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #86701: <==negation-removal== 26100 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86839: <==negation-removal== 11707 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #89860: <==negation-removal== 49350 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #91189: <==uncertain_firing== 97491 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92077: <==uncertain_firing== 34695 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #93550: <==uncertain_firing== 73691 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Bb_secret_c)
                           (at_b_l1)
                           (Pb_secret_c))
        :effect (and
                    ; #13229: <==closure== 23279 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #18796: <==commonly_known== 90261 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_c))

                    ; #20452: <==closure== 21689 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_c))

                    ; #21689: <==commonly_known== 23279 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_c))

                    ; #23279: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #24897: <==commonly_known== 69620 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #29878: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #30463: <==commonly_known== 13229 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_c))

                    ; #31505: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35691: <==commonly_known== 69620 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_c))

                    ; #36612: <==closure== 36679 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_c))

                    ; #36679: <==commonly_known== 31505 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_c))

                    ; #37482: <==closure== 70738 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_c))

                    ; #40529: <==closure== 31505 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #41026: <==commonly_known== 78527 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_c))

                    ; #41043: <==commonly_known== 90261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_c))

                    ; #45392: <==commonly_known== 29878 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_c))

                    ; #49482: <==commonly_known== 37043 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_c))

                    ; #60935: <==commonly_known== 37043 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_c))

                    ; #64387: <==commonly_known== 13229 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #65220: <==closure== 75361 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_c))

                    ; #65743: <==closure== 78522 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_c))

                    ; #69028: <==closure== 45392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #70738: <==commonly_known== 23279 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #73453: <==commonly_known== 78527 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_c))

                    ; #75361: <==commonly_known== 31505 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_c))

                    ; #78522: <==commonly_known== 29878 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_c))

                    ; #84040: <==commonly_known== 40529 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_c))

                    ; #87928: <==commonly_known== 40529 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_c))

                    ; #90261: <==closure== 29878 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #11583: <==uncertain_firing== 75361 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #12806: <==negation-removal== 41026 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #15000: <==negation-removal== 35691 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #15481: <==uncertain_firing== 84040 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #15620: <==negation-removal== 70738 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #20214: <==uncertain_firing== 90261 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23674: <==negation-removal== 64387 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #23825: <==negation-removal== 20452 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #24908: <==negation-removal== 40529 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #26063: <==negation-removal== 65743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #29642: <==negation-removal== 30463 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #29744: <==uncertain_firing== 40529 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #31015: <==negation-removal== 36679 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #32143: <==uncertain_firing== 60935 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #36606: <==uncertain_firing== 87928 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #37043: <==uncertain_firing== 31505 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #37830: <==uncertain_firing== 37482 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #38760: <==negation-removal== 65220 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #39099: <==uncertain_firing== 18796 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #40368: <==uncertain_firing== 65220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #40432: <==uncertain_firing== 45392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #41093: <==negation-removal== 21689 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #44254: <==uncertain_firing== 78522 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #46796: <==uncertain_firing== 35691 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #48809: <==uncertain_firing== 70738 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #50012: <==uncertain_firing== 21689 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #51520: <==negation-removal== 90261 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #53092: <==uncertain_firing== 64387 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #53585: <==uncertain_firing== 36679 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #53996: <==uncertain_firing== 24897 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #56559: <==negation-removal== 49482 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #57984: <==negation-removal== 23279 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #63133: <==uncertain_firing== 13229 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #63611: <==negation-removal== 45392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #65743: <==negation-removal== 87928 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #66202: <==uncertain_firing== 41043 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #66325: <==negation-removal== 18796 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #66759: <==negation-removal== 84040 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #67850: <==negation-removal== 37482 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #69576: <==negation-removal== 31505 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #69620: <==uncertain_firing== 23279 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #69831: <==uncertain_firing== 36612 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #70666: <==uncertain_firing== 20452 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #71780: <==negation-removal== 24897 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #72376: <==negation-removal== 73453 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #72503: <==negation-removal== 13229 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #73074: <==negation-removal== 41043 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #74823: <==negation-removal== 75361 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #75330: <==uncertain_firing== 73453 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #75801: <==negation-removal== 36612 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #76445: <==uncertain_firing== 49482 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #76760: <==negation-removal== 69028 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #78527: <==uncertain_firing== 29878 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #84102: <==negation-removal== 60935 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #87343: <==uncertain_firing== 41026 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #88730: <==negation-removal== 29878 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #90722: <==uncertain_firing== 30463 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #90726: <==uncertain_firing== 69028 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #91423: <==negation-removal== 78522 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #96196: <==uncertain_firing== 65743 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Bb_secret_c)
                           (at_b_l2)
                           (Pb_secret_c))
        :effect (and
                    ; #15698: <==closure== 34077 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #18225: <==commonly_known== 90116 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #20815: <==commonly_known== 65105 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #21537: <==commonly_known== 33282 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #26545: <==closure== 39134 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #29478: <==closure== 86215 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #29603: <==commonly_known== 75675 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #31301: <==closure== 65105 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #33282: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #34077: <==commonly_known== 86215 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #39134: <==commonly_known== 65105 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #44144: <==commonly_known== 86215 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #44633: <==commonly_known== 54672 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #49781: <==closure== 44144 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_c))

                    ; #49890: <==commonly_known== 31301 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #50603: <==closure== 70128 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #51512: <==commonly_known== 29478 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #56305: <==commonly_known== 42501 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #61974: <==closure== 20815 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #64191: <==commonly_known== 42501 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #65105: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67194: <==closure== 21537 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #70128: <==commonly_known== 33282 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_c))

                    ; #71115: <==commonly_known== 31301 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #76726: <==commonly_known== 75675 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #77758: <==commonly_known== 90116 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_c))

                    ; #86215: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #87496: <==commonly_known== 29478 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #90116: <==closure== 33282 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #90412: <==commonly_known== 54672 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_c))

                    ; #11355: <==negation-removal== 76726 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #11385: <==uncertain_firing== 90412 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #13740: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #14120: <==negation-removal== 51512 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #15498: <==uncertain_firing== 70128 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #19120: <==negation-removal== 39134 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #20380: <==negation-removal== 56305 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #23346: <==uncertain_firing== 15698 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #26971: <==uncertain_firing== 49890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #30664: <==uncertain_firing== 39134 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #30701: <==uncertain_firing== 29478 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32462: <==uncertain_firing== 26545 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #34484: <==uncertain_firing== 21537 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #34524: <==negation-removal== 50603 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #35381: <==negation-removal== 15698 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #42501: <==uncertain_firing== 65105 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #42745: <==negation-removal== 65105 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #43076: <==uncertain_firing== 44633 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #43200: <==uncertain_firing== 61974 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #43456: <==negation-removal== 31301 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #44606: <==negation-removal== 26545 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #45040: <==uncertain_firing== 76726 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46050: <==negation-removal== 67194 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #46461: <==negation-removal== 49890 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #47753: <==negation-removal== 29478 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #48198: <==uncertain_firing== 20815 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #48213: <==negation-removal== 20815 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #48829: <==negation-removal== 77758 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #49780: <==uncertain_firing== 90116 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #53986: <==uncertain_firing== 18225 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #54297: <==negation-removal== 18225 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #54672: <==uncertain_firing== 33282 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55233: <==uncertain_firing== 34077 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #57399: <==negation-removal== 70128 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #57731: <==negation-removal== 49781 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #58630: <==negation-removal== 90116 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #60330: <==uncertain_firing== 77758 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #65981: <==negation-removal== 61974 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #69568: <==negation-removal== 71115 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #69952: <==uncertain_firing== 67194 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #70092: <==uncertain_firing== 64191 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #70141: <==negation-removal== 90412 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #70457: <==uncertain_firing== 49781 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #73100: <==negation-removal== 33282 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73826: <==negation-removal== 64191 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #75194: <==uncertain_firing== 87496 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #75210: <==negation-removal== 21537 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #75254: <==uncertain_firing== 31301 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75675: <==uncertain_firing== 86215 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #78022: <==negation-removal== 87496 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #78755: <==uncertain_firing== 44144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #80145: <==negation-removal== 29603 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #81808: <==uncertain_firing== 51512 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #82265: <==uncertain_firing== 71115 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #83186: <==negation-removal== 34077 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #83599: <==uncertain_firing== 50603 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #85422: <==negation-removal== 86215 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #88352: <==negation-removal== 44144 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #90504: <==negation-removal== 44633 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #91890: <==uncertain_firing== 29603 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_c)))))

    (:action share_c_a_l1
        :precondition (and (Bc_secret_a)
                           (Pc_secret_a)
                           (at_c_l1))
        :effect (and
                    ; #12138: <==commonly_known== 78398 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_a))

                    ; #12949: <==closure== 18269 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_a))

                    ; #17566: <==commonly_known== 50125 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_a))

                    ; #18269: <==commonly_known== 26010 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_a))

                    ; #19437: <==commonly_known== 87863 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_a))

                    ; #19510: <==commonly_known== 50125 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #26010: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #29766: <==commonly_known== 63474 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_a))

                    ; #40001: <==commonly_known== 33312 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #40154: <==closure== 17566 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_a))

                    ; #44774: <==commonly_known== 46082 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_a))

                    ; #46082: <==closure== 50125 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46318: <==commonly_known== 80591 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_a))

                    ; #47975: <==commonly_known== 80591 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_a))

                    ; #50125: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #56243: <==commonly_known== 33312 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_a))

                    ; #56404: <==commonly_known== 64975 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_a))

                    ; #58942: <==commonly_known== 46082 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #64743: <==commonly_known== 78398 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_a))

                    ; #64975: <==closure== 78398 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #64997: <==commonly_known== 26010 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_a))

                    ; #67316: <==closure== 12138 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #68797: <==commonly_known== 64975 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_a))

                    ; #76323: <==closure== 64743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_a))

                    ; #77978: <==commonly_known== 63474 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_a))

                    ; #78398: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79375: <==closure== 64997 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_a))

                    ; #80285: <==commonly_known== 87863 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_a))

                    ; #80591: <==closure== 26010 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #83835: <==closure== 19510 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_a))

                    ; #10146: <==uncertain_firing== 77978 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #10270: <==negation-removal== 50125 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #11035: <==uncertain_firing== 17566 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #11694: <==uncertain_firing== 12138 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #17521: <==negation-removal== 80591 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #18541: <==negation-removal== 46318 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #20075: <==uncertain_firing== 79375 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #20814: <==uncertain_firing== 67316 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #20926: <==uncertain_firing== 56404 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #21214: <==uncertain_firing== 18269 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #21312: <==uncertain_firing== 83835 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #21979: <==uncertain_firing== 19510 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #24867: <==uncertain_firing== 47975 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #27333: <==negation-removal== 46082 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #27904: <==negation-removal== 18269 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #28865: <==negation-removal== 19437 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #33312: <==uncertain_firing== 50125 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #35134: <==negation-removal== 19510 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #35602: <==uncertain_firing== 46318 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #37752: <==uncertain_firing== 56243 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #40146: <==uncertain_firing== 40001 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #41447: <==uncertain_firing== 64997 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #41744: <==uncertain_firing== 29766 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #41971: <==negation-removal== 40154 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #42376: <==negation-removal== 78398 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #43464: <==negation-removal== 76323 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44886: <==uncertain_firing== 19437 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #49973: <==uncertain_firing== 80285 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #50502: <==negation-removal== 67316 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #52276: <==negation-removal== 12949 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #53056: <==uncertain_firing== 46082 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53811: <==negation-removal== 17566 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #55686: <==negation-removal== 12138 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #56941: <==negation-removal== 56243 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #57503: <==uncertain_firing== 64743 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #58606: <==negation-removal== 40001 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #60654: <==negation-removal== 79375 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #62908: <==negation-removal== 58942 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #63319: <==uncertain_firing== 40154 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #63474: <==uncertain_firing== 26010 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #65704: <==negation-removal== 77978 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #67458: <==negation-removal== 68797 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #69917: <==negation-removal== 80285 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #70183: <==negation-removal== 44774 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #71098: <==uncertain_firing== 68797 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #73951: <==negation-removal== 64997 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #75521: <==negation-removal== 64975 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #75761: <==uncertain_firing== 76323 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #78088: <==uncertain_firing== 80591 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #78371: <==negation-removal== 29766 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #79117: <==negation-removal== 56404 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #79398: <==negation-removal== 64743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #79953: <==uncertain_firing== 64975 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81615: <==uncertain_firing== 44774 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #83551: <==negation-removal== 83835 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #84683: <==negation-removal== 26010 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87863: <==uncertain_firing== 78398 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #88037: <==negation-removal== 47975 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #89092: <==uncertain_firing== 58942 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #92133: <==uncertain_firing== 12949 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (Pc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #10547: <==commonly_known== 40198 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_a))

                    ; #12038: <==commonly_known== 68733 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #15445: <==commonly_known== 24848 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #15810: <==closure== 74196 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #16728: <==commonly_known== 13291 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #20796: <==commonly_known== 60838 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #23674: <==commonly_known== 40198 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #24848: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #26046: <==commonly_known== 63063 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #26745: <==commonly_known== 68733 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #29543: <==commonly_known== 63063 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #48857: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #49929: <==commonly_known== 24848 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #51394: <==commonly_known== 60838 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_a))

                    ; #51402: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #59470: <==commonly_known== 48857 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #60159: <==closure== 49929 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #60838: <==closure== 51402 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #63063: <==closure== 24848 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #64399: <==closure== 91584 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #67703: <==commonly_known== 73446 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #68733: <==closure== 48857 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #71070: <==closure== 59470 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #71938: <==closure== 15445 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_a))

                    ; #74196: <==commonly_known== 48857 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #79291: <==commonly_known== 73446 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #82410: <==closure== 87726 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #87726: <==commonly_known== 51402 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_a))

                    ; #91584: <==commonly_known== 51402 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #92069: <==commonly_known== 13291 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #10984: <==uncertain_firing== 71938 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #12269: <==uncertain_firing== 82410 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #12672: <==uncertain_firing== 60838 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #13291: <==uncertain_firing== 48857 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #14311: <==negation-removal== 63063 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #14811: <==uncertain_firing== 64399 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #15224: <==uncertain_firing== 12038 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #15700: <==negation-removal== 68733 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #19469: <==uncertain_firing== 10547 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #19755: <==uncertain_firing== 59470 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #21319: <==negation-removal== 16728 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #25740: <==uncertain_firing== 67703 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #27676: <==negation-removal== 15445 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #28365: <==uncertain_firing== 26745 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #29844: <==negation-removal== 67703 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #30187: <==negation-removal== 60838 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #31181: <==uncertain_firing== 79291 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #31563: <==uncertain_firing== 23674 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #34990: <==negation-removal== 82410 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #36589: <==negation-removal== 74196 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #37925: <==uncertain_firing== 92069 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #39347: <==uncertain_firing== 29543 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #40198: <==uncertain_firing== 51402 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40530: <==uncertain_firing== 26046 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #43102: <==negation-removal== 15810 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #43627: <==negation-removal== 79291 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #45979: <==uncertain_firing== 74196 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #46471: <==uncertain_firing== 15445 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #46802: <==uncertain_firing== 20796 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #48299: <==negation-removal== 51394 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #49623: <==negation-removal== 91584 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #49640: <==uncertain_firing== 60159 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #49929: <==negation-removal== 60159 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #51893: <==negation-removal== 87726 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #52654: <==negation-removal== 10547 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #52985: <==uncertain_firing== 51394 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #54034: <==negation-removal== 64399 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #54716: <==uncertain_firing== 71070 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #55562: <==negation-removal== 71070 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #57558: <==negation-removal== 12038 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #59053: <==uncertain_firing== 16728 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #60021: <==negation-removal== 24848 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #60846: <==uncertain_firing== 63063 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #61531: <==negation-removal== 29543 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #63976: <==negation-removal== 26046 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #65914: <==negation-removal== 20796 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #66482: <==uncertain_firing== 91584 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #66658: <==uncertain_firing== 87726 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #69586: <==negation-removal== 26745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #73446: <==uncertain_firing== 24848 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #76511: <==uncertain_firing== 68733 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #76711: <==negation-removal== 23674 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #78321: <==negation-removal== 92069 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #82832: <==negation-removal== 48857 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #85388: <==negation-removal== 59470 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #85866: <==uncertain_firing== 15810 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #86446: <==negation-removal== 51402 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #86907: <==negation-removal== 71938 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #90444: <==uncertain_firing== 49929 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #91673: <==negation-removal== 49929 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (Pc_secret_b)
                           (at_c_l1))
        :effect (and
                    ; #11103: <==closure== 49756 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_b))

                    ; #18516: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #22709: <==closure== 18516 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #24031: <==commonly_known== 50018 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_b))

                    ; #24061: <==closure== 86290 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #28363: <==closure== 50018 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #29301: <==commonly_known== 28363 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_b))

                    ; #30471: <==closure== 49261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_b))

                    ; #34222: <==closure== 44695 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #36487: <==commonly_known== 22709 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_b))

                    ; #37688: <==commonly_known== 10580 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_b))

                    ; #39930: <==closure== 24031 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_b))

                    ; #41316: <==commonly_known== 22709 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_b))

                    ; #41570: <==commonly_known== 40435 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_b))

                    ; #41642: <==commonly_known== 24061 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_b))

                    ; #44695: <==commonly_known== 18516 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_b))

                    ; #44873: <==commonly_known== 74508 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_b))

                    ; #45125: <==commonly_known== 10580 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_b))

                    ; #49261: <==commonly_known== 50018 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #49756: <==commonly_known== 86290 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_b))

                    ; #50018: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #57224: <==commonly_known== 86290 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_b))

                    ; #59202: <==closure== 63363 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_b))

                    ; #63363: <==commonly_known== 18516 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_b))

                    ; #63443: <==commonly_known== 28363 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #65045: <==commonly_known== 74508 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_b))

                    ; #65055: <==commonly_known== 40435 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #65352: <==closure== 57224 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_b))

                    ; #76125: <==commonly_known== 24061 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_b))

                    ; #86290: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #10580: <==uncertain_firing== 18516 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13903: <==negation-removal== 29301 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #14325: <==negation-removal== 57224 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #16199: <==negation-removal== 63363 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17081: <==uncertain_firing== 24031 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #18931: <==negation-removal== 41642 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #19759: <==negation-removal== 28363 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19934: <==negation-removal== 11103 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #21100: <==negation-removal== 65045 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #21797: <==negation-removal== 44695 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #24195: <==negation-removal== 49756 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #25754: <==negation-removal== 39930 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #26109: <==uncertain_firing== 63363 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #27328: <==uncertain_firing== 28363 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #27918: <==negation-removal== 76125 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #28255: <==negation-removal== 49261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #29564: <==uncertain_firing== 49756 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #29928: <==uncertain_firing== 41570 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #31165: <==uncertain_firing== 34222 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #31985: <==uncertain_firing== 59202 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #32116: <==uncertain_firing== 65055 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #33183: <==negation-removal== 36487 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #37365: <==uncertain_firing== 63443 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #38994: <==uncertain_firing== 65045 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #39180: <==uncertain_firing== 57224 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #39928: <==negation-removal== 63443 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #40435: <==uncertain_firing== 50018 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #41039: <==uncertain_firing== 11103 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #41476: <==uncertain_firing== 22709 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #42053: <==uncertain_firing== 76125 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #45230: <==negation-removal== 22709 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #45746: <==uncertain_firing== 65352 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #46332: <==negation-removal== 50018 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #46507: <==uncertain_firing== 29301 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #46540: <==uncertain_firing== 44695 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #47015: <==negation-removal== 18516 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #52394: <==uncertain_firing== 45125 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #54942: <==uncertain_firing== 41316 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #56703: <==uncertain_firing== 36487 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #56932: <==negation-removal== 41570 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #59069: <==negation-removal== 59202 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #59765: <==uncertain_firing== 24061 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #60291: <==negation-removal== 30471 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #67140: <==negation-removal== 65352 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #69227: <==negation-removal== 24031 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #71005: <==negation-removal== 44873 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #71547: <==uncertain_firing== 49261 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #73281: <==uncertain_firing== 41642 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #74508: <==uncertain_firing== 86290 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #76796: <==negation-removal== 24061 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #77242: <==negation-removal== 86290 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #77591: <==negation-removal== 37688 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #80110: <==negation-removal== 65055 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #81667: <==uncertain_firing== 37688 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #81959: <==negation-removal== 34222 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #85874: <==uncertain_firing== 44873 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #86458: <==negation-removal== 41316 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #86831: <==uncertain_firing== 39930 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #87193: <==uncertain_firing== 30471 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #89818: <==negation-removal== 45125 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Bc_secret_b)
                           (Pc_secret_b)
                           (at_c_l2))
        :effect (and
                    ; #11707: <==commonly_known== 81141 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #15520: <==commonly_known== 70382 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #17806: <==closure== 46138 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #21104: <==closure== 69449 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #25565: <==closure== 81141 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #26100: <==commonly_known== 25726 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #34695: <==closure== 84558 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_b))

                    ; #42441: <==commonly_known== 97491 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #43690: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #46026: <==closure== 85457 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #46138: <==commonly_known== 43690 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #46983: <==closure== 43690 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #47797: <==commonly_known== 97491 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #49350: <==closure== 15520 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #51529: <==commonly_known== 25565 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #52170: <==commonly_known== 46983 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #55292: <==commonly_known== 35457 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #56815: <==closure== 11707 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #59110: <==commonly_known== 25565 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_b))

                    ; #63632: <==commonly_known== 35457 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_b))

                    ; #69449: <==commonly_known== 43690 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #70382: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #73691: <==commonly_known== 46983 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #77065: <==commonly_known== 25726 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #81141: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #84558: <==commonly_known== 70382 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #85457: <==commonly_known== 81141 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_b))

                    ; #88976: <==commonly_known== 64640 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #89985: <==commonly_known== 64640 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #97491: <==closure== 70382 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #13765: <==negation-removal== 42441 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #15251: <==negation-removal== 85457 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #15282: <==negation-removal== 73691 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #15771: <==uncertain_firing== 25565 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #15949: <==negation-removal== 88976 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #16957: <==negation-removal== 69449 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #17455: <==negation-removal== 89985 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #18155: <==negation-removal== 97491 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #21848: <==uncertain_firing== 63632 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #25069: <==uncertain_firing== 56815 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #25581: <==negation-removal== 56815 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #25726: <==uncertain_firing== 43690 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #27047: <==uncertain_firing== 46026 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #28314: <==uncertain_firing== 42441 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #29135: <==uncertain_firing== 89985 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #30283: <==uncertain_firing== 26100 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #32905: <==negation-removal== 46983 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #33185: <==negation-removal== 52170 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #34635: <==negation-removal== 84558 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #35457: <==uncertain_firing== 81141 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37081: <==uncertain_firing== 69449 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #38018: <==uncertain_firing== 77065 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #38849: <==uncertain_firing== 51529 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #44214: <==negation-removal== 34695 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #44976: <==uncertain_firing== 46983 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #45727: <==negation-removal== 17806 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #46931: <==negation-removal== 70382 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47050: <==uncertain_firing== 59110 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48669: <==negation-removal== 47797 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #50363: <==uncertain_firing== 85457 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #52065: <==uncertain_firing== 49350 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #53339: <==negation-removal== 51529 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #55379: <==negation-removal== 15520 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #56476: <==uncertain_firing== 46138 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #58402: <==uncertain_firing== 55292 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #59376: <==negation-removal== 59110 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #60430: <==negation-removal== 25565 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #62299: <==negation-removal== 43690 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #62832: <==negation-removal== 63632 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #64191: <==uncertain_firing== 88976 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #64640: <==uncertain_firing== 70382 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #65609: <==uncertain_firing== 47797 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #67524: <==negation-removal== 46026 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #71957: <==uncertain_firing== 17806 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #72311: <==negation-removal== 77065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #73111: <==uncertain_firing== 15520 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #73324: <==negation-removal== 46138 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #73482: <==negation-removal== 21104 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #75053: <==uncertain_firing== 52170 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #76172: <==negation-removal== 55292 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #79347: <==uncertain_firing== 11707 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #81039: <==negation-removal== 81141 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #83902: <==uncertain_firing== 21104 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #84054: <==uncertain_firing== 84558 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #86701: <==negation-removal== 26100 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86839: <==negation-removal== 11707 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #89860: <==negation-removal== 49350 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #91189: <==uncertain_firing== 97491 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #92077: <==uncertain_firing== 34695 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #93550: <==uncertain_firing== 73691 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Bc_secret_c)
                           (at_c_l1)
                           (Pc_secret_c))
        :effect (and
                    ; #13229: <==closure== 23279 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #18796: <==commonly_known== 90261 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Pb_secret_c))

                    ; #20452: <==closure== 21689 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Pa_secret_c))

                    ; #21689: <==commonly_known== 23279 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Ba_secret_c))

                    ; #23279: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #24897: <==commonly_known== 69620 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #29878: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #30463: <==commonly_known== 13229 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Bc_Pa_secret_c))

                    ; #31505: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35691: <==commonly_known== 69620 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pc_Ba_secret_c))

                    ; #36612: <==closure== 36679 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Pc_secret_c))

                    ; #36679: <==commonly_known== 31505 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Bc_secret_c))

                    ; #37482: <==closure== 70738 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Pa_secret_c))

                    ; #40529: <==closure== 31505 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #41026: <==commonly_known== 78527 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Bb_secret_c))

                    ; #41043: <==commonly_known== 90261 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Pb_secret_c))

                    ; #45392: <==commonly_known== 29878 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Ba_Bb_secret_c))

                    ; #49482: <==commonly_known== 37043 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Bc_secret_c))

                    ; #60935: <==commonly_known== 37043 (neg)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Pa_Bc_secret_c))

                    ; #64387: <==commonly_known== 13229 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #65220: <==closure== 75361 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pb_Pc_secret_c))

                    ; #65743: <==closure== 78522 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Pb_secret_c))

                    ; #69028: <==closure== 45392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #70738: <==commonly_known== 23279 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #73453: <==commonly_known== 78527 (neg)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Pc_Bb_secret_c))

                    ; #75361: <==commonly_known== 31505 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Bc_secret_c))

                    ; #78522: <==commonly_known== 29878 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bc_Bb_secret_c))

                    ; #84040: <==commonly_known== 40529 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (Ba_Pc_secret_c))

                    ; #87928: <==commonly_known== 40529 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (Bb_Pc_secret_c))

                    ; #90261: <==closure== 29878 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #11583: <==uncertain_firing== 75361 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #12806: <==negation-removal== 41026 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #15000: <==negation-removal== 35691 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #15481: <==uncertain_firing== 84040 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #15620: <==negation-removal== 70738 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #20214: <==uncertain_firing== 90261 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23674: <==negation-removal== 64387 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #23825: <==negation-removal== 20452 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #24908: <==negation-removal== 40529 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #26063: <==negation-removal== 65743 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #29642: <==negation-removal== 30463 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #29744: <==uncertain_firing== 40529 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #31015: <==negation-removal== 36679 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #32143: <==uncertain_firing== 60935 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #36606: <==uncertain_firing== 87928 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #37043: <==uncertain_firing== 31505 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #37830: <==uncertain_firing== 37482 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #38760: <==negation-removal== 65220 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #39099: <==uncertain_firing== 18796 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #40368: <==uncertain_firing== 65220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #40432: <==uncertain_firing== 45392 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #41093: <==negation-removal== 21689 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #44254: <==uncertain_firing== 78522 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #46796: <==uncertain_firing== 35691 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #48809: <==uncertain_firing== 70738 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #50012: <==uncertain_firing== 21689 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #51520: <==negation-removal== 90261 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #53092: <==uncertain_firing== 64387 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #53585: <==uncertain_firing== 36679 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #53996: <==uncertain_firing== 24897 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #56559: <==negation-removal== 49482 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #57984: <==negation-removal== 23279 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #63133: <==uncertain_firing== 13229 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #63611: <==negation-removal== 45392 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #65743: <==negation-removal== 87928 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #66202: <==uncertain_firing== 41043 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #66325: <==negation-removal== 18796 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #66759: <==negation-removal== 84040 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #67850: <==negation-removal== 37482 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #69576: <==negation-removal== 31505 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #69620: <==uncertain_firing== 23279 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #69831: <==uncertain_firing== 36612 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #70666: <==uncertain_firing== 20452 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #71780: <==negation-removal== 24897 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #72376: <==negation-removal== 73453 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #72503: <==negation-removal== 13229 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #73074: <==negation-removal== 41043 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #74823: <==negation-removal== 75361 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #75330: <==uncertain_firing== 73453 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #75801: <==negation-removal== 36612 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #76445: <==uncertain_firing== 49482 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #76760: <==negation-removal== 69028 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #78527: <==uncertain_firing== 29878 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #84102: <==negation-removal== 60935 (pos)
                    (when (and (and (at_a_l1)
                               (at_c_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #87343: <==uncertain_firing== 41026 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #88730: <==negation-removal== 29878 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #90722: <==uncertain_firing== 30463 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #90726: <==uncertain_firing== 69028 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #91423: <==negation-removal== 78522 (pos)
                    (when (and (and (at_b_l1)
                               (at_c_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #96196: <==uncertain_firing== 65743 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_b_l1))))
                          (not (Bc_Bb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Bc_secret_c)
                           (at_c_l2)
                           (Pc_secret_c))
        :effect (and
                    ; #15698: <==closure== 34077 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #18225: <==commonly_known== 90116 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #20815: <==commonly_known== 65105 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #21537: <==commonly_known== 33282 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #26545: <==closure== 39134 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #29478: <==closure== 86215 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #29603: <==commonly_known== 75675 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #31301: <==closure== 65105 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #33282: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #34077: <==commonly_known== 86215 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #39134: <==commonly_known== 65105 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #44144: <==commonly_known== 86215 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #44633: <==commonly_known== 54672 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #49781: <==closure== 44144 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Pb_secret_c))

                    ; #49890: <==commonly_known== 31301 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #50603: <==closure== 70128 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #51512: <==commonly_known== 29478 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #56305: <==commonly_known== 42501 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #61974: <==closure== 20815 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #64191: <==commonly_known== 42501 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #65105: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67194: <==closure== 21537 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #70128: <==commonly_known== 33282 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Bc_secret_c))

                    ; #71115: <==commonly_known== 31301 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #76726: <==commonly_known== 75675 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #77758: <==commonly_known== 90116 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bb_Pc_secret_c))

                    ; #86215: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #87496: <==commonly_known== 29478 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #90116: <==closure== 33282 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #90412: <==commonly_known== 54672 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Bc_secret_c))

                    ; #11355: <==negation-removal== 76726 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #11385: <==uncertain_firing== 90412 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #13740: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #14120: <==negation-removal== 51512 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #15498: <==uncertain_firing== 70128 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #19120: <==negation-removal== 39134 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #20380: <==negation-removal== 56305 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #23346: <==uncertain_firing== 15698 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #26971: <==uncertain_firing== 49890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #30664: <==uncertain_firing== 39134 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #30701: <==uncertain_firing== 29478 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32462: <==uncertain_firing== 26545 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #34484: <==uncertain_firing== 21537 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #34524: <==negation-removal== 50603 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #35381: <==negation-removal== 15698 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #42501: <==uncertain_firing== 65105 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #42745: <==negation-removal== 65105 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #43076: <==uncertain_firing== 44633 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #43200: <==uncertain_firing== 61974 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #43456: <==negation-removal== 31301 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #44606: <==negation-removal== 26545 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #45040: <==uncertain_firing== 76726 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46050: <==negation-removal== 67194 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #46461: <==negation-removal== 49890 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #47753: <==negation-removal== 29478 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #48198: <==uncertain_firing== 20815 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #48213: <==negation-removal== 20815 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #48829: <==negation-removal== 77758 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #49780: <==uncertain_firing== 90116 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #53986: <==uncertain_firing== 18225 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #54297: <==negation-removal== 18225 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #54672: <==uncertain_firing== 33282 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55233: <==uncertain_firing== 34077 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #57399: <==negation-removal== 70128 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #57731: <==negation-removal== 49781 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #58630: <==negation-removal== 90116 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #60330: <==uncertain_firing== 77758 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #65981: <==negation-removal== 61974 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #69568: <==negation-removal== 71115 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #69952: <==uncertain_firing== 67194 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #70092: <==uncertain_firing== 64191 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #70141: <==negation-removal== 90412 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #70457: <==uncertain_firing== 49781 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #73100: <==negation-removal== 33282 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73826: <==negation-removal== 64191 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #75194: <==uncertain_firing== 87496 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_b_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #75210: <==negation-removal== 21537 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #75254: <==uncertain_firing== 31301 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75675: <==uncertain_firing== 86215 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #78022: <==negation-removal== 87496 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #78755: <==uncertain_firing== 44144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #80145: <==negation-removal== 29603 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #81808: <==uncertain_firing== 51512 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #82265: <==uncertain_firing== 71115 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (not_at_c_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #83186: <==negation-removal== 34077 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #83599: <==uncertain_firing== 50603 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #85422: <==negation-removal== 86215 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #88352: <==negation-removal== 44144 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #90504: <==negation-removal== 44633 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #91890: <==uncertain_firing== 29603 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_c_l2))))
                          (not (Bc_Pb_not_secret_c)))))

)