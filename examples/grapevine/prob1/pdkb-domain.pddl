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
        :precondition (and (connected_l1_l1)
                           (at_a_l1))
        :effect (and
                    ; #17695: origin
                    (at_a_l1)

                    ; #74453: origin
                    (not_at_a_l1)

                    ; #17695: <==negation-removal== 74453 (pos)
                    (not (at_a_l1))

                    ; #74453: <==negation-removal== 17695 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #64824: origin
                    (at_a_l2)

                    ; #74453: origin
                    (not_at_a_l1)

                    ; #17695: <==negation-removal== 74453 (pos)
                    (not (at_a_l1))

                    ; #59551: <==negation-removal== 64824 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #17695: origin
                    (at_a_l1)

                    ; #59551: origin
                    (not_at_a_l2)

                    ; #64824: <==negation-removal== 59551 (pos)
                    (not (at_a_l2))

                    ; #74453: <==negation-removal== 17695 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #59551: origin
                    (not_at_a_l2)

                    ; #64824: origin
                    (at_a_l2)

                    ; #59551: <==negation-removal== 64824 (pos)
                    (not (not_at_a_l2))

                    ; #64824: <==negation-removal== 59551 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #17719: origin
                    (not_at_b_l1)

                    ; #88433: origin
                    (at_b_l1)

                    ; #17719: <==negation-removal== 88433 (pos)
                    (not (not_at_b_l1))

                    ; #88433: <==negation-removal== 17719 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (at_b_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #17719: origin
                    (not_at_b_l1)

                    ; #32218: origin
                    (at_b_l2)

                    ; #41535: <==negation-removal== 32218 (pos)
                    (not (not_at_b_l2))

                    ; #88433: <==negation-removal== 17719 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #41535: origin
                    (not_at_b_l2)

                    ; #88433: origin
                    (at_b_l1)

                    ; #17719: <==negation-removal== 88433 (pos)
                    (not (not_at_b_l1))

                    ; #32218: <==negation-removal== 41535 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #32218: origin
                    (at_b_l2)

                    ; #41535: origin
                    (not_at_b_l2)

                    ; #32218: <==negation-removal== 41535 (pos)
                    (not (at_b_l2))

                    ; #41535: <==negation-removal== 32218 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_c_l1))
        :effect (and
                    ; #37319: origin
                    (not_at_c_l1)

                    ; #62362: origin
                    (at_c_l1)

                    ; #37319: <==negation-removal== 62362 (pos)
                    (not (not_at_c_l1))

                    ; #62362: <==negation-removal== 37319 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #37319: origin
                    (not_at_c_l1)

                    ; #86193: origin
                    (at_c_l2)

                    ; #18422: <==negation-removal== 86193 (pos)
                    (not (not_at_c_l2))

                    ; #62362: <==negation-removal== 37319 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #18422: origin
                    (not_at_c_l2)

                    ; #62362: origin
                    (at_c_l1)

                    ; #37319: <==negation-removal== 62362 (pos)
                    (not (not_at_c_l1))

                    ; #86193: <==negation-removal== 18422 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #18422: origin
                    (not_at_c_l2)

                    ; #86193: origin
                    (at_c_l2)

                    ; #18422: <==negation-removal== 86193 (pos)
                    (not (not_at_c_l2))

                    ; #86193: <==negation-removal== 18422 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (at_d_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #31001: origin
                    (not_at_d_l1)

                    ; #82106: origin
                    (at_d_l1)

                    ; #31001: <==negation-removal== 82106 (pos)
                    (not (not_at_d_l1))

                    ; #82106: <==negation-removal== 31001 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (at_d_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #31001: origin
                    (not_at_d_l1)

                    ; #37331: origin
                    (at_d_l2)

                    ; #75849: <==negation-removal== 37331 (pos)
                    (not (not_at_d_l2))

                    ; #82106: <==negation-removal== 31001 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #75849: origin
                    (not_at_d_l2)

                    ; #82106: origin
                    (at_d_l1)

                    ; #31001: <==negation-removal== 82106 (pos)
                    (not (not_at_d_l1))

                    ; #37331: <==negation-removal== 75849 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_d_l2))
        :effect (and
                    ; #37331: origin
                    (at_d_l2)

                    ; #75849: origin
                    (not_at_d_l2)

                    ; #37331: <==negation-removal== 75849 (pos)
                    (not (at_d_l2))

                    ; #75849: <==negation-removal== 37331 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (at_a_l1)
                           (Pa_secret_a))
        :effect (and
                    ; #35609: <==closure== 75092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #45008: <==closure== 72206 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46305: <==closure== 79576 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #72206: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79576: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84473: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #87633: <==closure== 84473 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #15877: <==uncertain_firing== 72206 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #19293: <==negation-removal== 35609 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #21720: <==negation-removal== 72206 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22750: <==uncertain_firing== 87633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #28119: <==uncertain_firing== 75092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #28867: <==negation-removal== 45008 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #29070: <==negation-removal== 46305 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #41098: <==negation-removal== 79576 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #49311: <==negation-removal== 84473 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #54677: <==uncertain_firing== 84473 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #54862: <==uncertain_firing== 79576 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68333: <==uncertain_firing== 35609 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69800: <==uncertain_firing== 45008 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #72198: <==negation-removal== 87633 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #89396: <==uncertain_firing== 46305 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #92056: <==negation-removal== 75092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_a)
                           (Pa_secret_a))
        :effect (and
                    ; #21469: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #23987: <==closure== 50577 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #30788: <==closure== 35622 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #35622: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #50577: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #64374: <==closure== 21469 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #78507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #84866: <==closure== 78507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #13261: <==negation-removal== 35622 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #13968: <==uncertain_firing== 84866 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #20990: <==uncertain_firing== 21469 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34038: <==negation-removal== 78507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #37363: <==uncertain_firing== 78507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #43021: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #43971: <==uncertain_firing== 23987 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #50114: <==uncertain_firing== 50577 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #54226: <==negation-removal== 84866 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #57049: <==negation-removal== 23987 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #71184: <==negation-removal== 64374 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #74263: <==uncertain_firing== 64374 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #74625: <==uncertain_firing== 35622 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #86621: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #89431: <==negation-removal== 50577 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #91494: <==negation-removal== 21469 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #18550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #29967: <==closure== 50524 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #50524: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #59939: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #70593: <==closure== 18550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #79999: <==closure== 89089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #87037: <==closure== 59939 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #89089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #14949: <==uncertain_firing== 89089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #16803: <==negation-removal== 89089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #23607: <==uncertain_firing== 29967 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24223: <==uncertain_firing== 50524 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #32530: <==uncertain_firing== 59939 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #39073: <==uncertain_firing== 70593 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #40402: <==uncertain_firing== 18550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #44755: <==negation-removal== 50524 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #50962: <==uncertain_firing== 87037 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55626: <==uncertain_firing== 79999 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #57296: <==negation-removal== 29967 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #58323: <==negation-removal== 79999 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #62116: <==negation-removal== 70593 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #67431: <==negation-removal== 59939 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #71227: <==negation-removal== 18550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #83009: <==negation-removal== 87037 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #24631: <==closure== 61631 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #28235: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #33317: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #39022: <==closure== 28235 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #57316: <==closure== 33317 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #61631: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #81597: <==closure== 86428 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #86428: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #23033: <==uncertain_firing== 24631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #23718: <==negation-removal== 28235 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #25581: <==negation-removal== 39022 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #30692: <==uncertain_firing== 28235 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37120: <==uncertain_firing== 61631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37576: <==uncertain_firing== 81597 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #39571: <==uncertain_firing== 86428 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #39969: <==negation-removal== 61631 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #44331: <==uncertain_firing== 57316 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #50504: <==negation-removal== 57316 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51735: <==negation-removal== 81597 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #60749: <==uncertain_firing== 39022 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #64912: <==negation-removal== 33317 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #76449: <==negation-removal== 24631 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81340: <==negation-removal== 86428 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #83665: <==uncertain_firing== 33317 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #22596: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40186: <==closure== 72938 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #41117: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44221: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #44842: <==closure== 22596 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69977: <==closure== 44221 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #72618: <==closure== 41117 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72938: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #10550: <==negation-removal== 72618 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #22668: <==negation-removal== 69977 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #25626: <==negation-removal== 40186 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #27656: <==uncertain_firing== 41117 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #31721: <==negation-removal== 41117 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #33249: <==uncertain_firing== 44221 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36564: <==negation-removal== 72938 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #37330: <==negation-removal== 44842 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #67652: <==negation-removal== 44221 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #68229: <==uncertain_firing== 69977 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #75293: <==negation-removal== 22596 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #75951: <==uncertain_firing== 72938 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #77053: <==uncertain_firing== 44842 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #86629: <==uncertain_firing== 72618 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86834: <==uncertain_firing== 40186 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #93598: <==uncertain_firing== 22596 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #26408: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #33605: <==closure== 72675 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #35171: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #37327: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #64777: <==closure== 26408 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #72442: <==closure== 35171 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #72675: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #79721: <==closure== 37327 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #24759: <==uncertain_firing== 37327 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #31266: <==negation-removal== 26408 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #62082: <==negation-removal== 33605 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #63621: <==uncertain_firing== 64777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65034: <==uncertain_firing== 72442 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #65696: <==uncertain_firing== 35171 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #69088: <==uncertain_firing== 26408 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #69938: <==negation-removal== 64777 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #71858: <==uncertain_firing== 72675 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #74456: <==negation-removal== 35171 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #77864: <==uncertain_firing== 79721 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #82552: <==uncertain_firing== 33605 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #83373: <==negation-removal== 79721 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #84364: <==negation-removal== 37327 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #87686: <==negation-removal== 72442 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #89599: <==negation-removal== 72675 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #10492: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #16409: <==closure== 10492 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #35135: <==closure== 67672 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #44633: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #46456: <==closure== 82950 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #67672: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76213: <==closure== 44633 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82950: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #21384: <==negation-removal== 46456 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #27960: <==uncertain_firing== 76213 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28885: <==negation-removal== 16409 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #50028: <==negation-removal== 76213 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #61051: <==uncertain_firing== 67672 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #62206: <==negation-removal== 67672 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #64914: <==negation-removal== 35135 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #66111: <==uncertain_firing== 35135 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #68311: <==negation-removal== 10492 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #71519: <==negation-removal== 82950 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #74215: <==uncertain_firing== 46456 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #74633: <==negation-removal== 44633 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #81592: <==uncertain_firing== 82950 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #86358: <==uncertain_firing== 16409 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #90128: <==uncertain_firing== 10492 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #95716: <==uncertain_firing== 44633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #13552: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #16236: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #26025: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34600: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #41753: <==closure== 13552 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #52553: <==closure== 34600 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #60259: <==closure== 26025 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #74668: <==closure== 16236 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #13695: <==negation-removal== 74668 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14480: <==negation-removal== 16236 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #16809: <==negation-removal== 34600 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #17422: <==uncertain_firing== 60259 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #19792: <==negation-removal== 52553 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #20196: <==uncertain_firing== 26025 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #23518: <==uncertain_firing== 34600 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #26335: <==uncertain_firing== 13552 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #50389: <==negation-removal== 60259 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #52659: <==uncertain_firing== 41753 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #54356: <==uncertain_firing== 52553 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #55480: <==uncertain_firing== 16236 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #56137: <==negation-removal== 41753 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #78204: <==negation-removal== 13552 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #86282: <==uncertain_firing== 74668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #88807: <==negation-removal== 26025 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Pb_secret_a)
                           (at_b_l1)
                           (Bb_secret_a))
        :effect (and
                    ; #35609: <==closure== 75092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #45008: <==closure== 72206 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46305: <==closure== 79576 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #72206: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79576: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84473: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #87633: <==closure== 84473 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #15877: <==uncertain_firing== 72206 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #19293: <==negation-removal== 35609 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #21720: <==negation-removal== 72206 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22750: <==uncertain_firing== 87633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #28119: <==uncertain_firing== 75092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #28867: <==negation-removal== 45008 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #29070: <==negation-removal== 46305 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #41098: <==negation-removal== 79576 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #49311: <==negation-removal== 84473 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #54677: <==uncertain_firing== 84473 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #54862: <==uncertain_firing== 79576 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68333: <==uncertain_firing== 35609 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69800: <==uncertain_firing== 45008 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #72198: <==negation-removal== 87633 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #89396: <==uncertain_firing== 46305 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #92056: <==negation-removal== 75092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #21469: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #23987: <==closure== 50577 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #30788: <==closure== 35622 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #35622: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #50577: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #64374: <==closure== 21469 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #78507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #84866: <==closure== 78507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #13261: <==negation-removal== 35622 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #13968: <==uncertain_firing== 84866 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #20990: <==uncertain_firing== 21469 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34038: <==negation-removal== 78507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #37363: <==uncertain_firing== 78507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #43021: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #43971: <==uncertain_firing== 23987 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #50114: <==uncertain_firing== 50577 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #54226: <==negation-removal== 84866 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #57049: <==negation-removal== 23987 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #71184: <==negation-removal== 64374 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #74263: <==uncertain_firing== 64374 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #74625: <==uncertain_firing== 35622 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #86621: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #89431: <==negation-removal== 50577 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #91494: <==negation-removal== 21469 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #18550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #29967: <==closure== 50524 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #50524: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #59939: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #70593: <==closure== 18550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #79999: <==closure== 89089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #87037: <==closure== 59939 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #89089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #14949: <==uncertain_firing== 89089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #16803: <==negation-removal== 89089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #23607: <==uncertain_firing== 29967 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24223: <==uncertain_firing== 50524 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #32530: <==uncertain_firing== 59939 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #39073: <==uncertain_firing== 70593 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #40402: <==uncertain_firing== 18550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #44755: <==negation-removal== 50524 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #50962: <==uncertain_firing== 87037 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55626: <==uncertain_firing== 79999 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #57296: <==negation-removal== 29967 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #58323: <==negation-removal== 79999 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #62116: <==negation-removal== 70593 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #67431: <==negation-removal== 59939 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #71227: <==negation-removal== 18550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #83009: <==negation-removal== 87037 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #24631: <==closure== 61631 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #28235: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #33317: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #39022: <==closure== 28235 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #57316: <==closure== 33317 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #61631: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #81597: <==closure== 86428 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #86428: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #23033: <==uncertain_firing== 24631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #23718: <==negation-removal== 28235 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #25581: <==negation-removal== 39022 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #30692: <==uncertain_firing== 28235 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37120: <==uncertain_firing== 61631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37576: <==uncertain_firing== 81597 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #39571: <==uncertain_firing== 86428 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #39969: <==negation-removal== 61631 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #44331: <==uncertain_firing== 57316 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #50504: <==negation-removal== 57316 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51735: <==negation-removal== 81597 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #60749: <==uncertain_firing== 39022 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #64912: <==negation-removal== 33317 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #76449: <==negation-removal== 24631 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81340: <==negation-removal== 86428 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #83665: <==uncertain_firing== 33317 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #22596: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40186: <==closure== 72938 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #41117: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44221: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #44842: <==closure== 22596 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69977: <==closure== 44221 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #72618: <==closure== 41117 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72938: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #10550: <==negation-removal== 72618 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #22668: <==negation-removal== 69977 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #25626: <==negation-removal== 40186 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #27656: <==uncertain_firing== 41117 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #31721: <==negation-removal== 41117 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #33249: <==uncertain_firing== 44221 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36564: <==negation-removal== 72938 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #37330: <==negation-removal== 44842 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #67652: <==negation-removal== 44221 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #68229: <==uncertain_firing== 69977 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #75293: <==negation-removal== 22596 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #75951: <==uncertain_firing== 72938 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #77053: <==uncertain_firing== 44842 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #86629: <==uncertain_firing== 72618 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86834: <==uncertain_firing== 40186 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #93598: <==uncertain_firing== 22596 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #26408: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #33605: <==closure== 72675 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #35171: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #37327: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #64777: <==closure== 26408 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #72442: <==closure== 35171 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #72675: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #79721: <==closure== 37327 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #24759: <==uncertain_firing== 37327 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #31266: <==negation-removal== 26408 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #62082: <==negation-removal== 33605 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #63621: <==uncertain_firing== 64777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65034: <==uncertain_firing== 72442 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #65696: <==uncertain_firing== 35171 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #69088: <==uncertain_firing== 26408 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #69938: <==negation-removal== 64777 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #71858: <==uncertain_firing== 72675 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #74456: <==negation-removal== 35171 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #77864: <==uncertain_firing== 79721 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #82552: <==uncertain_firing== 33605 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #83373: <==negation-removal== 79721 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #84364: <==negation-removal== 37327 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #87686: <==negation-removal== 72442 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #89599: <==negation-removal== 72675 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (at_b_l1)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #10492: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #16409: <==closure== 10492 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #35135: <==closure== 67672 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #44633: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #46456: <==closure== 82950 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #67672: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76213: <==closure== 44633 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82950: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #21384: <==negation-removal== 46456 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #27960: <==uncertain_firing== 76213 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28885: <==negation-removal== 16409 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #50028: <==negation-removal== 76213 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #61051: <==uncertain_firing== 67672 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #62206: <==negation-removal== 67672 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #64914: <==negation-removal== 35135 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #66111: <==uncertain_firing== 35135 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #68311: <==negation-removal== 10492 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #71519: <==negation-removal== 82950 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #74215: <==uncertain_firing== 46456 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #74633: <==negation-removal== 44633 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #81592: <==uncertain_firing== 82950 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #86358: <==uncertain_firing== 16409 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #90128: <==uncertain_firing== 10492 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #95716: <==uncertain_firing== 44633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Pb_secret_d)
                           (at_b_l2)
                           (Bb_secret_d))
        :effect (and
                    ; #13552: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #16236: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #26025: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34600: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #41753: <==closure== 13552 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #52553: <==closure== 34600 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #60259: <==closure== 26025 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #74668: <==closure== 16236 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #13695: <==negation-removal== 74668 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14480: <==negation-removal== 16236 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #16809: <==negation-removal== 34600 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #17422: <==uncertain_firing== 60259 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #19792: <==negation-removal== 52553 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #20196: <==uncertain_firing== 26025 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #23518: <==uncertain_firing== 34600 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #26335: <==uncertain_firing== 13552 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #50389: <==negation-removal== 60259 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #52659: <==uncertain_firing== 41753 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #54356: <==uncertain_firing== 52553 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #55480: <==uncertain_firing== 16236 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #56137: <==negation-removal== 41753 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #78204: <==negation-removal== 13552 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #86282: <==uncertain_firing== 74668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #88807: <==negation-removal== 26025 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Pc_secret_a)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #35609: <==closure== 75092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #45008: <==closure== 72206 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46305: <==closure== 79576 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #72206: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79576: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84473: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #87633: <==closure== 84473 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #15877: <==uncertain_firing== 72206 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #19293: <==negation-removal== 35609 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #21720: <==negation-removal== 72206 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22750: <==uncertain_firing== 87633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #28119: <==uncertain_firing== 75092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #28867: <==negation-removal== 45008 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #29070: <==negation-removal== 46305 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #41098: <==negation-removal== 79576 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #49311: <==negation-removal== 84473 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #54677: <==uncertain_firing== 84473 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #54862: <==uncertain_firing== 79576 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68333: <==uncertain_firing== 35609 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69800: <==uncertain_firing== 45008 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #72198: <==negation-removal== 87633 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #89396: <==uncertain_firing== 46305 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #92056: <==negation-removal== 75092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #21469: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #23987: <==closure== 50577 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #30788: <==closure== 35622 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #35622: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #50577: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #64374: <==closure== 21469 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #78507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #84866: <==closure== 78507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #13261: <==negation-removal== 35622 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #13968: <==uncertain_firing== 84866 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #20990: <==uncertain_firing== 21469 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34038: <==negation-removal== 78507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #37363: <==uncertain_firing== 78507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #43021: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #43971: <==uncertain_firing== 23987 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #50114: <==uncertain_firing== 50577 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #54226: <==negation-removal== 84866 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #57049: <==negation-removal== 23987 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #71184: <==negation-removal== 64374 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #74263: <==uncertain_firing== 64374 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #74625: <==uncertain_firing== 35622 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #86621: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #89431: <==negation-removal== 50577 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #91494: <==negation-removal== 21469 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (Pc_secret_b)
                           (at_c_l1))
        :effect (and
                    ; #18550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #29967: <==closure== 50524 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #50524: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #59939: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #70593: <==closure== 18550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #79999: <==closure== 89089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #87037: <==closure== 59939 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #89089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #14949: <==uncertain_firing== 89089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #16803: <==negation-removal== 89089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #23607: <==uncertain_firing== 29967 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24223: <==uncertain_firing== 50524 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #32530: <==uncertain_firing== 59939 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #39073: <==uncertain_firing== 70593 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #40402: <==uncertain_firing== 18550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #44755: <==negation-removal== 50524 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #50962: <==uncertain_firing== 87037 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55626: <==uncertain_firing== 79999 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #57296: <==negation-removal== 29967 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #58323: <==negation-removal== 79999 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #62116: <==negation-removal== 70593 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #67431: <==negation-removal== 59939 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #71227: <==negation-removal== 18550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #83009: <==negation-removal== 87037 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #24631: <==closure== 61631 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #28235: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #33317: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #39022: <==closure== 28235 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #57316: <==closure== 33317 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #61631: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #81597: <==closure== 86428 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #86428: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #23033: <==uncertain_firing== 24631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #23718: <==negation-removal== 28235 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #25581: <==negation-removal== 39022 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #30692: <==uncertain_firing== 28235 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37120: <==uncertain_firing== 61631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37576: <==uncertain_firing== 81597 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #39571: <==uncertain_firing== 86428 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #39969: <==negation-removal== 61631 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #44331: <==uncertain_firing== 57316 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #50504: <==negation-removal== 57316 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51735: <==negation-removal== 81597 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #60749: <==uncertain_firing== 39022 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #64912: <==negation-removal== 33317 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #76449: <==negation-removal== 24631 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81340: <==negation-removal== 86428 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #83665: <==uncertain_firing== 33317 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Bc_secret_c)
                           (at_c_l1)
                           (Pc_secret_c))
        :effect (and
                    ; #22596: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40186: <==closure== 72938 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #41117: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44221: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #44842: <==closure== 22596 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69977: <==closure== 44221 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #72618: <==closure== 41117 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72938: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #10550: <==negation-removal== 72618 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #22668: <==negation-removal== 69977 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #25626: <==negation-removal== 40186 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #27656: <==uncertain_firing== 41117 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #31721: <==negation-removal== 41117 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #33249: <==uncertain_firing== 44221 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36564: <==negation-removal== 72938 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #37330: <==negation-removal== 44842 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #67652: <==negation-removal== 44221 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #68229: <==uncertain_firing== 69977 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #75293: <==negation-removal== 22596 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #75951: <==uncertain_firing== 72938 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #77053: <==uncertain_firing== 44842 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #86629: <==uncertain_firing== 72618 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86834: <==uncertain_firing== 40186 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #93598: <==uncertain_firing== 22596 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #26408: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #33605: <==closure== 72675 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #35171: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #37327: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #64777: <==closure== 26408 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #72442: <==closure== 35171 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #72675: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #79721: <==closure== 37327 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #24759: <==uncertain_firing== 37327 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #31266: <==negation-removal== 26408 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #62082: <==negation-removal== 33605 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #63621: <==uncertain_firing== 64777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65034: <==uncertain_firing== 72442 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #65696: <==uncertain_firing== 35171 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #69088: <==uncertain_firing== 26408 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #69938: <==negation-removal== 64777 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #71858: <==uncertain_firing== 72675 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #74456: <==negation-removal== 35171 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #77864: <==uncertain_firing== 79721 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #82552: <==uncertain_firing== 33605 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #83373: <==negation-removal== 79721 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #84364: <==negation-removal== 37327 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #87686: <==negation-removal== 72442 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #89599: <==negation-removal== 72675 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (at_c_l1))
        :effect (and
                    ; #10492: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #16409: <==closure== 10492 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #35135: <==closure== 67672 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #44633: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #46456: <==closure== 82950 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #67672: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76213: <==closure== 44633 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82950: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #21384: <==negation-removal== 46456 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #27960: <==uncertain_firing== 76213 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28885: <==negation-removal== 16409 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #50028: <==negation-removal== 76213 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #61051: <==uncertain_firing== 67672 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #62206: <==negation-removal== 67672 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #64914: <==negation-removal== 35135 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #66111: <==uncertain_firing== 35135 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #68311: <==negation-removal== 10492 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #71519: <==negation-removal== 82950 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #74215: <==uncertain_firing== 46456 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #74633: <==negation-removal== 44633 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #81592: <==uncertain_firing== 82950 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #86358: <==uncertain_firing== 16409 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #90128: <==uncertain_firing== 10492 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #95716: <==uncertain_firing== 44633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #13552: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #16236: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #26025: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34600: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #41753: <==closure== 13552 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #52553: <==closure== 34600 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #60259: <==closure== 26025 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #74668: <==closure== 16236 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #13695: <==negation-removal== 74668 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14480: <==negation-removal== 16236 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #16809: <==negation-removal== 34600 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #17422: <==uncertain_firing== 60259 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #19792: <==negation-removal== 52553 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #20196: <==uncertain_firing== 26025 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #23518: <==uncertain_firing== 34600 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #26335: <==uncertain_firing== 13552 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #50389: <==negation-removal== 60259 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #52659: <==uncertain_firing== 41753 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #54356: <==uncertain_firing== 52553 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #55480: <==uncertain_firing== 16236 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #56137: <==negation-removal== 41753 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #78204: <==negation-removal== 13552 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #86282: <==uncertain_firing== 74668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #88807: <==negation-removal== 26025 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #35609: <==closure== 75092 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #45008: <==closure== 72206 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #46305: <==closure== 79576 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #72206: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75092: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #79576: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84473: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #87633: <==closure== 84473 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #15877: <==uncertain_firing== 72206 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #19293: <==negation-removal== 35609 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #21720: <==negation-removal== 72206 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22750: <==uncertain_firing== 87633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #28119: <==uncertain_firing== 75092 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #28867: <==negation-removal== 45008 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #29070: <==negation-removal== 46305 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #41098: <==negation-removal== 79576 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #49311: <==negation-removal== 84473 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #54677: <==uncertain_firing== 84473 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #54862: <==uncertain_firing== 79576 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68333: <==uncertain_firing== 35609 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69800: <==uncertain_firing== 45008 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #72198: <==negation-removal== 87633 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #89396: <==uncertain_firing== 46305 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #92056: <==negation-removal== 75092 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Bd_secret_a)
                           (Pd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #21469: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #23987: <==closure== 50577 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #30788: <==closure== 35622 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #35622: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #50577: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #64374: <==closure== 21469 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #78507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #84866: <==closure== 78507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #13261: <==negation-removal== 35622 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #13968: <==uncertain_firing== 84866 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #20990: <==uncertain_firing== 21469 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34038: <==negation-removal== 78507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #37363: <==uncertain_firing== 78507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #43021: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #43971: <==uncertain_firing== 23987 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #50114: <==uncertain_firing== 50577 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #54226: <==negation-removal== 84866 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #57049: <==negation-removal== 23987 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #71184: <==negation-removal== 64374 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #74263: <==uncertain_firing== 64374 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #74625: <==uncertain_firing== 35622 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #86621: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #89431: <==negation-removal== 50577 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #91494: <==negation-removal== 21469 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Pd_secret_b)
                           (at_d_l1)
                           (Bd_secret_b))
        :effect (and
                    ; #18550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #29967: <==closure== 50524 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #50524: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #59939: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #70593: <==closure== 18550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #79999: <==closure== 89089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #87037: <==closure== 59939 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #89089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #14949: <==uncertain_firing== 89089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #16803: <==negation-removal== 89089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #23607: <==uncertain_firing== 29967 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24223: <==uncertain_firing== 50524 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #32530: <==uncertain_firing== 59939 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #39073: <==uncertain_firing== 70593 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #40402: <==uncertain_firing== 18550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #44755: <==negation-removal== 50524 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #50962: <==uncertain_firing== 87037 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55626: <==uncertain_firing== 79999 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #57296: <==negation-removal== 29967 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #58323: <==negation-removal== 79999 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #62116: <==negation-removal== 70593 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #67431: <==negation-removal== 59939 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #71227: <==negation-removal== 18550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #83009: <==negation-removal== 87037 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Pd_secret_b)
                           (at_d_l2)
                           (Bd_secret_b))
        :effect (and
                    ; #24631: <==closure== 61631 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #28235: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #33317: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #39022: <==closure== 28235 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #57316: <==closure== 33317 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #61631: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #81597: <==closure== 86428 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #86428: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #23033: <==uncertain_firing== 24631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #23718: <==negation-removal== 28235 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #25581: <==negation-removal== 39022 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #30692: <==uncertain_firing== 28235 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #37120: <==uncertain_firing== 61631 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37576: <==uncertain_firing== 81597 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #39571: <==uncertain_firing== 86428 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #39969: <==negation-removal== 61631 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #44331: <==uncertain_firing== 57316 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #50504: <==negation-removal== 57316 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51735: <==negation-removal== 81597 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #60749: <==uncertain_firing== 39022 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #64912: <==negation-removal== 33317 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #76449: <==negation-removal== 24631 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81340: <==negation-removal== 86428 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #83665: <==uncertain_firing== 33317 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c))
        :effect (and
                    ; #22596: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40186: <==closure== 72938 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #41117: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44221: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #44842: <==closure== 22596 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69977: <==closure== 44221 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #72618: <==closure== 41117 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72938: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #10550: <==negation-removal== 72618 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #22668: <==negation-removal== 69977 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #25626: <==negation-removal== 40186 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #27656: <==uncertain_firing== 41117 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #31721: <==negation-removal== 41117 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #33249: <==uncertain_firing== 44221 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36564: <==negation-removal== 72938 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #37330: <==negation-removal== 44842 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #67652: <==negation-removal== 44221 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #68229: <==uncertain_firing== 69977 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #75293: <==negation-removal== 22596 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #75951: <==uncertain_firing== 72938 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #77053: <==uncertain_firing== 44842 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #86629: <==uncertain_firing== 72618 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86834: <==uncertain_firing== 40186 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #93598: <==uncertain_firing== 22596 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Pd_secret_c)
                           (Bd_secret_c)
                           (at_d_l2))
        :effect (and
                    ; #26408: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #33605: <==closure== 72675 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #35171: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #37327: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #64777: <==closure== 26408 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #72442: <==closure== 35171 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #72675: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #79721: <==closure== 37327 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #24759: <==uncertain_firing== 37327 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #31266: <==negation-removal== 26408 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #62082: <==negation-removal== 33605 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #63621: <==uncertain_firing== 64777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65034: <==uncertain_firing== 72442 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #65696: <==uncertain_firing== 35171 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #69088: <==uncertain_firing== 26408 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #69938: <==negation-removal== 64777 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #71858: <==uncertain_firing== 72675 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #74456: <==negation-removal== 35171 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #77864: <==uncertain_firing== 79721 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #82552: <==uncertain_firing== 33605 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #83373: <==negation-removal== 79721 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #84364: <==negation-removal== 37327 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #87686: <==negation-removal== 72442 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #89599: <==negation-removal== 72675 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #10492: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #16409: <==closure== 10492 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #35135: <==closure== 67672 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #44633: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #46456: <==closure== 82950 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #67672: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76213: <==closure== 44633 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82950: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #21384: <==negation-removal== 46456 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #27960: <==uncertain_firing== 76213 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #28885: <==negation-removal== 16409 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #50028: <==negation-removal== 76213 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #61051: <==uncertain_firing== 67672 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #62206: <==negation-removal== 67672 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #64914: <==negation-removal== 35135 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #66111: <==uncertain_firing== 35135 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #68311: <==negation-removal== 10492 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #71519: <==negation-removal== 82950 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #74215: <==uncertain_firing== 46456 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #74633: <==negation-removal== 44633 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #81592: <==uncertain_firing== 82950 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #86358: <==uncertain_firing== 16409 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #90128: <==uncertain_firing== 10492 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #95716: <==uncertain_firing== 44633 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l2))
        :effect (and
                    ; #13552: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #16236: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #26025: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34600: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #41753: <==closure== 13552 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #52553: <==closure== 34600 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #60259: <==closure== 26025 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #74668: <==closure== 16236 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #13695: <==negation-removal== 74668 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14480: <==negation-removal== 16236 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #16809: <==negation-removal== 34600 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #17422: <==uncertain_firing== 60259 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #19792: <==negation-removal== 52553 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #20196: <==uncertain_firing== 26025 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #23518: <==uncertain_firing== 34600 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #26335: <==uncertain_firing== 13552 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #50389: <==negation-removal== 60259 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #52659: <==uncertain_firing== 41753 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #54356: <==uncertain_firing== 52553 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #55480: <==uncertain_firing== 16236 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #56137: <==negation-removal== 41753 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #78204: <==negation-removal== 13552 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #86282: <==uncertain_firing== 74668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #88807: <==negation-removal== 26025 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

)