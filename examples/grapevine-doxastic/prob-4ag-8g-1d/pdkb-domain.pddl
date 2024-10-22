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
        :precondition (and (Pa_secret_a)
                           (initialized)
                           (Ba_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #13709: <==closure== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #15466: <==closure== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #15487: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #24579: <==closure== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #31189: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #41243: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #69951: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #70610: <==closure== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #13425: <==negation-removal== 13709 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #15695: <==uncertain_firing== 70610 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #19337: <==uncertain_firing== 41243 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #26253: <==negation-removal== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #27367: <==negation-removal== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #30612: <==uncertain_firing== 15487 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #44680: <==uncertain_firing== 13709 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #54757: <==uncertain_firing== 31189 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #67701: <==uncertain_firing== 69951 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #71145: <==negation-removal== 15466 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #74011: <==negation-removal== 70610 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #76702: <==uncertain_firing== 24579 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #78813: <==negation-removal== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #88079: <==uncertain_firing== 15466 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91015: <==negation-removal== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #92019: <==negation-removal== 24579 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (Pa_secret_a)
                           (initialized)
                           (at_a_l2)
                           (Ba_secret_a))
        :effect (and
                    ; #12644: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #19497: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #20886: <==closure== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #54700: <==closure== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #65604: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71958: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75703: <==closure== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #81231: <==closure== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #12303: <==uncertain_firing== 19497 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #13127: <==negation-removal== 75703 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #16437: <==negation-removal== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #16520: <==negation-removal== 20886 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #18801: <==uncertain_firing== 75703 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #19158: <==uncertain_firing== 54700 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #21676: <==negation-removal== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #22583: <==uncertain_firing== 81231 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #29612: <==uncertain_firing== 12644 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #35520: <==uncertain_firing== 65604 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49089: <==negation-removal== 54700 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #50462: <==uncertain_firing== 20886 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #66172: <==negation-removal== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #70636: <==uncertain_firing== 71958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #70720: <==negation-removal== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #80257: <==negation-removal== 81231 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #13081: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #14100: <==closure== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #34525: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40695: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #67535: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #67795: <==closure== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #74025: <==closure== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #96837: <==closure== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #14099: <==negation-removal== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #14354: <==negation-removal== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #15225: <==uncertain_firing== 40695 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #16577: <==uncertain_firing== 74025 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #25808: <==uncertain_firing== 96837 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #31373: <==negation-removal== 74025 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #40158: <==negation-removal== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #48553: <==uncertain_firing== 14100 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #55387: <==negation-removal== 67795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #60851: <==uncertain_firing== 67795 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #68942: <==negation-removal== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #69859: <==negation-removal== 96837 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #72459: <==uncertain_firing== 34525 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #73325: <==uncertain_firing== 13081 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #80609: <==uncertain_firing== 67535 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #86054: <==negation-removal== 14100 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #11698: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #13618: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #42566: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #48472: <==closure== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54876: <==closure== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #76772: <==closure== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #77815: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #91387: <==closure== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11786: <==negation-removal== 91387 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #13700: <==uncertain_firing== 91387 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21667: <==uncertain_firing== 76772 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #28825: <==uncertain_firing== 13618 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #40316: <==uncertain_firing== 54876 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #40914: <==negation-removal== 76772 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #51378: <==uncertain_firing== 77815 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #55384: <==negation-removal== 48472 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #58408: <==negation-removal== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #60391: <==negation-removal== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #67485: <==negation-removal== 54876 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #70927: <==uncertain_firing== 11698 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #74723: <==negation-removal== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #82806: <==uncertain_firing== 42566 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #84540: <==negation-removal== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #99995: <==uncertain_firing== 48472 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #15144: <==closure== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19083: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #20137: <==closure== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34676: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #38243: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #50339: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #52588: <==closure== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87875: <==closure== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11006: <==uncertain_firing== 20137 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #12938: <==negation-removal== 20137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #28496: <==negation-removal== 15144 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #32077: <==uncertain_firing== 50339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #39720: <==negation-removal== 87875 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #43778: <==uncertain_firing== 87875 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #50468: <==negation-removal== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #55432: <==negation-removal== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #58164: <==negation-removal== 52588 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #71085: <==uncertain_firing== 34676 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71382: <==uncertain_firing== 38243 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #82444: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #82989: <==uncertain_firing== 15144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #88435: <==negation-removal== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #90911: <==negation-removal== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #92217: <==uncertain_firing== 52588 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #12310: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #21287: <==closure== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #21635: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #44329: <==closure== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #44612: <==closure== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #89278: <==closure== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #95578: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #96604: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #12163: <==uncertain_firing== 12310 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #22803: <==negation-removal== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #26926: <==negation-removal== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #33905: <==negation-removal== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #47225: <==negation-removal== 44329 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #50349: <==negation-removal== 21287 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #61235: <==negation-removal== 44612 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #63327: <==negation-removal== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #65636: <==uncertain_firing== 44329 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #68987: <==uncertain_firing== 44612 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #75370: <==uncertain_firing== 21635 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #79506: <==negation-removal== 89278 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #83204: <==uncertain_firing== 21287 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #83851: <==uncertain_firing== 96604 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #86011: <==uncertain_firing== 89278 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #89663: <==uncertain_firing== 95578 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (Ba_secret_c)
                           (initialized)
                           (Pa_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #11415: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #13892: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #26837: <==closure== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #42501: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #43949: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #45313: <==closure== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #75689: <==closure== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #91677: <==closure== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #11394: <==negation-removal== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25596: <==negation-removal== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #33980: <==negation-removal== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #34881: <==negation-removal== 45313 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #51757: <==uncertain_firing== 13892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #56910: <==negation-removal== 91677 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59624: <==uncertain_firing== 91677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #60025: <==uncertain_firing== 11415 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #60280: <==uncertain_firing== 42501 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #60476: <==uncertain_firing== 75689 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #67176: <==negation-removal== 75689 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70405: <==uncertain_firing== 43949 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #73880: <==uncertain_firing== 26837 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #74098: <==negation-removal== 26837 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #77770: <==uncertain_firing== 45313 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #89940: <==negation-removal== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #16317: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #16407: <==closure== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #24061: <==closure== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #64411: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #66727: <==closure== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #76937: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #85884: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #86708: <==closure== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #10578: <==negation-removal== 66727 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))

                    ; #18549: <==negation-removal== 16407 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #20537: <==uncertain_firing== 16317 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #27598: <==uncertain_firing== 24061 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #34356: <==uncertain_firing== 66727 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38348: <==negation-removal== 86708 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #38388: <==uncertain_firing== 64411 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #47329: <==uncertain_firing== 86708 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #51598: <==negation-removal== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #60423: <==uncertain_firing== 85884 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #61002: <==negation-removal== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #66183: <==uncertain_firing== 76937 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #68075: <==negation-removal== 24061 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #73409: <==negation-removal== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #77558: <==uncertain_firing== 16407 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #87029: <==negation-removal== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l3)
                           (Ba_secret_c))
        :effect (and
                    ; #21525: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #25602: <==closure== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #36520: <==closure== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #45153: <==closure== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #55018: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #59425: <==closure== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #69822: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #85425: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #15198: <==uncertain_firing== 36520 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #16239: <==negation-removal== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #16327: <==negation-removal== 45153 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #26701: <==negation-removal== 36520 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #29851: <==uncertain_firing== 25602 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #31946: <==negation-removal== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #32084: <==negation-removal== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #40641: <==uncertain_firing== 21525 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #41675: <==negation-removal== 59425 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #48209: <==negation-removal== 25602 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #49038: <==uncertain_firing== 85425 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #67777: <==uncertain_firing== 69822 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #68250: <==uncertain_firing== 59425 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #74346: <==uncertain_firing== 55018 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #90420: <==uncertain_firing== 45153 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #91362: <==negation-removal== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #13951: <==closure== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #29216: <==closure== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #29960: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #48168: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #53493: <==closure== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #76033: <==closure== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #87207: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #90533: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14186: <==negation-removal== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #19428: <==negation-removal== 13951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #30642: <==negation-removal== 76033 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #38053: <==uncertain_firing== 13951 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #40950: <==uncertain_firing== 53493 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49661: <==uncertain_firing== 29960 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #49748: <==uncertain_firing== 48168 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #51845: <==uncertain_firing== 76033 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #52655: <==negation-removal== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #62918: <==uncertain_firing== 87207 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #64765: <==negation-removal== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #67033: <==negation-removal== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #72484: <==uncertain_firing== 29216 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #83864: <==negation-removal== 29216 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #90931: <==negation-removal== 53493 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #91676: <==uncertain_firing== 90533 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #26454: <==closure== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #28891: <==closure== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #32011: <==closure== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #41412: <==closure== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #60295: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #72484: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #76975: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #84573: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #12395: <==uncertain_firing== 72484 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #17066: <==negation-removal== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #22578: <==negation-removal== 32011 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #23918: <==uncertain_firing== 41412 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #26620: <==negation-removal== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #27103: <==uncertain_firing== 28891 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #32638: <==uncertain_firing== 84573 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #41714: <==uncertain_firing== 26454 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #42205: <==negation-removal== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #56724: <==negation-removal== 26454 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #57945: <==negation-removal== 28891 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #60623: <==uncertain_firing== 76975 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #61623: <==uncertain_firing== 32011 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #62270: <==negation-removal== 41412 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #63334: <==uncertain_firing== 60295 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #87697: <==negation-removal== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l3)
                           (Pa_secret_d))
        :effect (and
                    ; #13249: <==closure== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24797: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #30778: <==closure== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #31988: <==closure== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #32260: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48267: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #57197: <==closure== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #83823: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #33058: <==uncertain_firing== 57197 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #33216: <==uncertain_firing== 48267 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #34839: <==negation-removal== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #35368: <==uncertain_firing== 13249 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #61214: <==negation-removal== 30778 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #66369: <==uncertain_firing== 83823 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #66375: <==negation-removal== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #68373: <==negation-removal== 31988 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #72921: <==negation-removal== 13249 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #78618: <==uncertain_firing== 32260 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #81050: <==negation-removal== 57197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #84644: <==uncertain_firing== 24797 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #88250: <==uncertain_firing== 31988 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #88254: <==negation-removal== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #89511: <==negation-removal== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #91008: <==uncertain_firing== 30778 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (at_b_l1)
                           (initialized)
                           (Pb_secret_a)
                           (Bb_secret_a))
        :effect (and
                    ; #13709: <==closure== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #15466: <==closure== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #15487: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #24579: <==closure== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #31189: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #41243: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #69951: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #70610: <==closure== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #13425: <==negation-removal== 13709 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #15695: <==uncertain_firing== 70610 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #19337: <==uncertain_firing== 41243 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #26253: <==negation-removal== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #27367: <==negation-removal== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #30612: <==uncertain_firing== 15487 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #44680: <==uncertain_firing== 13709 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #54757: <==uncertain_firing== 31189 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #67701: <==uncertain_firing== 69951 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #71145: <==negation-removal== 15466 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #74011: <==negation-removal== 70610 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #76702: <==uncertain_firing== 24579 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #78813: <==negation-removal== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #88079: <==uncertain_firing== 15466 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91015: <==negation-removal== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #92019: <==negation-removal== 24579 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (initialized)
                           (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #12644: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #19497: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #20886: <==closure== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #54700: <==closure== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #65604: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71958: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75703: <==closure== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #81231: <==closure== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #12303: <==uncertain_firing== 19497 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #13127: <==negation-removal== 75703 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #16437: <==negation-removal== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #16520: <==negation-removal== 20886 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #18801: <==uncertain_firing== 75703 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #19158: <==uncertain_firing== 54700 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #21676: <==negation-removal== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #22583: <==uncertain_firing== 81231 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #29612: <==uncertain_firing== 12644 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #35520: <==uncertain_firing== 65604 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49089: <==negation-removal== 54700 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #50462: <==uncertain_firing== 20886 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #66172: <==negation-removal== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #70636: <==uncertain_firing== 71958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #70720: <==negation-removal== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #80257: <==negation-removal== 81231 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (initialized)
                           (Pb_secret_a)
                           (at_b_l3)
                           (Bb_secret_a))
        :effect (and
                    ; #13081: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #14100: <==closure== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #34525: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40695: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #67535: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #67795: <==closure== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #74025: <==closure== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #96837: <==closure== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #14099: <==negation-removal== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #14354: <==negation-removal== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #15225: <==uncertain_firing== 40695 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #16577: <==uncertain_firing== 74025 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #25808: <==uncertain_firing== 96837 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #31373: <==negation-removal== 74025 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #40158: <==negation-removal== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #48553: <==uncertain_firing== 14100 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #55387: <==negation-removal== 67795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #60851: <==uncertain_firing== 67795 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #68942: <==negation-removal== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #69859: <==negation-removal== 96837 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #72459: <==uncertain_firing== 34525 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #73325: <==uncertain_firing== 13081 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #80609: <==uncertain_firing== 67535 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #86054: <==negation-removal== 14100 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (at_b_l1)
                           (initialized)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #11698: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #13618: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #42566: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #48472: <==closure== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54876: <==closure== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #76772: <==closure== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #77815: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #91387: <==closure== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11786: <==negation-removal== 91387 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #13700: <==uncertain_firing== 91387 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21667: <==uncertain_firing== 76772 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #28825: <==uncertain_firing== 13618 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #40316: <==uncertain_firing== 54876 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #40914: <==negation-removal== 76772 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #51378: <==uncertain_firing== 77815 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #55384: <==negation-removal== 48472 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #58408: <==negation-removal== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #60391: <==negation-removal== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #67485: <==negation-removal== 54876 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #70927: <==uncertain_firing== 11698 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #74723: <==negation-removal== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #82806: <==uncertain_firing== 42566 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #84540: <==negation-removal== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #99995: <==uncertain_firing== 48472 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (Bb_secret_b)
                           (initialized)
                           (Pb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #15144: <==closure== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19083: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #20137: <==closure== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34676: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #38243: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #50339: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #52588: <==closure== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87875: <==closure== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11006: <==uncertain_firing== 20137 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #12938: <==negation-removal== 20137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #28496: <==negation-removal== 15144 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #32077: <==uncertain_firing== 50339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #39720: <==negation-removal== 87875 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #43778: <==uncertain_firing== 87875 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #50468: <==negation-removal== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #55432: <==negation-removal== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #58164: <==negation-removal== 52588 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #71085: <==uncertain_firing== 34676 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71382: <==uncertain_firing== 38243 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #82444: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #82989: <==uncertain_firing== 15144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #88435: <==negation-removal== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #90911: <==negation-removal== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #92217: <==uncertain_firing== 52588 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #12310: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #21287: <==closure== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #21635: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #44329: <==closure== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #44612: <==closure== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #89278: <==closure== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #95578: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #96604: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #12163: <==uncertain_firing== 12310 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #22803: <==negation-removal== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #26926: <==negation-removal== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #33905: <==negation-removal== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #47225: <==negation-removal== 44329 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #50349: <==negation-removal== 21287 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #61235: <==negation-removal== 44612 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #63327: <==negation-removal== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #65636: <==uncertain_firing== 44329 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #68987: <==uncertain_firing== 44612 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #75370: <==uncertain_firing== 21635 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #79506: <==negation-removal== 89278 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #83204: <==uncertain_firing== 21287 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #83851: <==uncertain_firing== 96604 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #86011: <==uncertain_firing== 89278 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #89663: <==uncertain_firing== 95578 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_c)
                           (Pb_secret_c)
                           (initialized))
        :effect (and
                    ; #11415: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #13892: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #26837: <==closure== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #42501: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #43949: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #45313: <==closure== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #75689: <==closure== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #91677: <==closure== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #11394: <==negation-removal== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25596: <==negation-removal== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #33980: <==negation-removal== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #34881: <==negation-removal== 45313 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #51757: <==uncertain_firing== 13892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #56910: <==negation-removal== 91677 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59624: <==uncertain_firing== 91677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #60025: <==uncertain_firing== 11415 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #60280: <==uncertain_firing== 42501 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #60476: <==uncertain_firing== 75689 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #67176: <==negation-removal== 75689 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70405: <==uncertain_firing== 43949 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #73880: <==uncertain_firing== 26837 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #74098: <==negation-removal== 26837 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #77770: <==uncertain_firing== 45313 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #89940: <==negation-removal== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (Bb_secret_c)
                           (initialized)
                           (Pb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #16317: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #16407: <==closure== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #24061: <==closure== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #64411: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #66727: <==closure== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #76937: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #85884: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #86708: <==closure== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #10578: <==negation-removal== 66727 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))

                    ; #18549: <==negation-removal== 16407 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #20537: <==uncertain_firing== 16317 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #27598: <==uncertain_firing== 24061 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #34356: <==uncertain_firing== 66727 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38348: <==negation-removal== 86708 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #38388: <==uncertain_firing== 64411 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #47329: <==uncertain_firing== 86708 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #51598: <==negation-removal== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #60423: <==uncertain_firing== 85884 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #61002: <==negation-removal== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #66183: <==uncertain_firing== 76937 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #68075: <==negation-removal== 24061 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #73409: <==negation-removal== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #77558: <==uncertain_firing== 16407 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #87029: <==negation-removal== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (Bb_secret_c)
                           (initialized)
                           (at_b_l3)
                           (Pb_secret_c))
        :effect (and
                    ; #21525: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #25602: <==closure== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #36520: <==closure== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #45153: <==closure== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #55018: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #59425: <==closure== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #69822: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #85425: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #15198: <==uncertain_firing== 36520 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #16239: <==negation-removal== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #16327: <==negation-removal== 45153 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #26701: <==negation-removal== 36520 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #29851: <==uncertain_firing== 25602 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #31946: <==negation-removal== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #32084: <==negation-removal== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #40641: <==uncertain_firing== 21525 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #41675: <==negation-removal== 59425 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #48209: <==negation-removal== 25602 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #49038: <==uncertain_firing== 85425 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #67777: <==uncertain_firing== 69822 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #68250: <==uncertain_firing== 59425 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #74346: <==uncertain_firing== 55018 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #90420: <==uncertain_firing== 45153 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #91362: <==negation-removal== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d)
                           (initialized))
        :effect (and
                    ; #13951: <==closure== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #29216: <==closure== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #29960: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #48168: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #53493: <==closure== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #76033: <==closure== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #87207: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #90533: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14186: <==negation-removal== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #19428: <==negation-removal== 13951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #30642: <==negation-removal== 76033 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #38053: <==uncertain_firing== 13951 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #40950: <==uncertain_firing== 53493 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49661: <==uncertain_firing== 29960 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #49748: <==uncertain_firing== 48168 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #51845: <==uncertain_firing== 76033 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #52655: <==negation-removal== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #62918: <==uncertain_firing== 87207 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #64765: <==negation-removal== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #67033: <==negation-removal== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #72484: <==uncertain_firing== 29216 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #83864: <==negation-removal== 29216 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #90931: <==negation-removal== 53493 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #91676: <==uncertain_firing== 90533 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (Bb_secret_d)
                           (Pb_secret_d)
                           (initialized)
                           (at_b_l2))
        :effect (and
                    ; #26454: <==closure== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #28891: <==closure== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #32011: <==closure== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #41412: <==closure== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #60295: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #72484: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #76975: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #84573: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #12395: <==uncertain_firing== 72484 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #17066: <==negation-removal== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #22578: <==negation-removal== 32011 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #23918: <==uncertain_firing== 41412 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #26620: <==negation-removal== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #27103: <==uncertain_firing== 28891 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #32638: <==uncertain_firing== 84573 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #41714: <==uncertain_firing== 26454 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #42205: <==negation-removal== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #56724: <==negation-removal== 26454 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #57945: <==negation-removal== 28891 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #60623: <==uncertain_firing== 76975 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #61623: <==uncertain_firing== 32011 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #62270: <==negation-removal== 41412 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #63334: <==uncertain_firing== 60295 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #87697: <==negation-removal== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (Bb_secret_d)
                           (at_b_l3)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #13249: <==closure== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24797: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #30778: <==closure== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #31988: <==closure== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #32260: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48267: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #57197: <==closure== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #83823: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #33058: <==uncertain_firing== 57197 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #33216: <==uncertain_firing== 48267 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #34839: <==negation-removal== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #35368: <==uncertain_firing== 13249 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #61214: <==negation-removal== 30778 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #66369: <==uncertain_firing== 83823 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #66375: <==negation-removal== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #68373: <==negation-removal== 31988 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #72921: <==negation-removal== 13249 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #78618: <==uncertain_firing== 32260 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #81050: <==negation-removal== 57197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #84644: <==uncertain_firing== 24797 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #88250: <==uncertain_firing== 31988 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #88254: <==negation-removal== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #89511: <==negation-removal== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #91008: <==uncertain_firing== 30778 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #13709: <==closure== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #15466: <==closure== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #15487: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #24579: <==closure== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #31189: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #41243: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #69951: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #70610: <==closure== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #13425: <==negation-removal== 13709 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #15695: <==uncertain_firing== 70610 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #19337: <==uncertain_firing== 41243 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #26253: <==negation-removal== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #27367: <==negation-removal== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #30612: <==uncertain_firing== 15487 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #44680: <==uncertain_firing== 13709 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #54757: <==uncertain_firing== 31189 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #67701: <==uncertain_firing== 69951 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #71145: <==negation-removal== 15466 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #74011: <==negation-removal== 70610 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #76702: <==uncertain_firing== 24579 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #78813: <==negation-removal== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #88079: <==uncertain_firing== 15466 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91015: <==negation-removal== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #92019: <==negation-removal== 24579 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (Pc_secret_a)
                           (at_c_l2)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #12644: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #19497: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #20886: <==closure== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #54700: <==closure== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #65604: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71958: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75703: <==closure== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #81231: <==closure== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #12303: <==uncertain_firing== 19497 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #13127: <==negation-removal== 75703 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #16437: <==negation-removal== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #16520: <==negation-removal== 20886 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #18801: <==uncertain_firing== 75703 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #19158: <==uncertain_firing== 54700 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #21676: <==negation-removal== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #22583: <==uncertain_firing== 81231 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #29612: <==uncertain_firing== 12644 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #35520: <==uncertain_firing== 65604 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49089: <==negation-removal== 54700 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #50462: <==uncertain_firing== 20886 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #66172: <==negation-removal== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #70636: <==uncertain_firing== 71958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #70720: <==negation-removal== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #80257: <==negation-removal== 81231 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (Pc_secret_a)
                           (at_c_l3)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #13081: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #14100: <==closure== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #34525: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40695: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #67535: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #67795: <==closure== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #74025: <==closure== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #96837: <==closure== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #14099: <==negation-removal== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #14354: <==negation-removal== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #15225: <==uncertain_firing== 40695 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #16577: <==uncertain_firing== 74025 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #25808: <==uncertain_firing== 96837 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #31373: <==negation-removal== 74025 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #40158: <==negation-removal== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #48553: <==uncertain_firing== 14100 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #55387: <==negation-removal== 67795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #60851: <==uncertain_firing== 67795 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #68942: <==negation-removal== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #69859: <==negation-removal== 96837 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #72459: <==uncertain_firing== 34525 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #73325: <==uncertain_firing== 13081 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #80609: <==uncertain_firing== 67535 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #86054: <==negation-removal== 14100 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #11698: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #13618: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #42566: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #48472: <==closure== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54876: <==closure== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #76772: <==closure== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #77815: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #91387: <==closure== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11786: <==negation-removal== 91387 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #13700: <==uncertain_firing== 91387 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21667: <==uncertain_firing== 76772 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #28825: <==uncertain_firing== 13618 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #40316: <==uncertain_firing== 54876 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #40914: <==negation-removal== 76772 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #51378: <==uncertain_firing== 77815 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #55384: <==negation-removal== 48472 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #58408: <==negation-removal== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #60391: <==negation-removal== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #67485: <==negation-removal== 54876 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #70927: <==uncertain_firing== 11698 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #74723: <==negation-removal== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #82806: <==uncertain_firing== 42566 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #84540: <==negation-removal== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #99995: <==uncertain_firing== 48472 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (Pc_secret_b)
                           (at_c_l2)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #15144: <==closure== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19083: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #20137: <==closure== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34676: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #38243: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #50339: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #52588: <==closure== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87875: <==closure== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11006: <==uncertain_firing== 20137 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #12938: <==negation-removal== 20137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #28496: <==negation-removal== 15144 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #32077: <==uncertain_firing== 50339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #39720: <==negation-removal== 87875 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #43778: <==uncertain_firing== 87875 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #50468: <==negation-removal== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #55432: <==negation-removal== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #58164: <==negation-removal== 52588 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #71085: <==uncertain_firing== 34676 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71382: <==uncertain_firing== 38243 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #82444: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #82989: <==uncertain_firing== 15144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #88435: <==negation-removal== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #90911: <==negation-removal== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #92217: <==uncertain_firing== 52588 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (Pc_secret_b)
                           (at_c_l3)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #12310: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #21287: <==closure== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #21635: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #44329: <==closure== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #44612: <==closure== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #89278: <==closure== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #95578: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #96604: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #12163: <==uncertain_firing== 12310 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #22803: <==negation-removal== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #26926: <==negation-removal== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #33905: <==negation-removal== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #47225: <==negation-removal== 44329 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #50349: <==negation-removal== 21287 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #61235: <==negation-removal== 44612 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #63327: <==negation-removal== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #65636: <==uncertain_firing== 44329 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #68987: <==uncertain_firing== 44612 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #75370: <==uncertain_firing== 21635 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #79506: <==negation-removal== 89278 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #83204: <==uncertain_firing== 21287 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #83851: <==uncertain_firing== 96604 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #86011: <==uncertain_firing== 89278 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #89663: <==uncertain_firing== 95578 (pos)
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
                    ; #11415: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #13892: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #26837: <==closure== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #42501: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #43949: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #45313: <==closure== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #75689: <==closure== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #91677: <==closure== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #11394: <==negation-removal== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25596: <==negation-removal== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #33980: <==negation-removal== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #34881: <==negation-removal== 45313 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #51757: <==uncertain_firing== 13892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #56910: <==negation-removal== 91677 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59624: <==uncertain_firing== 91677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #60025: <==uncertain_firing== 11415 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #60280: <==uncertain_firing== 42501 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #60476: <==uncertain_firing== 75689 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #67176: <==negation-removal== 75689 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70405: <==uncertain_firing== 43949 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #73880: <==uncertain_firing== 26837 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #74098: <==negation-removal== 26837 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #77770: <==uncertain_firing== 45313 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #89940: <==negation-removal== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l2))
        :effect (and
                    ; #16317: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #16407: <==closure== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #24061: <==closure== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #64411: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #66727: <==closure== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #76937: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #85884: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #86708: <==closure== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #10578: <==negation-removal== 66727 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))

                    ; #18549: <==negation-removal== 16407 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #20537: <==uncertain_firing== 16317 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #27598: <==uncertain_firing== 24061 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #34356: <==uncertain_firing== 66727 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38348: <==negation-removal== 86708 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #38388: <==uncertain_firing== 64411 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #47329: <==uncertain_firing== 86708 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #51598: <==negation-removal== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #60423: <==uncertain_firing== 85884 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #61002: <==negation-removal== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #66183: <==uncertain_firing== 76937 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #68075: <==negation-removal== 24061 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #73409: <==negation-removal== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #77558: <==uncertain_firing== 16407 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #87029: <==negation-removal== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l3))
        :effect (and
                    ; #21525: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #25602: <==closure== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #36520: <==closure== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #45153: <==closure== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #55018: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #59425: <==closure== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #69822: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #85425: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #15198: <==uncertain_firing== 36520 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #16239: <==negation-removal== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #16327: <==negation-removal== 45153 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #26701: <==negation-removal== 36520 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #29851: <==uncertain_firing== 25602 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #31946: <==negation-removal== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #32084: <==negation-removal== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #40641: <==uncertain_firing== 21525 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #41675: <==negation-removal== 59425 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #48209: <==negation-removal== 25602 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #49038: <==uncertain_firing== 85425 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #67777: <==uncertain_firing== 69822 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #68250: <==uncertain_firing== 59425 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #74346: <==uncertain_firing== 55018 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #90420: <==uncertain_firing== 45153 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #91362: <==negation-removal== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #13951: <==closure== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #29216: <==closure== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #29960: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #48168: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #53493: <==closure== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #76033: <==closure== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #87207: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #90533: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14186: <==negation-removal== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #19428: <==negation-removal== 13951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #30642: <==negation-removal== 76033 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #38053: <==uncertain_firing== 13951 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #40950: <==uncertain_firing== 53493 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49661: <==uncertain_firing== 29960 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #49748: <==uncertain_firing== 48168 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #51845: <==uncertain_firing== 76033 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #52655: <==negation-removal== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #62918: <==uncertain_firing== 87207 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #64765: <==negation-removal== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #67033: <==negation-removal== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #72484: <==uncertain_firing== 29216 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #83864: <==negation-removal== 29216 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #90931: <==negation-removal== 53493 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #91676: <==uncertain_firing== 90533 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #26454: <==closure== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #28891: <==closure== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #32011: <==closure== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #41412: <==closure== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #60295: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #72484: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #76975: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #84573: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #12395: <==uncertain_firing== 72484 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #17066: <==negation-removal== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #22578: <==negation-removal== 32011 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #23918: <==uncertain_firing== 41412 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #26620: <==negation-removal== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #27103: <==uncertain_firing== 28891 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #32638: <==uncertain_firing== 84573 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #41714: <==uncertain_firing== 26454 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #42205: <==negation-removal== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #56724: <==negation-removal== 26454 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #57945: <==negation-removal== 28891 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #60623: <==uncertain_firing== 76975 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #61623: <==uncertain_firing== 32011 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #62270: <==negation-removal== 41412 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #63334: <==uncertain_firing== 60295 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #87697: <==negation-removal== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #13249: <==closure== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24797: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #30778: <==closure== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #31988: <==closure== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #32260: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48267: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #57197: <==closure== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #83823: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #33058: <==uncertain_firing== 57197 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #33216: <==uncertain_firing== 48267 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #34839: <==negation-removal== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #35368: <==uncertain_firing== 13249 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #61214: <==negation-removal== 30778 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #66369: <==uncertain_firing== 83823 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #66375: <==negation-removal== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #68373: <==negation-removal== 31988 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #72921: <==negation-removal== 13249 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #78618: <==uncertain_firing== 32260 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #81050: <==negation-removal== 57197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #84644: <==uncertain_firing== 24797 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #88250: <==uncertain_firing== 31988 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #88254: <==negation-removal== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #89511: <==negation-removal== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #91008: <==uncertain_firing== 30778 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a)
                           (at_d_l1))
        :effect (and
                    ; #13709: <==closure== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #15466: <==closure== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #15487: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #24579: <==closure== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #31189: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #41243: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #69951: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #70610: <==closure== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #13425: <==negation-removal== 13709 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #15695: <==uncertain_firing== 70610 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Ba_secret_a)))

                    ; #19337: <==uncertain_firing== 41243 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #26253: <==negation-removal== 31189 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #27367: <==negation-removal== 69951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #30612: <==uncertain_firing== 15487 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (not_at_a_l1))
                               (not (Ba_secret_a))))
                          (not (Pa_secret_a)))

                    ; #44680: <==uncertain_firing== 13709 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #54757: <==uncertain_firing== 31189 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #67701: <==uncertain_firing== 69951 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #71145: <==negation-removal== 15466 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #74011: <==negation-removal== 70610 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #76702: <==uncertain_firing== 24579 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #78813: <==negation-removal== 41243 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #88079: <==uncertain_firing== 15466 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #91015: <==negation-removal== 15487 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #92019: <==negation-removal== 24579 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #12644: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #19497: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #20886: <==closure== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #54700: <==closure== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #65604: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71958: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #75703: <==closure== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #81231: <==closure== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #12303: <==uncertain_firing== 19497 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_a)))

                    ; #13127: <==negation-removal== 75703 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #16437: <==negation-removal== 71958 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #16520: <==negation-removal== 20886 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #18801: <==uncertain_firing== 75703 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #19158: <==uncertain_firing== 54700 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #21676: <==negation-removal== 65604 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #22583: <==uncertain_firing== 81231 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_a)))

                    ; #29612: <==uncertain_firing== 12644 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #35520: <==uncertain_firing== 65604 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49089: <==negation-removal== 54700 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #50462: <==uncertain_firing== 20886 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #66172: <==negation-removal== 12644 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #70636: <==uncertain_firing== 71958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #70720: <==negation-removal== 19497 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #80257: <==negation-removal== 81231 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a)
                           (at_d_l3))
        :effect (and
                    ; #13081: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Ba_not_secret_a))

                    ; #14100: <==closure== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #34525: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40695: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #67535: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #67795: <==closure== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (Pa_not_secret_a))

                    ; #74025: <==closure== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #96837: <==closure== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #14099: <==negation-removal== 34525 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #14354: <==negation-removal== 67535 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #15225: <==uncertain_firing== 40695 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #16577: <==uncertain_firing== 74025 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #25808: <==uncertain_firing== 96837 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_a)))

                    ; #31373: <==negation-removal== 74025 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #40158: <==negation-removal== 40695 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #48553: <==uncertain_firing== 14100 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (Bb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #55387: <==negation-removal== 67795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Ba_secret_a)))

                    ; #60851: <==uncertain_firing== 67795 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #68942: <==negation-removal== 13081 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l3)))
                          (not (Pa_secret_a)))

                    ; #69859: <==negation-removal== 96837 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #72459: <==uncertain_firing== 34525 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #73325: <==uncertain_firing== 13081 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #80609: <==uncertain_firing== 67535 (pos)
                    (when (and (and (not (Bd_secret_a))
                               (not (Pd_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_a)))

                    ; #86054: <==negation-removal== 14100 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (Bd_secret_b)
                           (initialized)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #11698: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #13618: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #42566: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Ba_not_secret_b))

                    ; #48472: <==closure== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #54876: <==closure== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #76772: <==closure== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #77815: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #91387: <==closure== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11786: <==negation-removal== 91387 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #13700: <==uncertain_firing== 91387 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #21667: <==uncertain_firing== 76772 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #28825: <==uncertain_firing== 13618 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #40316: <==uncertain_firing== 54876 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #40914: <==negation-removal== 76772 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Ba_secret_b)))

                    ; #51378: <==uncertain_firing== 77815 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #55384: <==negation-removal== 48472 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #58408: <==negation-removal== 13618 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #60391: <==negation-removal== 42566 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #67485: <==negation-removal== 54876 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #70927: <==uncertain_firing== 11698 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #74723: <==negation-removal== 11698 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #82806: <==uncertain_firing== 42566 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #84540: <==negation-removal== 77815 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #99995: <==uncertain_firing== 48472 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (Bd_secret_b)
                           (initialized)
                           (at_d_l2)
                           (Pd_secret_b))
        :effect (and
                    ; #15144: <==closure== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19083: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #20137: <==closure== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #34676: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #38243: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #50339: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #52588: <==closure== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #87875: <==closure== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #11006: <==uncertain_firing== 20137 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #12938: <==negation-removal== 20137 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #28496: <==negation-removal== 15144 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #32077: <==uncertain_firing== 50339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #39720: <==negation-removal== 87875 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #43778: <==uncertain_firing== 87875 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #50468: <==negation-removal== 34676 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #55432: <==negation-removal== 50339 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #58164: <==negation-removal== 52588 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #71085: <==uncertain_firing== 34676 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #71382: <==uncertain_firing== 38243 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #82444: <==uncertain_firing== 19083 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #82989: <==uncertain_firing== 15144 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_b))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #88435: <==negation-removal== 38243 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #90911: <==negation-removal== 19083 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #92217: <==uncertain_firing== 52588 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (Bd_secret_b)
                           (initialized)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #12310: origin
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Ba_not_secret_b))

                    ; #21287: <==closure== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #21635: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #44329: <==closure== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (Pa_not_secret_b))

                    ; #44612: <==closure== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #89278: <==closure== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #95578: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #96604: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #12163: <==uncertain_firing== 12310 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #22803: <==negation-removal== 95578 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #26926: <==negation-removal== 96604 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #33905: <==negation-removal== 21635 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #47225: <==negation-removal== 44329 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Ba_secret_b)))

                    ; #50349: <==negation-removal== 21287 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #61235: <==negation-removal== 44612 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #63327: <==negation-removal== 12310 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l3)))
                          (not (Pa_secret_b)))

                    ; #65636: <==uncertain_firing== 44329 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #68987: <==uncertain_firing== 44612 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #75370: <==uncertain_firing== 21635 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #79506: <==negation-removal== 89278 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #83204: <==uncertain_firing== 21287 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #83851: <==uncertain_firing== 96604 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #86011: <==uncertain_firing== 89278 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #89663: <==uncertain_firing== 95578 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_secret_b))))
                          (not (Pb_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l1)
                           (Pd_secret_c))
        :effect (and
                    ; #11415: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #13892: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #26837: <==closure== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #42501: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #43949: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Bb_not_secret_c))

                    ; #45313: <==closure== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #75689: <==closure== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #91677: <==closure== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (Pb_not_secret_c))

                    ; #11394: <==negation-removal== 13892 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25596: <==negation-removal== 42501 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #33980: <==negation-removal== 11415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #34881: <==negation-removal== 45313 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #51757: <==uncertain_firing== 13892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #56910: <==negation-removal== 91677 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Bb_secret_c)))

                    ; #59624: <==uncertain_firing== 91677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #60025: <==uncertain_firing== 11415 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #60280: <==uncertain_firing== 42501 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #60476: <==uncertain_firing== 75689 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #67176: <==negation-removal== 75689 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70405: <==uncertain_firing== 43949 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_c))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #73880: <==uncertain_firing== 26837 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #74098: <==negation-removal== 26837 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #77770: <==uncertain_firing== 45313 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #89940: <==negation-removal== 43949 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_c)))
                          (not (Pb_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #16317: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Ba_not_secret_c))

                    ; #16407: <==closure== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #24061: <==closure== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #64411: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Bc_not_secret_c))

                    ; #66727: <==closure== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (Pc_not_secret_c))

                    ; #76937: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #85884: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #86708: <==closure== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (Pa_not_secret_c))

                    ; #10578: <==negation-removal== 66727 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Bc_secret_c)))

                    ; #18549: <==negation-removal== 16407 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #20537: <==uncertain_firing== 16317 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #27598: <==uncertain_firing== 24061 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_c)))

                    ; #34356: <==uncertain_firing== 66727 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_c)))

                    ; #38348: <==negation-removal== 86708 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Ba_secret_c)))

                    ; #38388: <==uncertain_firing== 64411 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_c)))

                    ; #47329: <==uncertain_firing== 86708 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (not_at_a_l2))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #51598: <==negation-removal== 64411 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l2)))
                          (not (Pc_secret_c)))

                    ; #60423: <==uncertain_firing== 85884 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #61002: <==negation-removal== 76937 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #66183: <==uncertain_firing== 76937 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_c)))

                    ; #68075: <==negation-removal== 24061 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #73409: <==negation-removal== 85884 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #77558: <==uncertain_firing== 16407 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (not_at_b_l2))
                               (not (Pb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #87029: <==negation-removal== 16317 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l2)))
                          (not (Pa_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l3)
                           (Pd_secret_c))
        :effect (and
                    ; #21525: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #25602: <==closure== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #36520: <==closure== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #45153: <==closure== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #55018: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #59425: <==closure== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #69822: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #85425: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #15198: <==uncertain_firing== 36520 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #16239: <==negation-removal== 55018 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #16327: <==negation-removal== 45153 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #26701: <==negation-removal== 36520 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #29851: <==uncertain_firing== 25602 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #31946: <==negation-removal== 85425 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #32084: <==negation-removal== 21525 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #40641: <==uncertain_firing== 21525 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #41675: <==negation-removal== 59425 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))

                    ; #48209: <==negation-removal== 25602 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))

                    ; #49038: <==uncertain_firing== 85425 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #67777: <==uncertain_firing== 69822 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_c)))

                    ; #68250: <==uncertain_firing== 59425 (pos)
                    (when (and (and (not (Bd_secret_c))
                               (not (Pd_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_c)))

                    ; #74346: <==uncertain_firing== 55018 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #90420: <==uncertain_firing== 45153 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #91362: <==negation-removal== 69822 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #13951: <==closure== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #29216: <==closure== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #29960: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #48168: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #53493: <==closure== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #76033: <==closure== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #87207: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #90533: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #14186: <==negation-removal== 87207 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #19428: <==negation-removal== 13951 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #30642: <==negation-removal== 76033 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #38053: <==uncertain_firing== 13951 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #40950: <==uncertain_firing== 53493 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #49661: <==uncertain_firing== 29960 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #49748: <==uncertain_firing== 48168 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #51845: <==uncertain_firing== 76033 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #52655: <==negation-removal== 48168 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #62918: <==uncertain_firing== 87207 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #64765: <==negation-removal== 29960 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #67033: <==negation-removal== 90533 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #72484: <==uncertain_firing== 29216 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #83864: <==negation-removal== 29216 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #90931: <==negation-removal== 53493 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #91676: <==uncertain_firing== 90533 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d)
                           (at_d_l2))
        :effect (and
                    ; #26454: <==closure== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Pa_not_secret_d))

                    ; #28891: <==closure== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #32011: <==closure== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #41412: <==closure== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #60295: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #72484: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (Ba_not_secret_d))

                    ; #76975: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #84573: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #12395: <==uncertain_firing== 72484 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))

                    ; #17066: <==negation-removal== 60295 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #22578: <==negation-removal== 32011 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #23918: <==uncertain_firing== 41412 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #26620: <==negation-removal== 76975 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #27103: <==uncertain_firing== 28891 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #32638: <==uncertain_firing== 84573 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #41714: <==uncertain_firing== 26454 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #42205: <==negation-removal== 72484 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Pa_secret_d)))

                    ; #56724: <==negation-removal== 26454 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l2)))
                          (not (Ba_secret_d)))

                    ; #57945: <==negation-removal== 28891 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #60623: <==uncertain_firing== 76975 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #61623: <==uncertain_firing== 32011 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #62270: <==negation-removal== 41412 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #63334: <==uncertain_firing== 60295 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #87697: <==negation-removal== 84573 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d)
                           (at_d_l3))
        :effect (and
                    ; #13249: <==closure== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #24797: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #30778: <==closure== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Pa_not_secret_d))

                    ; #31988: <==closure== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #32260: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #48267: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #57197: <==closure== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #83823: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (Ba_not_secret_d))

                    ; #33058: <==uncertain_firing== 57197 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_d)))

                    ; #33216: <==uncertain_firing== 48267 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #34839: <==negation-removal== 83823 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Pa_secret_d)))

                    ; #35368: <==uncertain_firing== 13249 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #61214: <==negation-removal== 30778 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l3)))
                          (not (Ba_secret_d)))

                    ; #66369: <==uncertain_firing== 83823 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #66375: <==negation-removal== 32260 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #68373: <==negation-removal== 31988 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #72921: <==negation-removal== 13249 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #78618: <==uncertain_firing== 32260 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #81050: <==negation-removal== 57197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #84644: <==uncertain_firing== 24797 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (Pb_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_d)))

                    ; #88250: <==uncertain_firing== 31988 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #88254: <==negation-removal== 24797 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #89511: <==negation-removal== 48267 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #91008: <==uncertain_firing== 30778 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #22698: <==closure== 51731 (pos)
                    (Pd_secret_d)

                    ; #45171: origin
                    (Bb_secret_b)

                    ; #51731: origin
                    (Bd_secret_d)

                    ; #66823: <==closure== 68297 (pos)
                    (Pa_secret_a)

                    ; #68297: origin
                    (Ba_secret_a)

                    ; #78999: origin
                    (Bc_secret_c)

                    ; #81168: origin
                    (initialized)

                    ; #83935: <==closure== 45171 (pos)
                    (Pb_secret_b)

                    ; #86629: <==closure== 78999 (pos)
                    (Pc_secret_c)

                    ; #12700: <==negation-removal== 81168 (pos)
                    (not (not_initialized))

                    ; #16154: <==negation-removal== 45171 (pos)
                    (not (Pb_not_secret_b))

                    ; #29531: <==negation-removal== 83935 (pos)
                    (not (Bb_not_secret_b))

                    ; #34892: <==negation-removal== 22698 (pos)
                    (not (Bd_not_secret_d))

                    ; #51543: <==negation-removal== 51731 (pos)
                    (not (Pd_not_secret_d))

                    ; #59046: <==negation-removal== 66823 (pos)
                    (not (Ba_not_secret_a))

                    ; #65405: <==negation-removal== 78999 (pos)
                    (not (Pc_not_secret_c))

                    ; #69540: <==negation-removal== 86629 (pos)
                    (not (Bc_not_secret_c))

                    ; #89855: <==negation-removal== 68297 (pos)
                    (not (Pa_not_secret_a))))

    (:action move_a_l1_l1
        :precondition (and (connected_l1_l1)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #71875: origin
                    (not_at_a_l1)

                    ; #79166: origin
                    (at_a_l1)

                    ; #71875: <==negation-removal== 79166 (pos)
                    (not (not_at_a_l1))

                    ; #79166: <==negation-removal== 71875 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #53792: origin
                    (at_a_l2)

                    ; #71875: origin
                    (not_at_a_l1)

                    ; #60782: <==negation-removal== 53792 (pos)
                    (not (not_at_a_l2))

                    ; #79166: <==negation-removal== 71875 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_a_l1))
        :effect (and
                    ; #29538: origin
                    (at_a_l3)

                    ; #71875: origin
                    (not_at_a_l1)

                    ; #61855: <==negation-removal== 29538 (pos)
                    (not (not_at_a_l3))

                    ; #79166: <==negation-removal== 71875 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #60782: origin
                    (not_at_a_l2)

                    ; #79166: origin
                    (at_a_l1)

                    ; #53792: <==negation-removal== 60782 (pos)
                    (not (at_a_l2))

                    ; #71875: <==negation-removal== 79166 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (connected_l2_l2)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #53792: origin
                    (at_a_l2)

                    ; #60782: origin
                    (not_at_a_l2)

                    ; #53792: <==negation-removal== 60782 (pos)
                    (not (at_a_l2))

                    ; #60782: <==negation-removal== 53792 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #29538: origin
                    (at_a_l3)

                    ; #60782: origin
                    (not_at_a_l2)

                    ; #53792: <==negation-removal== 60782 (pos)
                    (not (at_a_l2))

                    ; #61855: <==negation-removal== 29538 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l3_l1
        :precondition (and (initialized)
                           (connected_l3_l1)
                           (at_a_l3))
        :effect (and
                    ; #61855: origin
                    (not_at_a_l3)

                    ; #79166: origin
                    (at_a_l1)

                    ; #29538: <==negation-removal== 61855 (pos)
                    (not (at_a_l3))

                    ; #71875: <==negation-removal== 79166 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l3_l2
        :precondition (and (connected_l3_l2)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #53792: origin
                    (at_a_l2)

                    ; #61855: origin
                    (not_at_a_l3)

                    ; #29538: <==negation-removal== 61855 (pos)
                    (not (at_a_l3))

                    ; #60782: <==negation-removal== 53792 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (connected_l3_l3)
                           (initialized)
                           (at_a_l3))
        :effect (and
                    ; #29538: origin
                    (at_a_l3)

                    ; #61855: origin
                    (not_at_a_l3)

                    ; #29538: <==negation-removal== 61855 (pos)
                    (not (at_a_l3))

                    ; #61855: <==negation-removal== 29538 (pos)
                    (not (not_at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1)
                           (initialized))
        :effect (and
                    ; #74558: origin
                    (not_at_b_l1)

                    ; #74677: origin
                    (at_b_l1)

                    ; #74558: <==negation-removal== 74677 (pos)
                    (not (not_at_b_l1))

                    ; #74677: <==negation-removal== 74558 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (at_b_l1)
                           (initialized)
                           (connected_l1_l2))
        :effect (and
                    ; #62316: origin
                    (at_b_l2)

                    ; #74558: origin
                    (not_at_b_l1)

                    ; #41704: <==negation-removal== 62316 (pos)
                    (not (not_at_b_l2))

                    ; #74677: <==negation-removal== 74558 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (at_b_l1)
                           (initialized)
                           (connected_l1_l3))
        :effect (and
                    ; #64081: origin
                    (at_b_l3)

                    ; #74558: origin
                    (not_at_b_l1)

                    ; #69532: <==negation-removal== 64081 (pos)
                    (not (not_at_b_l3))

                    ; #74677: <==negation-removal== 74558 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #41704: origin
                    (not_at_b_l2)

                    ; #74677: origin
                    (at_b_l1)

                    ; #62316: <==negation-removal== 41704 (pos)
                    (not (at_b_l2))

                    ; #74558: <==negation-removal== 74677 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (initialized)
                           (at_b_l2))
        :effect (and
                    ; #41704: origin
                    (not_at_b_l2)

                    ; #62316: origin
                    (at_b_l2)

                    ; #41704: <==negation-removal== 62316 (pos)
                    (not (not_at_b_l2))

                    ; #62316: <==negation-removal== 41704 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_b_l2))
        :effect (and
                    ; #41704: origin
                    (not_at_b_l2)

                    ; #64081: origin
                    (at_b_l3)

                    ; #62316: <==negation-removal== 41704 (pos)
                    (not (at_b_l2))

                    ; #69532: <==negation-removal== 64081 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l3_l1
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #69532: origin
                    (not_at_b_l3)

                    ; #74677: origin
                    (at_b_l1)

                    ; #64081: <==negation-removal== 69532 (pos)
                    (not (at_b_l3))

                    ; #74558: <==negation-removal== 74677 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l3_l2
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #62316: origin
                    (at_b_l2)

                    ; #69532: origin
                    (not_at_b_l3)

                    ; #41704: <==negation-removal== 62316 (pos)
                    (not (not_at_b_l2))

                    ; #64081: <==negation-removal== 69532 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l3
        :precondition (and (connected_l3_l3)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #64081: origin
                    (at_b_l3)

                    ; #69532: origin
                    (not_at_b_l3)

                    ; #64081: <==negation-removal== 69532 (pos)
                    (not (at_b_l3))

                    ; #69532: <==negation-removal== 64081 (pos)
                    (not (not_at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1)
                           (initialized))
        :effect (and
                    ; #17723: origin
                    (at_c_l1)

                    ; #86702: origin
                    (not_at_c_l1)

                    ; #17723: <==negation-removal== 86702 (pos)
                    (not (at_c_l1))

                    ; #86702: <==negation-removal== 17723 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (initialized)
                           (connected_l1_l2))
        :effect (and
                    ; #67527: origin
                    (at_c_l2)

                    ; #86702: origin
                    (not_at_c_l1)

                    ; #17723: <==negation-removal== 86702 (pos)
                    (not (at_c_l1))

                    ; #88541: <==negation-removal== 67527 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l1_l3
        :precondition (and (at_c_l1)
                           (initialized)
                           (connected_l1_l3))
        :effect (and
                    ; #13289: origin
                    (at_c_l3)

                    ; #86702: origin
                    (not_at_c_l1)

                    ; #17723: <==negation-removal== 86702 (pos)
                    (not (at_c_l1))

                    ; #66344: <==negation-removal== 13289 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l2_l1
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #17723: origin
                    (at_c_l1)

                    ; #88541: origin
                    (not_at_c_l2)

                    ; #67527: <==negation-removal== 88541 (pos)
                    (not (at_c_l2))

                    ; #86702: <==negation-removal== 17723 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (initialized)
                           (at_c_l2))
        :effect (and
                    ; #67527: origin
                    (at_c_l2)

                    ; #88541: origin
                    (not_at_c_l2)

                    ; #67527: <==negation-removal== 88541 (pos)
                    (not (at_c_l2))

                    ; #88541: <==negation-removal== 67527 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #13289: origin
                    (at_c_l3)

                    ; #88541: origin
                    (not_at_c_l2)

                    ; #66344: <==negation-removal== 13289 (pos)
                    (not (not_at_c_l3))

                    ; #67527: <==negation-removal== 88541 (pos)
                    (not (at_c_l2))))

    (:action move_c_l3_l1
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #17723: origin
                    (at_c_l1)

                    ; #66344: origin
                    (not_at_c_l3)

                    ; #13289: <==negation-removal== 66344 (pos)
                    (not (at_c_l3))

                    ; #86702: <==negation-removal== 17723 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l3_l2
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #66344: origin
                    (not_at_c_l3)

                    ; #67527: origin
                    (at_c_l2)

                    ; #13289: <==negation-removal== 66344 (pos)
                    (not (at_c_l3))

                    ; #88541: <==negation-removal== 67527 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l3_l3
        :precondition (and (connected_l3_l3)
                           (initialized)
                           (at_c_l3))
        :effect (and
                    ; #13289: origin
                    (at_c_l3)

                    ; #66344: origin
                    (not_at_c_l3)

                    ; #13289: <==negation-removal== 66344 (pos)
                    (not (at_c_l3))

                    ; #66344: <==negation-removal== 13289 (pos)
                    (not (not_at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #59588: origin
                    (not_at_d_l1)

                    ; #76054: origin
                    (at_d_l1)

                    ; #59588: <==negation-removal== 76054 (pos)
                    (not (not_at_d_l1))

                    ; #76054: <==negation-removal== 59588 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (initialized)
                           (at_d_l1))
        :effect (and
                    ; #46225: origin
                    (at_d_l2)

                    ; #59588: origin
                    (not_at_d_l1)

                    ; #29469: <==negation-removal== 46225 (pos)
                    (not (not_at_d_l2))

                    ; #76054: <==negation-removal== 59588 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_d_l1))
        :effect (and
                    ; #59588: origin
                    (not_at_d_l1)

                    ; #68521: origin
                    (at_d_l3)

                    ; #37561: <==negation-removal== 68521 (pos)
                    (not (not_at_d_l3))

                    ; #76054: <==negation-removal== 59588 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #29469: origin
                    (not_at_d_l2)

                    ; #76054: origin
                    (at_d_l1)

                    ; #46225: <==negation-removal== 29469 (pos)
                    (not (at_d_l2))

                    ; #59588: <==negation-removal== 76054 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (connected_l2_l2)
                           (initialized)
                           (at_d_l2))
        :effect (and
                    ; #29469: origin
                    (not_at_d_l2)

                    ; #46225: origin
                    (at_d_l2)

                    ; #29469: <==negation-removal== 46225 (pos)
                    (not (not_at_d_l2))

                    ; #46225: <==negation-removal== 29469 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_d_l2))
        :effect (and
                    ; #29469: origin
                    (not_at_d_l2)

                    ; #68521: origin
                    (at_d_l3)

                    ; #37561: <==negation-removal== 68521 (pos)
                    (not (not_at_d_l3))

                    ; #46225: <==negation-removal== 29469 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #37561: origin
                    (not_at_d_l3)

                    ; #76054: origin
                    (at_d_l1)

                    ; #59588: <==negation-removal== 76054 (pos)
                    (not (not_at_d_l1))

                    ; #68521: <==negation-removal== 37561 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l2
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #37561: origin
                    (not_at_d_l3)

                    ; #46225: origin
                    (at_d_l2)

                    ; #29469: <==negation-removal== 46225 (pos)
                    (not (not_at_d_l2))

                    ; #68521: <==negation-removal== 37561 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l3
        :precondition (and (connected_l3_l3)
                           (initialized)
                           (at_d_l3))
        :effect (and
                    ; #37561: origin
                    (not_at_d_l3)

                    ; #68521: origin
                    (at_d_l3)

                    ; #37561: <==negation-removal== 68521 (pos)
                    (not (not_at_d_l3))

                    ; #68521: <==negation-removal== 37561 (pos)
                    (not (at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (Pa_secret_a)
                           (initialized)
                           (Ba_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #21545: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #24706: <==closure== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #31098: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #43870: <==closure== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #63871: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #73819: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #80853: <==closure== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #84451: <==closure== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #21786: <==uncertain_firing== 80853 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #23231: <==uncertain_firing== 84451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #27971: <==uncertain_firing== 21545 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #32289: <==negation-removal== 84451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #33005: <==negation-removal== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #39469: <==negation-removal== 24706 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45620: <==negation-removal== 43870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58659: <==negation-removal== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #59455: <==negation-removal== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #69169: <==uncertain_firing== 43870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #72673: <==uncertain_firing== 63871 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75342: <==uncertain_firing== 31098 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #79988: <==uncertain_firing== 24706 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #80161: <==negation-removal== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #80285: <==negation-removal== 80853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #89494: <==uncertain_firing== 73819 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Pa_secret_a)
                           (initialized)
                           (at_a_l2)
                           (Ba_secret_a))
        :effect (and
                    ; #11451: <==closure== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #19038: <==closure== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #24325: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #37112: <==closure== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #77077: <==closure== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #79107: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #80480: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #89725: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #10286: <==uncertain_firing== 79107 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #15268: <==uncertain_firing== 24325 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #33460: <==negation-removal== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #34232: <==uncertain_firing== 37112 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #35115: <==uncertain_firing== 77077 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38496: <==uncertain_firing== 11451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #39865: <==uncertain_firing== 89725 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #46654: <==uncertain_firing== 80480 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #48735: <==negation-removal== 19038 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52435: <==negation-removal== 37112 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57993: <==negation-removal== 77077 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #62903: <==negation-removal== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #65185: <==uncertain_firing== 19038 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #68336: <==negation-removal== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #89733: <==negation-removal== 11451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #97023: <==negation-removal== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #10659: <==closure== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #10914: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #24635: <==closure== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #37477: <==closure== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #45270: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #57294: <==closure== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #62557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #65034: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #11601: <==negation-removal== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #26722: <==uncertain_firing== 62557 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #26948: <==uncertain_firing== 10659 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #32040: <==uncertain_firing== 37477 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #38478: <==negation-removal== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #38728: <==negation-removal== 57294 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #43242: <==negation-removal== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #44449: <==uncertain_firing== 57294 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #44570: <==negation-removal== 24635 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #55929: <==negation-removal== 10659 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #56424: <==negation-removal== 37477 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #67753: <==uncertain_firing== 10914 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #71550: <==uncertain_firing== 65034 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #75373: <==uncertain_firing== 45270 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78280: <==uncertain_firing== 24635 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #87178: <==negation-removal== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #17622: <==closure== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #31083: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #32583: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46135: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #48415: <==closure== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #81428: <==closure== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #86890: <==closure== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89117: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #11618: <==negation-removal== 48415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #17699: <==uncertain_firing== 81428 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #23876: <==negation-removal== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25818: <==negation-removal== 17622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #28365: <==uncertain_firing== 86890 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #28971: <==uncertain_firing== 31083 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29808: <==uncertain_firing== 89117 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #34384: <==uncertain_firing== 32583 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49330: <==negation-removal== 86890 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49846: <==uncertain_firing== 46135 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56043: <==uncertain_firing== 48415 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #58214: <==uncertain_firing== 17622 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #63246: <==negation-removal== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #82971: <==negation-removal== 81428 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83131: <==negation-removal== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #91796: <==negation-removal== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #15899: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21024: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #37534: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #43912: <==closure== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #61120: <==closure== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #65970: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #77483: <==closure== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #81673: <==closure== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #11670: <==uncertain_firing== 15899 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #13136: <==uncertain_firing== 43912 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #13951: <==negation-removal== 77483 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20300: <==negation-removal== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25903: <==uncertain_firing== 81673 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #34532: <==negation-removal== 43912 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #46289: <==uncertain_firing== 61120 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #50387: <==negation-removal== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #58862: <==uncertain_firing== 65970 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #65281: <==uncertain_firing== 37534 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #65735: <==negation-removal== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #73505: <==negation-removal== 81673 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #75088: <==negation-removal== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82193: <==uncertain_firing== 77483 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #90262: <==negation-removal== 61120 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #90864: <==uncertain_firing== 21024 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #19596: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #21521: <==closure== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #26020: <==closure== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26609: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #37654: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44955: <==closure== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #88825: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #91580: <==closure== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #15314: <==negation-removal== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #16135: <==uncertain_firing== 26609 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #37544: <==uncertain_firing== 19596 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #39037: <==uncertain_firing== 21521 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #39402: <==uncertain_firing== 44955 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #42649: <==negation-removal== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #45130: <==negation-removal== 26020 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #45725: <==uncertain_firing== 88825 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #52095: <==uncertain_firing== 26020 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #64895: <==uncertain_firing== 37654 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #65172: <==negation-removal== 91580 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #72190: <==negation-removal== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #73522: <==negation-removal== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #76674: <==negation-removal== 21521 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #81077: <==negation-removal== 44955 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #83688: <==uncertain_firing== 91580 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (initialized)
                           (Pa_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #17714: <==closure== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #18616: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #22653: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #22697: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #32272: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #67079: <==closure== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #73079: <==closure== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #81260: <==closure== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19712: <==negation-removal== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #34099: <==uncertain_firing== 73079 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #34935: <==uncertain_firing== 22697 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #37644: <==negation-removal== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #39977: <==uncertain_firing== 22653 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #48746: <==negation-removal== 73079 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50185: <==negation-removal== 67079 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #54673: <==negation-removal== 17714 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #54976: <==uncertain_firing== 32272 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #56960: <==uncertain_firing== 67079 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #60797: <==negation-removal== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #69101: <==uncertain_firing== 17714 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #74781: <==uncertain_firing== 18616 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #76791: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79123: <==negation-removal== 81260 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88905: <==negation-removal== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #23206: <==closure== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #23339: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #35537: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #38154: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #55691: <==closure== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #60187: <==closure== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #62706: <==closure== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #67298: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #13699: <==uncertain_firing== 62706 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_c)))

                    ; #14392: <==negation-removal== 60187 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #22455: <==negation-removal== 62706 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #23611: <==negation-removal== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #29828: <==uncertain_firing== 23339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #31757: <==uncertain_firing== 67298 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))

                    ; #44986: <==negation-removal== 55691 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #49029: <==uncertain_firing== 60187 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #58877: <==negation-removal== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #62866: <==negation-removal== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #67063: <==uncertain_firing== 55691 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #72800: <==uncertain_firing== 23206 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #74987: <==negation-removal== 23206 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #85488: <==uncertain_firing== 38154 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_c)))

                    ; #85862: <==negation-removal== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #90696: <==uncertain_firing== 35537 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (initialized)
                           (Pa_secret_c)
                           (at_a_l3)
                           (Ba_secret_c))
        :effect (and
                    ; #16447: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #29183: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #35110: <==closure== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #53412: <==closure== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #61461: <==closure== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #62523: <==closure== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #68778: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #74691: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #14960: <==uncertain_firing== 74691 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #16357: <==uncertain_firing== 35110 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #20238: <==negation-removal== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))

                    ; #20953: <==uncertain_firing== 62523 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #22768: <==negation-removal== 35110 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #27251: <==negation-removal== 62523 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #31629: <==uncertain_firing== 29183 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #41387: <==negation-removal== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #46101: <==negation-removal== 61461 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #47506: <==negation-removal== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #57262: <==negation-removal== 53412 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #59777: <==uncertain_firing== 16447 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #65331: <==uncertain_firing== 61461 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #71429: <==uncertain_firing== 68778 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #77988: <==uncertain_firing== 53412 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #89307: <==negation-removal== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #17648: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #27410: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #29152: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #59239: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #63564: <==closure== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #65413: <==closure== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71720: <==closure== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #82842: <==closure== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #10489: <==uncertain_firing== 63564 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #33351: <==negation-removal== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34780: <==uncertain_firing== 82842 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #34829: <==uncertain_firing== 71720 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #41017: <==negation-removal== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #43584: <==negation-removal== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #47672: <==uncertain_firing== 65413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #51515: <==negation-removal== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #53812: <==uncertain_firing== 59239 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56405: <==negation-removal== 65413 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #60586: <==negation-removal== 82842 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #61765: <==uncertain_firing== 27410 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #69208: <==negation-removal== 71720 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #69671: <==uncertain_firing== 17648 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #84385: <==negation-removal== 63564 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #91680: <==uncertain_firing== 29152 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #30752: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #44050: <==closure== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #49392: <==closure== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #54170: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #63167: <==closure== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #65027: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79635: <==closure== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #87735: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #18869: <==uncertain_firing== 49392 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #33857: <==uncertain_firing== 54170 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #39651: <==uncertain_firing== 44050 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #42249: <==uncertain_firing== 65027 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #45442: <==negation-removal== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #49519: <==negation-removal== 49392 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #50144: <==uncertain_firing== 63167 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #51380: <==uncertain_firing== 87735 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #55771: <==uncertain_firing== 79635 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #62216: <==negation-removal== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #63820: <==negation-removal== 79635 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #68234: <==negation-removal== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #78874: <==uncertain_firing== 30752 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80947: <==negation-removal== 44050 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #83419: <==negation-removal== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #89876: <==negation-removal== 63167 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (initialized)
                           (Ba_secret_d)
                           (at_a_l3)
                           (Pa_secret_d))
        :effect (and
                    ; #25842: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #47765: <==closure== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #50979: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #73462: <==closure== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #76140: <==closure== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #79360: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #80300: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #90048: <==closure== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #10510: <==uncertain_firing== 90048 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #14284: <==negation-removal== 47765 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #14692: <==uncertain_firing== 25842 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #20366: <==uncertain_firing== 50979 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #23491: <==uncertain_firing== 73462 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #26629: <==negation-removal== 76140 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #27567: <==negation-removal== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #32521: <==uncertain_firing== 79360 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #33262: <==negation-removal== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #40840: <==negation-removal== 90048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #44941: <==uncertain_firing== 47765 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #62953: <==uncertain_firing== 76140 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #69139: <==negation-removal== 73462 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #72758: <==negation-removal== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #76834: <==uncertain_firing== 80300 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #81744: <==negation-removal== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (initialized)
                           (Pb_secret_a)
                           (Bb_secret_a))
        :effect (and
                    ; #21545: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #24706: <==closure== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #31098: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #43870: <==closure== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #63871: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #73819: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #80853: <==closure== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #84451: <==closure== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #21786: <==uncertain_firing== 80853 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #23231: <==uncertain_firing== 84451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #27971: <==uncertain_firing== 21545 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #32289: <==negation-removal== 84451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #33005: <==negation-removal== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #39469: <==negation-removal== 24706 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45620: <==negation-removal== 43870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58659: <==negation-removal== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #59455: <==negation-removal== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #69169: <==uncertain_firing== 43870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #72673: <==uncertain_firing== 63871 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75342: <==uncertain_firing== 31098 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #79988: <==uncertain_firing== 24706 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #80161: <==negation-removal== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #80285: <==negation-removal== 80853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #89494: <==uncertain_firing== 73819 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (initialized)
                           (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #11451: <==closure== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #19038: <==closure== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #24325: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #37112: <==closure== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #77077: <==closure== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #79107: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #80480: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #89725: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #10286: <==uncertain_firing== 79107 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #15268: <==uncertain_firing== 24325 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #33460: <==negation-removal== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #34232: <==uncertain_firing== 37112 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #35115: <==uncertain_firing== 77077 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38496: <==uncertain_firing== 11451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #39865: <==uncertain_firing== 89725 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #46654: <==uncertain_firing== 80480 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #48735: <==negation-removal== 19038 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52435: <==negation-removal== 37112 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57993: <==negation-removal== 77077 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #62903: <==negation-removal== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #65185: <==uncertain_firing== 19038 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #68336: <==negation-removal== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #89733: <==negation-removal== 11451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #97023: <==negation-removal== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (initialized)
                           (Pb_secret_a)
                           (at_b_l3)
                           (Bb_secret_a))
        :effect (and
                    ; #10659: <==closure== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #10914: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #24635: <==closure== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #37477: <==closure== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #45270: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #57294: <==closure== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #62557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #65034: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #11601: <==negation-removal== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #26722: <==uncertain_firing== 62557 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #26948: <==uncertain_firing== 10659 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #32040: <==uncertain_firing== 37477 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #38478: <==negation-removal== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #38728: <==negation-removal== 57294 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #43242: <==negation-removal== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #44449: <==uncertain_firing== 57294 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #44570: <==negation-removal== 24635 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #55929: <==negation-removal== 10659 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #56424: <==negation-removal== 37477 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #67753: <==uncertain_firing== 10914 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #71550: <==uncertain_firing== 65034 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #75373: <==uncertain_firing== 45270 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78280: <==uncertain_firing== 24635 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #87178: <==negation-removal== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (at_b_l1)
                           (initialized)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #17622: <==closure== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #31083: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #32583: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46135: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #48415: <==closure== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #81428: <==closure== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #86890: <==closure== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89117: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #11618: <==negation-removal== 48415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #17699: <==uncertain_firing== 81428 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #23876: <==negation-removal== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25818: <==negation-removal== 17622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #28365: <==uncertain_firing== 86890 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #28971: <==uncertain_firing== 31083 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29808: <==uncertain_firing== 89117 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #34384: <==uncertain_firing== 32583 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49330: <==negation-removal== 86890 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49846: <==uncertain_firing== 46135 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56043: <==uncertain_firing== 48415 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #58214: <==uncertain_firing== 17622 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #63246: <==negation-removal== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #82971: <==negation-removal== 81428 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83131: <==negation-removal== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #91796: <==negation-removal== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Bb_secret_b)
                           (initialized)
                           (Pb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #15899: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21024: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #37534: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #43912: <==closure== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #61120: <==closure== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #65970: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #77483: <==closure== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #81673: <==closure== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #11670: <==uncertain_firing== 15899 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #13136: <==uncertain_firing== 43912 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #13951: <==negation-removal== 77483 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20300: <==negation-removal== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25903: <==uncertain_firing== 81673 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #34532: <==negation-removal== 43912 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #46289: <==uncertain_firing== 61120 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #50387: <==negation-removal== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #58862: <==uncertain_firing== 65970 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #65281: <==uncertain_firing== 37534 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #65735: <==negation-removal== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #73505: <==negation-removal== 81673 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #75088: <==negation-removal== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82193: <==uncertain_firing== 77483 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #90262: <==negation-removal== 61120 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #90864: <==uncertain_firing== 21024 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_b)
                           (Bb_secret_b))
        :effect (and
                    ; #19596: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #21521: <==closure== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #26020: <==closure== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26609: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #37654: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44955: <==closure== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #88825: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #91580: <==closure== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #15314: <==negation-removal== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #16135: <==uncertain_firing== 26609 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #37544: <==uncertain_firing== 19596 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #39037: <==uncertain_firing== 21521 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #39402: <==uncertain_firing== 44955 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #42649: <==negation-removal== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #45130: <==negation-removal== 26020 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #45725: <==uncertain_firing== 88825 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #52095: <==uncertain_firing== 26020 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #64895: <==uncertain_firing== 37654 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #65172: <==negation-removal== 91580 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #72190: <==negation-removal== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #73522: <==negation-removal== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #76674: <==negation-removal== 21521 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #81077: <==negation-removal== 44955 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #83688: <==uncertain_firing== 91580 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_c)
                           (Pb_secret_c)
                           (initialized))
        :effect (and
                    ; #17714: <==closure== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #18616: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #22653: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #22697: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #32272: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #67079: <==closure== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #73079: <==closure== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #81260: <==closure== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19712: <==negation-removal== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #34099: <==uncertain_firing== 73079 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #34935: <==uncertain_firing== 22697 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #37644: <==negation-removal== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #39977: <==uncertain_firing== 22653 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #48746: <==negation-removal== 73079 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50185: <==negation-removal== 67079 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #54673: <==negation-removal== 17714 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #54976: <==uncertain_firing== 32272 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #56960: <==uncertain_firing== 67079 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #60797: <==negation-removal== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #69101: <==uncertain_firing== 17714 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #74781: <==uncertain_firing== 18616 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #76791: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79123: <==negation-removal== 81260 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88905: <==negation-removal== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Bb_secret_c)
                           (initialized)
                           (Pb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #23206: <==closure== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #23339: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #35537: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #38154: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #55691: <==closure== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #60187: <==closure== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #62706: <==closure== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #67298: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #13699: <==uncertain_firing== 62706 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_c)))

                    ; #14392: <==negation-removal== 60187 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #22455: <==negation-removal== 62706 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #23611: <==negation-removal== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #29828: <==uncertain_firing== 23339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #31757: <==uncertain_firing== 67298 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))

                    ; #44986: <==negation-removal== 55691 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #49029: <==uncertain_firing== 60187 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #58877: <==negation-removal== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #62866: <==negation-removal== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #67063: <==uncertain_firing== 55691 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #72800: <==uncertain_firing== 23206 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #74987: <==negation-removal== 23206 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #85488: <==uncertain_firing== 38154 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_c)))

                    ; #85862: <==negation-removal== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #90696: <==uncertain_firing== 35537 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (Bb_secret_c)
                           (initialized)
                           (at_b_l3)
                           (Pb_secret_c))
        :effect (and
                    ; #16447: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #29183: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #35110: <==closure== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #53412: <==closure== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #61461: <==closure== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #62523: <==closure== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #68778: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #74691: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #14960: <==uncertain_firing== 74691 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #16357: <==uncertain_firing== 35110 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #20238: <==negation-removal== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))

                    ; #20953: <==uncertain_firing== 62523 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #22768: <==negation-removal== 35110 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #27251: <==negation-removal== 62523 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #31629: <==uncertain_firing== 29183 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #41387: <==negation-removal== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #46101: <==negation-removal== 61461 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #47506: <==negation-removal== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #57262: <==negation-removal== 53412 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #59777: <==uncertain_firing== 16447 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #65331: <==uncertain_firing== 61461 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #71429: <==uncertain_firing== 68778 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #77988: <==uncertain_firing== 53412 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #89307: <==negation-removal== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d)
                           (initialized))
        :effect (and
                    ; #17648: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #27410: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #29152: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #59239: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #63564: <==closure== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #65413: <==closure== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71720: <==closure== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #82842: <==closure== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #10489: <==uncertain_firing== 63564 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #33351: <==negation-removal== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34780: <==uncertain_firing== 82842 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #34829: <==uncertain_firing== 71720 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #41017: <==negation-removal== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #43584: <==negation-removal== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #47672: <==uncertain_firing== 65413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #51515: <==negation-removal== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #53812: <==uncertain_firing== 59239 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56405: <==negation-removal== 65413 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #60586: <==negation-removal== 82842 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #61765: <==uncertain_firing== 27410 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #69208: <==negation-removal== 71720 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #69671: <==uncertain_firing== 17648 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #84385: <==negation-removal== 63564 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #91680: <==uncertain_firing== 29152 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Bb_secret_d)
                           (Pb_secret_d)
                           (initialized)
                           (at_b_l2))
        :effect (and
                    ; #30752: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #44050: <==closure== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #49392: <==closure== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #54170: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #63167: <==closure== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #65027: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79635: <==closure== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #87735: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #18869: <==uncertain_firing== 49392 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #33857: <==uncertain_firing== 54170 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #39651: <==uncertain_firing== 44050 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #42249: <==uncertain_firing== 65027 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #45442: <==negation-removal== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #49519: <==negation-removal== 49392 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #50144: <==uncertain_firing== 63167 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #51380: <==uncertain_firing== 87735 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #55771: <==uncertain_firing== 79635 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #62216: <==negation-removal== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #63820: <==negation-removal== 79635 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #68234: <==negation-removal== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #78874: <==uncertain_firing== 30752 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80947: <==negation-removal== 44050 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #83419: <==negation-removal== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #89876: <==negation-removal== 63167 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (Bb_secret_d)
                           (at_b_l3)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #25842: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #47765: <==closure== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #50979: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #73462: <==closure== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #76140: <==closure== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #79360: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #80300: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #90048: <==closure== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #10510: <==uncertain_firing== 90048 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #14284: <==negation-removal== 47765 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #14692: <==uncertain_firing== 25842 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #20366: <==uncertain_firing== 50979 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #23491: <==uncertain_firing== 73462 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #26629: <==negation-removal== 76140 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #27567: <==negation-removal== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #32521: <==uncertain_firing== 79360 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #33262: <==negation-removal== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #40840: <==negation-removal== 90048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #44941: <==uncertain_firing== 47765 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #62953: <==uncertain_firing== 76140 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #69139: <==negation-removal== 73462 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #72758: <==negation-removal== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #76834: <==uncertain_firing== 80300 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #81744: <==negation-removal== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #21545: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #24706: <==closure== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #31098: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #43870: <==closure== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #63871: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #73819: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #80853: <==closure== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #84451: <==closure== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #21786: <==uncertain_firing== 80853 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #23231: <==uncertain_firing== 84451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #27971: <==uncertain_firing== 21545 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #32289: <==negation-removal== 84451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #33005: <==negation-removal== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #39469: <==negation-removal== 24706 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45620: <==negation-removal== 43870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58659: <==negation-removal== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #59455: <==negation-removal== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #69169: <==uncertain_firing== 43870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #72673: <==uncertain_firing== 63871 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75342: <==uncertain_firing== 31098 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #79988: <==uncertain_firing== 24706 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #80161: <==negation-removal== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #80285: <==negation-removal== 80853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #89494: <==uncertain_firing== 73819 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Pc_secret_a)
                           (at_c_l2)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #11451: <==closure== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #19038: <==closure== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #24325: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #37112: <==closure== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #77077: <==closure== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #79107: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #80480: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #89725: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #10286: <==uncertain_firing== 79107 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #15268: <==uncertain_firing== 24325 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #33460: <==negation-removal== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #34232: <==uncertain_firing== 37112 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #35115: <==uncertain_firing== 77077 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38496: <==uncertain_firing== 11451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #39865: <==uncertain_firing== 89725 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #46654: <==uncertain_firing== 80480 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #48735: <==negation-removal== 19038 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52435: <==negation-removal== 37112 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57993: <==negation-removal== 77077 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #62903: <==negation-removal== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #65185: <==uncertain_firing== 19038 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #68336: <==negation-removal== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #89733: <==negation-removal== 11451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #97023: <==negation-removal== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (Pc_secret_a)
                           (at_c_l3)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #10659: <==closure== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #10914: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #24635: <==closure== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #37477: <==closure== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #45270: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #57294: <==closure== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #62557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #65034: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #11601: <==negation-removal== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #26722: <==uncertain_firing== 62557 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #26948: <==uncertain_firing== 10659 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #32040: <==uncertain_firing== 37477 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #38478: <==negation-removal== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #38728: <==negation-removal== 57294 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #43242: <==negation-removal== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #44449: <==uncertain_firing== 57294 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #44570: <==negation-removal== 24635 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #55929: <==negation-removal== 10659 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #56424: <==negation-removal== 37477 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #67753: <==uncertain_firing== 10914 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #71550: <==uncertain_firing== 65034 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #75373: <==uncertain_firing== 45270 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78280: <==uncertain_firing== 24635 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #87178: <==negation-removal== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #17622: <==closure== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #31083: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #32583: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46135: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #48415: <==closure== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #81428: <==closure== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #86890: <==closure== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89117: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #11618: <==negation-removal== 48415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #17699: <==uncertain_firing== 81428 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #23876: <==negation-removal== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25818: <==negation-removal== 17622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #28365: <==uncertain_firing== 86890 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #28971: <==uncertain_firing== 31083 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29808: <==uncertain_firing== 89117 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #34384: <==uncertain_firing== 32583 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49330: <==negation-removal== 86890 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49846: <==uncertain_firing== 46135 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56043: <==uncertain_firing== 48415 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #58214: <==uncertain_firing== 17622 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #63246: <==negation-removal== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #82971: <==negation-removal== 81428 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83131: <==negation-removal== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #91796: <==negation-removal== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Pc_secret_b)
                           (at_c_l2)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #15899: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21024: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #37534: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #43912: <==closure== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #61120: <==closure== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #65970: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #77483: <==closure== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #81673: <==closure== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #11670: <==uncertain_firing== 15899 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #13136: <==uncertain_firing== 43912 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #13951: <==negation-removal== 77483 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20300: <==negation-removal== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25903: <==uncertain_firing== 81673 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #34532: <==negation-removal== 43912 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #46289: <==uncertain_firing== 61120 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #50387: <==negation-removal== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #58862: <==uncertain_firing== 65970 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #65281: <==uncertain_firing== 37534 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #65735: <==negation-removal== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #73505: <==negation-removal== 81673 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #75088: <==negation-removal== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82193: <==uncertain_firing== 77483 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #90262: <==negation-removal== 61120 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #90864: <==uncertain_firing== 21024 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (Pc_secret_b)
                           (at_c_l3)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #19596: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #21521: <==closure== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #26020: <==closure== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26609: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #37654: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44955: <==closure== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #88825: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #91580: <==closure== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #15314: <==negation-removal== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #16135: <==uncertain_firing== 26609 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #37544: <==uncertain_firing== 19596 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #39037: <==uncertain_firing== 21521 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #39402: <==uncertain_firing== 44955 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #42649: <==negation-removal== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #45130: <==negation-removal== 26020 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #45725: <==uncertain_firing== 88825 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #52095: <==uncertain_firing== 26020 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #64895: <==uncertain_firing== 37654 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #65172: <==negation-removal== 91580 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #72190: <==negation-removal== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #73522: <==negation-removal== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #76674: <==negation-removal== 21521 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #81077: <==negation-removal== 44955 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #83688: <==uncertain_firing== 91580 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #17714: <==closure== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #18616: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #22653: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #22697: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #32272: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #67079: <==closure== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #73079: <==closure== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #81260: <==closure== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19712: <==negation-removal== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #34099: <==uncertain_firing== 73079 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #34935: <==uncertain_firing== 22697 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #37644: <==negation-removal== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #39977: <==uncertain_firing== 22653 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #48746: <==negation-removal== 73079 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50185: <==negation-removal== 67079 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #54673: <==negation-removal== 17714 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #54976: <==uncertain_firing== 32272 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #56960: <==uncertain_firing== 67079 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #60797: <==negation-removal== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #69101: <==uncertain_firing== 17714 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #74781: <==uncertain_firing== 18616 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #76791: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79123: <==negation-removal== 81260 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88905: <==negation-removal== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l2))
        :effect (and
                    ; #23206: <==closure== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #23339: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #35537: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #38154: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #55691: <==closure== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #60187: <==closure== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #62706: <==closure== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #67298: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #13699: <==uncertain_firing== 62706 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_c)))

                    ; #14392: <==negation-removal== 60187 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #22455: <==negation-removal== 62706 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #23611: <==negation-removal== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #29828: <==uncertain_firing== 23339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #31757: <==uncertain_firing== 67298 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))

                    ; #44986: <==negation-removal== 55691 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #49029: <==uncertain_firing== 60187 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #58877: <==negation-removal== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #62866: <==negation-removal== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #67063: <==uncertain_firing== 55691 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #72800: <==uncertain_firing== 23206 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #74987: <==negation-removal== 23206 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #85488: <==uncertain_firing== 38154 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_c)))

                    ; #85862: <==negation-removal== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #90696: <==uncertain_firing== 35537 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l3))
        :effect (and
                    ; #16447: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #29183: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #35110: <==closure== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #53412: <==closure== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #61461: <==closure== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #62523: <==closure== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #68778: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #74691: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #14960: <==uncertain_firing== 74691 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #16357: <==uncertain_firing== 35110 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #20238: <==negation-removal== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))

                    ; #20953: <==uncertain_firing== 62523 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #22768: <==negation-removal== 35110 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #27251: <==negation-removal== 62523 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #31629: <==uncertain_firing== 29183 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #41387: <==negation-removal== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #46101: <==negation-removal== 61461 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #47506: <==negation-removal== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #57262: <==negation-removal== 53412 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #59777: <==uncertain_firing== 16447 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #65331: <==uncertain_firing== 61461 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #71429: <==uncertain_firing== 68778 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #77988: <==uncertain_firing== 53412 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #89307: <==negation-removal== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (initialized)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #17648: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #27410: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #29152: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #59239: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #63564: <==closure== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #65413: <==closure== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71720: <==closure== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #82842: <==closure== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #10489: <==uncertain_firing== 63564 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #33351: <==negation-removal== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34780: <==uncertain_firing== 82842 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #34829: <==uncertain_firing== 71720 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #41017: <==negation-removal== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #43584: <==negation-removal== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #47672: <==uncertain_firing== 65413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #51515: <==negation-removal== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #53812: <==uncertain_firing== 59239 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56405: <==negation-removal== 65413 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #60586: <==negation-removal== 82842 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #61765: <==uncertain_firing== 27410 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #69208: <==negation-removal== 71720 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #69671: <==uncertain_firing== 17648 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #84385: <==negation-removal== 63564 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #91680: <==uncertain_firing== 29152 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #30752: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #44050: <==closure== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #49392: <==closure== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #54170: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #63167: <==closure== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #65027: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79635: <==closure== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #87735: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #18869: <==uncertain_firing== 49392 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #33857: <==uncertain_firing== 54170 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #39651: <==uncertain_firing== 44050 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #42249: <==uncertain_firing== 65027 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #45442: <==negation-removal== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #49519: <==negation-removal== 49392 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #50144: <==uncertain_firing== 63167 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #51380: <==uncertain_firing== 87735 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #55771: <==uncertain_firing== 79635 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #62216: <==negation-removal== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #63820: <==negation-removal== 79635 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #68234: <==negation-removal== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #78874: <==uncertain_firing== 30752 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80947: <==negation-removal== 44050 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #83419: <==negation-removal== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #89876: <==negation-removal== 63167 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #25842: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #47765: <==closure== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #50979: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #73462: <==closure== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #76140: <==closure== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #79360: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #80300: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #90048: <==closure== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #10510: <==uncertain_firing== 90048 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #14284: <==negation-removal== 47765 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #14692: <==uncertain_firing== 25842 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #20366: <==uncertain_firing== 50979 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #23491: <==uncertain_firing== 73462 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #26629: <==negation-removal== 76140 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #27567: <==negation-removal== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #32521: <==uncertain_firing== 79360 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #33262: <==negation-removal== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #40840: <==negation-removal== 90048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #44941: <==uncertain_firing== 47765 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #62953: <==uncertain_firing== 76140 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #69139: <==negation-removal== 73462 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #72758: <==negation-removal== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #76834: <==uncertain_firing== 80300 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #81744: <==negation-removal== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a)
                           (at_d_l1))
        :effect (and
                    ; #21545: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #24706: <==closure== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #31098: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #43870: <==closure== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #63871: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #73819: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #80853: <==closure== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #84451: <==closure== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #21786: <==uncertain_firing== 80853 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #23231: <==uncertain_firing== 84451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #27971: <==uncertain_firing== 21545 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #32289: <==negation-removal== 84451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #33005: <==negation-removal== 21545 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #39469: <==negation-removal== 24706 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45620: <==negation-removal== 43870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58659: <==negation-removal== 31098 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #59455: <==negation-removal== 63871 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #69169: <==uncertain_firing== 43870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #72673: <==uncertain_firing== 63871 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75342: <==uncertain_firing== 31098 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #79988: <==uncertain_firing== 24706 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #80161: <==negation-removal== 73819 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #80285: <==negation-removal== 80853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #89494: <==uncertain_firing== 73819 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #11451: <==closure== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #19038: <==closure== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #24325: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #37112: <==closure== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #77077: <==closure== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Pc_secret_a))

                    ; #79107: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #80480: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (Bc_secret_a))

                    ; #89725: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #10286: <==uncertain_firing== 79107 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #15268: <==uncertain_firing== 24325 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #33460: <==negation-removal== 89725 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #34232: <==uncertain_firing== 37112 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #35115: <==uncertain_firing== 77077 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_a)))

                    ; #38496: <==uncertain_firing== 11451 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #39865: <==uncertain_firing== 89725 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #46654: <==uncertain_firing== 80480 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_a)))

                    ; #48735: <==negation-removal== 19038 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #52435: <==negation-removal== 37112 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57993: <==negation-removal== 77077 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #62903: <==negation-removal== 80480 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #65185: <==uncertain_firing== 19038 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #68336: <==negation-removal== 24325 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #89733: <==negation-removal== 11451 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #97023: <==negation-removal== 79107 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a)
                           (at_d_l3))
        :effect (and
                    ; #10659: <==closure== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #10914: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #24635: <==closure== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #37477: <==closure== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Pa_secret_a))

                    ; #45270: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (Ba_secret_a))

                    ; #57294: <==closure== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #62557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #65034: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #11601: <==negation-removal== 45270 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Pa_not_secret_a)))

                    ; #26722: <==uncertain_firing== 62557 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #26948: <==uncertain_firing== 10659 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #32040: <==uncertain_firing== 37477 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #38478: <==negation-removal== 62557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #38728: <==negation-removal== 57294 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))

                    ; #43242: <==negation-removal== 10914 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #44449: <==uncertain_firing== 57294 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #44570: <==negation-removal== 24635 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #55929: <==negation-removal== 10659 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #56424: <==negation-removal== 37477 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l3)))
                          (not (Ba_not_secret_a)))

                    ; #67753: <==uncertain_firing== 10914 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #71550: <==uncertain_firing== 65034 (pos)
                    (when (and (and (not (Pd_not_secret_a))
                               (not (Bd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #75373: <==uncertain_firing== 45270 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78280: <==uncertain_firing== 24635 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))

                    ; #87178: <==negation-removal== 65034 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Bd_secret_b)
                           (initialized)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #17622: <==closure== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #31083: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #32583: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #46135: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #48415: <==closure== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #81428: <==closure== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #86890: <==closure== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #89117: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #11618: <==negation-removal== 48415 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #17699: <==uncertain_firing== 81428 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #23876: <==negation-removal== 46135 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25818: <==negation-removal== 17622 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #28365: <==uncertain_firing== 86890 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #28971: <==uncertain_firing== 31083 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29808: <==uncertain_firing== 89117 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #34384: <==uncertain_firing== 32583 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49330: <==negation-removal== 86890 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #49846: <==uncertain_firing== 46135 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #56043: <==uncertain_firing== 48415 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (not_at_c_l1))
                               (not (Pc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #58214: <==uncertain_firing== 17622 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #63246: <==negation-removal== 32583 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #82971: <==negation-removal== 81428 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83131: <==negation-removal== 89117 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #91796: <==negation-removal== 31083 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Bd_secret_b)
                           (initialized)
                           (at_d_l2)
                           (Pd_secret_b))
        :effect (and
                    ; #15899: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21024: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #37534: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Ba_secret_b))

                    ; #43912: <==closure== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #61120: <==closure== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Pc_secret_b))

                    ; #65970: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (Bc_secret_b))

                    ; #77483: <==closure== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #81673: <==closure== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (Pa_secret_b))

                    ; #11670: <==uncertain_firing== 15899 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #13136: <==uncertain_firing== 43912 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #13951: <==negation-removal== 77483 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20300: <==negation-removal== 21024 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #25903: <==uncertain_firing== 81673 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #34532: <==negation-removal== 43912 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #46289: <==uncertain_firing== 61120 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))

                    ; #50387: <==negation-removal== 37534 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #58862: <==uncertain_firing== 65970 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #65281: <==uncertain_firing== 37534 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #65735: <==negation-removal== 15899 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #73505: <==negation-removal== 81673 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #75088: <==negation-removal== 65970 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82193: <==uncertain_firing== 77483 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #90262: <==negation-removal== 61120 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #90864: <==uncertain_firing== 21024 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (Bd_secret_b)
                           (initialized)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #19596: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #21521: <==closure== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #26020: <==closure== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26609: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Ba_secret_b))

                    ; #37654: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #44955: <==closure== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (Pa_secret_b))

                    ; #88825: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #91580: <==closure== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #15314: <==negation-removal== 37654 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #16135: <==uncertain_firing== 26609 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #37544: <==uncertain_firing== 19596 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #39037: <==uncertain_firing== 21521 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #39402: <==uncertain_firing== 44955 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #42649: <==negation-removal== 19596 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #45130: <==negation-removal== 26020 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #45725: <==uncertain_firing== 88825 (pos)
                    (when (and (and (not (Bc_not_secret_b))
                               (not (Pc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #52095: <==uncertain_firing== 26020 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #64895: <==uncertain_firing== 37654 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #65172: <==negation-removal== 91580 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #72190: <==negation-removal== 26609 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Pa_not_secret_b)))

                    ; #73522: <==negation-removal== 88825 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #76674: <==negation-removal== 21521 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #81077: <==negation-removal== 44955 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l3)))
                          (not (Ba_not_secret_b)))

                    ; #83688: <==uncertain_firing== 91580 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (Bd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l1)
                           (Pd_secret_c))
        :effect (and
                    ; #17714: <==closure== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #18616: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #22653: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #22697: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #32272: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #67079: <==closure== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #73079: <==closure== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #81260: <==closure== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19712: <==negation-removal== 18616 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #34099: <==uncertain_firing== 73079 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #34935: <==uncertain_firing== 22697 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #37644: <==negation-removal== 22697 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #39977: <==uncertain_firing== 22653 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #48746: <==negation-removal== 73079 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50185: <==negation-removal== 67079 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #54673: <==negation-removal== 17714 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #54976: <==uncertain_firing== 32272 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #56960: <==uncertain_firing== 67079 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #60797: <==negation-removal== 22653 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #69101: <==uncertain_firing== 17714 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #74781: <==uncertain_firing== 18616 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #76791: <==uncertain_firing== 81260 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #79123: <==negation-removal== 81260 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88905: <==negation-removal== 32272 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #23206: <==closure== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #23339: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #35537: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #38154: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #55691: <==closure== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #60187: <==closure== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #62706: <==closure== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #67298: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #13699: <==uncertain_firing== 62706 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_c)))

                    ; #14392: <==negation-removal== 60187 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #22455: <==negation-removal== 62706 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #23611: <==negation-removal== 23339 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #29828: <==uncertain_firing== 23339 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #31757: <==uncertain_firing== 67298 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_c)))

                    ; #44986: <==negation-removal== 55691 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #49029: <==uncertain_firing== 60187 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #58877: <==negation-removal== 35537 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #62866: <==negation-removal== 38154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #67063: <==uncertain_firing== 55691 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_c)))

                    ; #72800: <==uncertain_firing== 23206 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_c)))

                    ; #74987: <==negation-removal== 23206 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #85488: <==uncertain_firing== 38154 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_c)))

                    ; #85862: <==negation-removal== 67298 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #90696: <==uncertain_firing== 35537 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (Bd_secret_c)
                           (initialized)
                           (at_d_l3)
                           (Pd_secret_c))
        :effect (and
                    ; #16447: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #29183: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #35110: <==closure== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #53412: <==closure== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #61461: <==closure== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #62523: <==closure== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #68778: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #74691: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #14960: <==uncertain_firing== 74691 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #16357: <==uncertain_firing== 35110 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #20238: <==negation-removal== 29183 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))

                    ; #20953: <==uncertain_firing== 62523 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #22768: <==negation-removal== 35110 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #27251: <==negation-removal== 62523 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #31629: <==uncertain_firing== 29183 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #41387: <==negation-removal== 74691 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #46101: <==negation-removal== 61461 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #47506: <==negation-removal== 68778 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #57262: <==negation-removal== 53412 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #59777: <==uncertain_firing== 16447 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #65331: <==uncertain_firing== 61461 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #71429: <==uncertain_firing== 68778 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #77988: <==uncertain_firing== 53412 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #89307: <==negation-removal== 16447 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #17648: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #27410: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #29152: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #59239: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #63564: <==closure== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #65413: <==closure== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71720: <==closure== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #82842: <==closure== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #10489: <==uncertain_firing== 63564 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #33351: <==negation-removal== 27410 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34780: <==uncertain_firing== 82842 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #34829: <==uncertain_firing== 71720 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #41017: <==negation-removal== 29152 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #43584: <==negation-removal== 17648 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #47672: <==uncertain_firing== 65413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #51515: <==negation-removal== 59239 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #53812: <==uncertain_firing== 59239 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56405: <==negation-removal== 65413 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #60586: <==negation-removal== 82842 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #61765: <==uncertain_firing== 27410 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #69208: <==negation-removal== 71720 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #69671: <==uncertain_firing== 17648 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #84385: <==negation-removal== 63564 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #91680: <==uncertain_firing== 29152 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d)
                           (at_d_l2))
        :effect (and
                    ; #30752: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #44050: <==closure== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #49392: <==closure== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Pb_secret_d))

                    ; #54170: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #63167: <==closure== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #65027: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79635: <==closure== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #87735: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (Bb_secret_d))

                    ; #18869: <==uncertain_firing== 49392 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #33857: <==uncertain_firing== 54170 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_d)))

                    ; #39651: <==uncertain_firing== 44050 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #42249: <==uncertain_firing== 65027 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_d)))

                    ; #45442: <==negation-removal== 54170 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #49519: <==negation-removal== 49392 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #50144: <==uncertain_firing== 63167 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_d)))

                    ; #51380: <==uncertain_firing== 87735 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #55771: <==uncertain_firing== 79635 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_d)))

                    ; #62216: <==negation-removal== 65027 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #63820: <==negation-removal== 79635 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #68234: <==negation-removal== 30752 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #78874: <==uncertain_firing== 30752 (pos)
                    (when (and (and (not (Pa_not_secret_d))
                               (not (not_at_a_l2))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #80947: <==negation-removal== 44050 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #83419: <==negation-removal== 87735 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #89876: <==negation-removal== 63167 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d)
                           (at_d_l3))
        :effect (and
                    ; #25842: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #47765: <==closure== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #50979: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #73462: <==closure== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #76140: <==closure== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #79360: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #80300: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #90048: <==closure== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #10510: <==uncertain_firing== 90048 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #14284: <==negation-removal== 47765 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #14692: <==uncertain_firing== 25842 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #20366: <==uncertain_firing== 50979 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #23491: <==uncertain_firing== 73462 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #26629: <==negation-removal== 76140 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #27567: <==negation-removal== 79360 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #32521: <==uncertain_firing== 79360 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #33262: <==negation-removal== 50979 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #40840: <==negation-removal== 90048 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #44941: <==uncertain_firing== 47765 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #62953: <==uncertain_firing== 76140 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #69139: <==negation-removal== 73462 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #72758: <==negation-removal== 80300 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #76834: <==uncertain_firing== 80300 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_d))
                               (not (Ba_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #81744: <==negation-removal== 25842 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

)