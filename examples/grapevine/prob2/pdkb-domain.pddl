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
                    ; #52669: origin
                    (not_at_a_l1)

                    ; #54418: origin
                    (at_a_l1)

                    ; #52669: <==negation-removal== 54418 (pos)
                    (not (not_at_a_l1))

                    ; #54418: <==negation-removal== 52669 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #52669: origin
                    (not_at_a_l1)

                    ; #77640: origin
                    (at_a_l2)

                    ; #54418: <==negation-removal== 52669 (pos)
                    (not (at_a_l1))

                    ; #87778: <==negation-removal== 77640 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #54418: origin
                    (at_a_l1)

                    ; #87778: origin
                    (not_at_a_l2)

                    ; #52669: <==negation-removal== 54418 (pos)
                    (not (not_at_a_l1))

                    ; #77640: <==negation-removal== 87778 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #77640: origin
                    (at_a_l2)

                    ; #87778: origin
                    (not_at_a_l2)

                    ; #77640: <==negation-removal== 87778 (pos)
                    (not (at_a_l2))

                    ; #87778: <==negation-removal== 77640 (pos)
                    (not (not_at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #31187: origin
                    (at_b_l1)

                    ; #90795: origin
                    (not_at_b_l1)

                    ; #31187: <==negation-removal== 90795 (pos)
                    (not (at_b_l1))

                    ; #90795: <==negation-removal== 31187 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #59514: origin
                    (at_b_l2)

                    ; #90795: origin
                    (not_at_b_l1)

                    ; #31187: <==negation-removal== 90795 (pos)
                    (not (at_b_l1))

                    ; #83624: <==negation-removal== 59514 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #31187: origin
                    (at_b_l1)

                    ; #83624: origin
                    (not_at_b_l2)

                    ; #59514: <==negation-removal== 83624 (pos)
                    (not (at_b_l2))

                    ; #90795: <==negation-removal== 31187 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #59514: origin
                    (at_b_l2)

                    ; #83624: origin
                    (not_at_b_l2)

                    ; #59514: <==negation-removal== 83624 (pos)
                    (not (at_b_l2))

                    ; #83624: <==negation-removal== 59514 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_c_l1))
        :effect (and
                    ; #22280: origin
                    (not_at_c_l1)

                    ; #44900: origin
                    (at_c_l1)

                    ; #22280: <==negation-removal== 44900 (pos)
                    (not (not_at_c_l1))

                    ; #44900: <==negation-removal== 22280 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #22280: origin
                    (not_at_c_l1)

                    ; #92814: origin
                    (at_c_l2)

                    ; #33340: <==negation-removal== 92814 (pos)
                    (not (not_at_c_l2))

                    ; #44900: <==negation-removal== 22280 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #33340: origin
                    (not_at_c_l2)

                    ; #44900: origin
                    (at_c_l1)

                    ; #22280: <==negation-removal== 44900 (pos)
                    (not (not_at_c_l1))

                    ; #92814: <==negation-removal== 33340 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #33340: origin
                    (not_at_c_l2)

                    ; #92814: origin
                    (at_c_l2)

                    ; #33340: <==negation-removal== 92814 (pos)
                    (not (not_at_c_l2))

                    ; #92814: <==negation-removal== 33340 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #18757: origin
                    (at_d_l1)

                    ; #85183: origin
                    (not_at_d_l1)

                    ; #18757: <==negation-removal== 85183 (pos)
                    (not (at_d_l1))

                    ; #85183: <==negation-removal== 18757 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #14985: origin
                    (at_d_l2)

                    ; #85183: origin
                    (not_at_d_l1)

                    ; #18757: <==negation-removal== 85183 (pos)
                    (not (at_d_l1))

                    ; #57201: <==negation-removal== 14985 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #18757: origin
                    (at_d_l1)

                    ; #57201: origin
                    (not_at_d_l2)

                    ; #14985: <==negation-removal== 57201 (pos)
                    (not (at_d_l2))

                    ; #85183: <==negation-removal== 18757 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #14985: origin
                    (at_d_l2)

                    ; #57201: origin
                    (not_at_d_l2)

                    ; #14985: <==negation-removal== 57201 (pos)
                    (not (at_d_l2))

                    ; #57201: <==negation-removal== 14985 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_a)
                           (Pa_secret_a))
        :effect (and
                    ; #13485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #20576: <==closure== 47830 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #34348: <==closure== 91696 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #39687: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #47830: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #83797: <==closure== 13485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #91470: <==closure== 39687 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #91696: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #13330: <==uncertain_firing== 20576 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #15844: <==uncertain_firing== 39687 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17269: <==negation-removal== 13485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #31286: <==negation-removal== 39687 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #37098: <==negation-removal== 91696 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #39990: <==negation-removal== 83797 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #49800: <==negation-removal== 47830 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #50178: <==uncertain_firing== 13485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #66276: <==uncertain_firing== 91696 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68768: <==negation-removal== 20576 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #70044: <==negation-removal== 34348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #77943: <==uncertain_firing== 34348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #81157: <==negation-removal== 91470 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #82511: <==uncertain_firing== 47830 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #86447: <==uncertain_firing== 91470 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #88949: <==uncertain_firing== 83797 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_a)
                           (Pa_secret_a))
        :effect (and
                    ; #29463: <==closure== 78091 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #30570: <==closure== 31676 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #31676: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #32362: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #37918: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #51090: <==closure== 32362 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75470: <==closure== 37918 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #78091: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #15605: <==uncertain_firing== 75470 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #17113: <==negation-removal== 31676 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #17551: <==uncertain_firing== 29463 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #20105: <==uncertain_firing== 32362 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #23372: <==negation-removal== 37918 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #24359: <==negation-removal== 29463 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #25422: <==negation-removal== 75470 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #37703: <==negation-removal== 32362 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47739: <==uncertain_firing== 37918 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #47838: <==negation-removal== 30570 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #48732: <==negation-removal== 78091 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #55186: <==negation-removal== 51090 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #59018: <==uncertain_firing== 78091 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #69360: <==uncertain_firing== 51090 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #77260: <==uncertain_firing== 30570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85576: <==uncertain_firing== 31676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #15593: <==closure== 25848 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25848: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #35658: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #52627: <==closure== 35658 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #58980: <==closure== 73157 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #61337: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73157: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79107: <==closure== 61337 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #20075: <==negation-removal== 73157 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #22551: <==negation-removal== 15593 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #24850: <==negation-removal== 79107 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #29456: <==uncertain_firing== 79107 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #34351: <==negation-removal== 35658 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #41387: <==uncertain_firing== 58980 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #61357: <==negation-removal== 25848 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #65793: <==uncertain_firing== 15593 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #67935: <==negation-removal== 58980 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #70326: <==uncertain_firing== 25848 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #73048: <==uncertain_firing== 61337 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #76443: <==negation-removal== 52627 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #79802: <==uncertain_firing== 52627 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84853: <==uncertain_firing== 73157 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #85570: <==negation-removal== 61337 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #89638: <==uncertain_firing== 35658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #21247: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #29310: <==closure== 78789 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #43406: <==closure== 59198 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #59198: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #69109: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #70758: <==closure== 21247 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #75697: <==closure== 69109 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #78789: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #12632: <==uncertain_firing== 21247 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #16735: <==negation-removal== 21247 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #16899: <==uncertain_firing== 78789 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #18293: <==negation-removal== 70758 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #19300: <==negation-removal== 29310 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #22073: <==uncertain_firing== 59198 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #26645: <==negation-removal== 59198 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30783: <==negation-removal== 78789 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #40646: <==negation-removal== 43406 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #55154: <==uncertain_firing== 43406 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56029: <==uncertain_firing== 70758 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #56659: <==uncertain_firing== 75697 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #63583: <==negation-removal== 69109 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #74571: <==uncertain_firing== 29310 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78795: <==uncertain_firing== 69109 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #85521: <==negation-removal== 75697 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #26578: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #27387: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #35803: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #40588: <==closure== 35803 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #67094: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #68751: <==closure== 26578 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69615: <==closure== 27387 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #84089: <==closure== 67094 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #26082: <==uncertain_firing== 35803 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #27269: <==uncertain_firing== 68751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #32056: <==uncertain_firing== 67094 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #33629: <==negation-removal== 26578 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #34291: <==uncertain_firing== 26578 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #41959: <==negation-removal== 27387 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #41999: <==negation-removal== 84089 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #43369: <==uncertain_firing== 40588 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #43473: <==negation-removal== 35803 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #48134: <==negation-removal== 67094 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #53535: <==negation-removal== 40588 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #54046: <==negation-removal== 68751 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #69960: <==uncertain_firing== 69615 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #72886: <==uncertain_firing== 27387 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #74286: <==negation-removal== 69615 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #85848: <==uncertain_firing== 84089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #11451: <==closure== 88110 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #33912: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39645: <==closure== 33912 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #59173: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83200: <==closure== 59173 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #88110: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #88702: <==closure== 92057 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #92057: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #13159: <==uncertain_firing== 39645 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13752: <==negation-removal== 39645 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #19827: <==uncertain_firing== 92057 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23495: <==negation-removal== 88702 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #25767: <==negation-removal== 88110 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #48250: <==negation-removal== 92057 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #51429: <==uncertain_firing== 11451 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #56798: <==negation-removal== 59173 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #57007: <==negation-removal== 83200 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #58520: <==uncertain_firing== 88110 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #63959: <==uncertain_firing== 59173 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #79728: <==negation-removal== 33912 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #80484: <==uncertain_firing== 33912 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #83597: <==uncertain_firing== 83200 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #87645: <==negation-removal== 11451 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #89817: <==uncertain_firing== 88702 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #13320: <==closure== 33361 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #33361: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #47875: <==closure== 90506 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #52874: <==closure== 92039 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #81076: <==closure== 84811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #84811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90506: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #92039: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13406: <==uncertain_firing== 92039 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #16583: <==uncertain_firing== 13320 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #25594: <==uncertain_firing== 81076 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #30777: <==negation-removal== 90506 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #33099: <==negation-removal== 52874 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #38399: <==uncertain_firing== 84811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #40026: <==uncertain_firing== 52874 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #40602: <==negation-removal== 13320 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #41401: <==uncertain_firing== 33361 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62441: <==negation-removal== 92039 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #63578: <==negation-removal== 81076 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #68972: <==negation-removal== 33361 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #72266: <==negation-removal== 47875 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74470: <==uncertain_firing== 47875 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #83044: <==uncertain_firing== 90506 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #87638: <==negation-removal== 84811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Pa_secret_d)
                           (at_a_l2)
                           (Ba_secret_d))
        :effect (and
                    ; #12579: <==closure== 59718 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23994: <==closure== 85894 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #40311: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #50812: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #59718: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #61772: <==closure== 50812 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #79642: <==closure== 40311 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #85894: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #10332: <==negation-removal== 85894 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #12092: <==uncertain_firing== 12579 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #16511: <==negation-removal== 23994 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #19201: <==uncertain_firing== 61772 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #25574: <==uncertain_firing== 50812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #32044: <==uncertain_firing== 85894 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #36726: <==uncertain_firing== 59718 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #43106: <==uncertain_firing== 23994 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #65142: <==negation-removal== 59718 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #65511: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #69222: <==negation-removal== 50812 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #71253: <==negation-removal== 79642 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #71392: <==negation-removal== 61772 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #74001: <==uncertain_firing== 79642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #75212: <==negation-removal== 12579 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #75231: <==negation-removal== 40311 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #13485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #20576: <==closure== 47830 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #34348: <==closure== 91696 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #39687: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #47830: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #83797: <==closure== 13485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #91470: <==closure== 39687 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #91696: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #13330: <==uncertain_firing== 20576 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #15844: <==uncertain_firing== 39687 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17269: <==negation-removal== 13485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #31286: <==negation-removal== 39687 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #37098: <==negation-removal== 91696 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #39990: <==negation-removal== 83797 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #49800: <==negation-removal== 47830 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #50178: <==uncertain_firing== 13485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #66276: <==uncertain_firing== 91696 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68768: <==negation-removal== 20576 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #70044: <==negation-removal== 34348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #77943: <==uncertain_firing== 34348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #81157: <==negation-removal== 91470 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #82511: <==uncertain_firing== 47830 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #86447: <==uncertain_firing== 91470 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #88949: <==uncertain_firing== 83797 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #29463: <==closure== 78091 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #30570: <==closure== 31676 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #31676: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #32362: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #37918: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #51090: <==closure== 32362 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75470: <==closure== 37918 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #78091: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #15605: <==uncertain_firing== 75470 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #17113: <==negation-removal== 31676 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #17551: <==uncertain_firing== 29463 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #20105: <==uncertain_firing== 32362 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #23372: <==negation-removal== 37918 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #24359: <==negation-removal== 29463 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #25422: <==negation-removal== 75470 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #37703: <==negation-removal== 32362 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47739: <==uncertain_firing== 37918 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #47838: <==negation-removal== 30570 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #48732: <==negation-removal== 78091 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #55186: <==negation-removal== 51090 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #59018: <==uncertain_firing== 78091 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #69360: <==uncertain_firing== 51090 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #77260: <==uncertain_firing== 30570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85576: <==uncertain_firing== 31676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #15593: <==closure== 25848 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25848: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #35658: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #52627: <==closure== 35658 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #58980: <==closure== 73157 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #61337: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73157: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79107: <==closure== 61337 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #20075: <==negation-removal== 73157 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #22551: <==negation-removal== 15593 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #24850: <==negation-removal== 79107 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #29456: <==uncertain_firing== 79107 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #34351: <==negation-removal== 35658 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #41387: <==uncertain_firing== 58980 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #61357: <==negation-removal== 25848 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #65793: <==uncertain_firing== 15593 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #67935: <==negation-removal== 58980 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #70326: <==uncertain_firing== 25848 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #73048: <==uncertain_firing== 61337 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #76443: <==negation-removal== 52627 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #79802: <==uncertain_firing== 52627 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84853: <==uncertain_firing== 73157 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #85570: <==negation-removal== 61337 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #89638: <==uncertain_firing== 35658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #21247: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #29310: <==closure== 78789 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #43406: <==closure== 59198 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #59198: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #69109: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #70758: <==closure== 21247 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #75697: <==closure== 69109 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #78789: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #12632: <==uncertain_firing== 21247 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #16735: <==negation-removal== 21247 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #16899: <==uncertain_firing== 78789 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #18293: <==negation-removal== 70758 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #19300: <==negation-removal== 29310 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #22073: <==uncertain_firing== 59198 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #26645: <==negation-removal== 59198 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30783: <==negation-removal== 78789 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #40646: <==negation-removal== 43406 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #55154: <==uncertain_firing== 43406 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56029: <==uncertain_firing== 70758 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #56659: <==uncertain_firing== 75697 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #63583: <==negation-removal== 69109 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #74571: <==uncertain_firing== 29310 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78795: <==uncertain_firing== 69109 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #85521: <==negation-removal== 75697 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #26578: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #27387: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #35803: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #40588: <==closure== 35803 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #67094: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #68751: <==closure== 26578 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69615: <==closure== 27387 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #84089: <==closure== 67094 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #26082: <==uncertain_firing== 35803 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #27269: <==uncertain_firing== 68751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #32056: <==uncertain_firing== 67094 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #33629: <==negation-removal== 26578 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #34291: <==uncertain_firing== 26578 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #41959: <==negation-removal== 27387 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #41999: <==negation-removal== 84089 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #43369: <==uncertain_firing== 40588 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #43473: <==negation-removal== 35803 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #48134: <==negation-removal== 67094 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #53535: <==negation-removal== 40588 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #54046: <==negation-removal== 68751 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #69960: <==uncertain_firing== 69615 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #72886: <==uncertain_firing== 27387 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #74286: <==negation-removal== 69615 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #85848: <==uncertain_firing== 84089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c)
                           (Pb_secret_c))
        :effect (and
                    ; #11451: <==closure== 88110 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #33912: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39645: <==closure== 33912 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #59173: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83200: <==closure== 59173 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #88110: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #88702: <==closure== 92057 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #92057: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #13159: <==uncertain_firing== 39645 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13752: <==negation-removal== 39645 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #19827: <==uncertain_firing== 92057 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23495: <==negation-removal== 88702 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #25767: <==negation-removal== 88110 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #48250: <==negation-removal== 92057 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #51429: <==uncertain_firing== 11451 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #56798: <==negation-removal== 59173 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #57007: <==negation-removal== 83200 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #58520: <==uncertain_firing== 88110 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #63959: <==uncertain_firing== 59173 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #79728: <==negation-removal== 33912 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #80484: <==uncertain_firing== 33912 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #83597: <==uncertain_firing== 83200 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #87645: <==negation-removal== 11451 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #89817: <==uncertain_firing== 88702 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #13320: <==closure== 33361 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #33361: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #47875: <==closure== 90506 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #52874: <==closure== 92039 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #81076: <==closure== 84811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #84811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90506: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #92039: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13406: <==uncertain_firing== 92039 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #16583: <==uncertain_firing== 13320 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #25594: <==uncertain_firing== 81076 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #30777: <==negation-removal== 90506 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #33099: <==negation-removal== 52874 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #38399: <==uncertain_firing== 84811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #40026: <==uncertain_firing== 52874 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #40602: <==negation-removal== 13320 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #41401: <==uncertain_firing== 33361 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62441: <==negation-removal== 92039 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #63578: <==negation-removal== 81076 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #68972: <==negation-removal== 33361 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #72266: <==negation-removal== 47875 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74470: <==uncertain_firing== 47875 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #83044: <==uncertain_firing== 90506 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #87638: <==negation-removal== 84811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #12579: <==closure== 59718 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23994: <==closure== 85894 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #40311: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #50812: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #59718: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #61772: <==closure== 50812 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #79642: <==closure== 40311 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #85894: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #10332: <==negation-removal== 85894 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #12092: <==uncertain_firing== 12579 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #16511: <==negation-removal== 23994 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #19201: <==uncertain_firing== 61772 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #25574: <==uncertain_firing== 50812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #32044: <==uncertain_firing== 85894 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #36726: <==uncertain_firing== 59718 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #43106: <==uncertain_firing== 23994 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #65142: <==negation-removal== 59718 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #65511: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #69222: <==negation-removal== 50812 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #71253: <==negation-removal== 79642 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #71392: <==negation-removal== 61772 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #74001: <==uncertain_firing== 79642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #75212: <==negation-removal== 12579 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #75231: <==negation-removal== 40311 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #13485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #20576: <==closure== 47830 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #34348: <==closure== 91696 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #39687: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #47830: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #83797: <==closure== 13485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #91470: <==closure== 39687 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #91696: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #13330: <==uncertain_firing== 20576 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #15844: <==uncertain_firing== 39687 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17269: <==negation-removal== 13485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #31286: <==negation-removal== 39687 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #37098: <==negation-removal== 91696 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #39990: <==negation-removal== 83797 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #49800: <==negation-removal== 47830 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #50178: <==uncertain_firing== 13485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #66276: <==uncertain_firing== 91696 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68768: <==negation-removal== 20576 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #70044: <==negation-removal== 34348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #77943: <==uncertain_firing== 34348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #81157: <==negation-removal== 91470 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #82511: <==uncertain_firing== 47830 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #86447: <==uncertain_firing== 91470 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #88949: <==uncertain_firing== 83797 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #29463: <==closure== 78091 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #30570: <==closure== 31676 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #31676: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #32362: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #37918: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #51090: <==closure== 32362 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75470: <==closure== 37918 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #78091: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #15605: <==uncertain_firing== 75470 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #17113: <==negation-removal== 31676 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #17551: <==uncertain_firing== 29463 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #20105: <==uncertain_firing== 32362 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #23372: <==negation-removal== 37918 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #24359: <==negation-removal== 29463 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #25422: <==negation-removal== 75470 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #37703: <==negation-removal== 32362 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47739: <==uncertain_firing== 37918 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #47838: <==negation-removal== 30570 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #48732: <==negation-removal== 78091 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #55186: <==negation-removal== 51090 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #59018: <==uncertain_firing== 78091 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #69360: <==uncertain_firing== 51090 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #77260: <==uncertain_firing== 30570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85576: <==uncertain_firing== 31676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Pc_secret_b)
                           (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #15593: <==closure== 25848 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25848: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #35658: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #52627: <==closure== 35658 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #58980: <==closure== 73157 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #61337: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73157: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79107: <==closure== 61337 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #20075: <==negation-removal== 73157 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #22551: <==negation-removal== 15593 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #24850: <==negation-removal== 79107 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #29456: <==uncertain_firing== 79107 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #34351: <==negation-removal== 35658 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #41387: <==uncertain_firing== 58980 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #61357: <==negation-removal== 25848 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #65793: <==uncertain_firing== 15593 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #67935: <==negation-removal== 58980 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #70326: <==uncertain_firing== 25848 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #73048: <==uncertain_firing== 61337 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #76443: <==negation-removal== 52627 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #79802: <==uncertain_firing== 52627 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84853: <==uncertain_firing== 73157 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #85570: <==negation-removal== 61337 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #89638: <==uncertain_firing== 35658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #21247: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #29310: <==closure== 78789 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #43406: <==closure== 59198 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #59198: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #69109: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #70758: <==closure== 21247 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #75697: <==closure== 69109 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #78789: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #12632: <==uncertain_firing== 21247 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #16735: <==negation-removal== 21247 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #16899: <==uncertain_firing== 78789 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #18293: <==negation-removal== 70758 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #19300: <==negation-removal== 29310 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #22073: <==uncertain_firing== 59198 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #26645: <==negation-removal== 59198 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30783: <==negation-removal== 78789 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #40646: <==negation-removal== 43406 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #55154: <==uncertain_firing== 43406 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56029: <==uncertain_firing== 70758 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #56659: <==uncertain_firing== 75697 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #63583: <==negation-removal== 69109 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #74571: <==uncertain_firing== 29310 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78795: <==uncertain_firing== 69109 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #85521: <==negation-removal== 75697 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Pc_secret_c)
                           (at_c_l1)
                           (Bc_secret_c))
        :effect (and
                    ; #26578: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #27387: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #35803: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #40588: <==closure== 35803 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #67094: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #68751: <==closure== 26578 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69615: <==closure== 27387 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #84089: <==closure== 67094 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #26082: <==uncertain_firing== 35803 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #27269: <==uncertain_firing== 68751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #32056: <==uncertain_firing== 67094 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #33629: <==negation-removal== 26578 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #34291: <==uncertain_firing== 26578 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #41959: <==negation-removal== 27387 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #41999: <==negation-removal== 84089 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #43369: <==uncertain_firing== 40588 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #43473: <==negation-removal== 35803 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #48134: <==negation-removal== 67094 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #53535: <==negation-removal== 40588 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #54046: <==negation-removal== 68751 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #69960: <==uncertain_firing== 69615 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #72886: <==uncertain_firing== 27387 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #74286: <==negation-removal== 69615 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #85848: <==uncertain_firing== 84089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #11451: <==closure== 88110 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #33912: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39645: <==closure== 33912 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #59173: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83200: <==closure== 59173 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #88110: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #88702: <==closure== 92057 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #92057: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #13159: <==uncertain_firing== 39645 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13752: <==negation-removal== 39645 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #19827: <==uncertain_firing== 92057 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23495: <==negation-removal== 88702 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #25767: <==negation-removal== 88110 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #48250: <==negation-removal== 92057 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #51429: <==uncertain_firing== 11451 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #56798: <==negation-removal== 59173 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #57007: <==negation-removal== 83200 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #58520: <==uncertain_firing== 88110 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #63959: <==uncertain_firing== 59173 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #79728: <==negation-removal== 33912 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #80484: <==uncertain_firing== 33912 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #83597: <==uncertain_firing== 83200 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #87645: <==negation-removal== 11451 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #89817: <==uncertain_firing== 88702 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Bc_secret_d)
                           (at_c_l1)
                           (Pc_secret_d))
        :effect (and
                    ; #13320: <==closure== 33361 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #33361: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #47875: <==closure== 90506 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #52874: <==closure== 92039 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #81076: <==closure== 84811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #84811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90506: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #92039: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13406: <==uncertain_firing== 92039 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #16583: <==uncertain_firing== 13320 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #25594: <==uncertain_firing== 81076 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #30777: <==negation-removal== 90506 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #33099: <==negation-removal== 52874 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #38399: <==uncertain_firing== 84811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #40026: <==uncertain_firing== 52874 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #40602: <==negation-removal== 13320 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #41401: <==uncertain_firing== 33361 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62441: <==negation-removal== 92039 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #63578: <==negation-removal== 81076 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #68972: <==negation-removal== 33361 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #72266: <==negation-removal== 47875 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74470: <==uncertain_firing== 47875 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #83044: <==uncertain_firing== 90506 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #87638: <==negation-removal== 84811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #12579: <==closure== 59718 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23994: <==closure== 85894 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #40311: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #50812: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #59718: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #61772: <==closure== 50812 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #79642: <==closure== 40311 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #85894: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #10332: <==negation-removal== 85894 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #12092: <==uncertain_firing== 12579 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #16511: <==negation-removal== 23994 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #19201: <==uncertain_firing== 61772 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #25574: <==uncertain_firing== 50812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #32044: <==uncertain_firing== 85894 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #36726: <==uncertain_firing== 59718 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #43106: <==uncertain_firing== 23994 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #65142: <==negation-removal== 59718 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #65511: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #69222: <==negation-removal== 50812 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #71253: <==negation-removal== 79642 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #71392: <==negation-removal== 61772 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #74001: <==uncertain_firing== 79642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #75212: <==negation-removal== 12579 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #75231: <==negation-removal== 40311 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #13485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #20576: <==closure== 47830 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #34348: <==closure== 91696 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #39687: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #47830: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #83797: <==closure== 13485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #91470: <==closure== 39687 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #91696: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #13330: <==uncertain_firing== 20576 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #15844: <==uncertain_firing== 39687 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17269: <==negation-removal== 13485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #31286: <==negation-removal== 39687 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #37098: <==negation-removal== 91696 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #39990: <==negation-removal== 83797 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #49800: <==negation-removal== 47830 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #50178: <==uncertain_firing== 13485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #66276: <==uncertain_firing== 91696 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #68768: <==negation-removal== 20576 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #70044: <==negation-removal== 34348 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #77943: <==uncertain_firing== 34348 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #81157: <==negation-removal== 91470 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #82511: <==uncertain_firing== 47830 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #86447: <==uncertain_firing== 91470 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #88949: <==uncertain_firing== 83797 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #29463: <==closure== 78091 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #30570: <==closure== 31676 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #31676: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #32362: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #37918: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #51090: <==closure== 32362 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75470: <==closure== 37918 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #78091: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #15605: <==uncertain_firing== 75470 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #17113: <==negation-removal== 31676 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #17551: <==uncertain_firing== 29463 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #20105: <==uncertain_firing== 32362 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #23372: <==negation-removal== 37918 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #24359: <==negation-removal== 29463 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #25422: <==negation-removal== 75470 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #37703: <==negation-removal== 32362 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47739: <==uncertain_firing== 37918 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #47838: <==negation-removal== 30570 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #48732: <==negation-removal== 78091 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #55186: <==negation-removal== 51090 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #59018: <==uncertain_firing== 78091 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #69360: <==uncertain_firing== 51090 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #77260: <==uncertain_firing== 30570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85576: <==uncertain_firing== 31676 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_b)
                           (Bd_secret_b))
        :effect (and
                    ; #15593: <==closure== 25848 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #25848: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #35658: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #52627: <==closure== 35658 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #58980: <==closure== 73157 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #61337: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73157: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #79107: <==closure== 61337 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #20075: <==negation-removal== 73157 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #22551: <==negation-removal== 15593 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #24850: <==negation-removal== 79107 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #29456: <==uncertain_firing== 79107 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #34351: <==negation-removal== 35658 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #41387: <==uncertain_firing== 58980 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #61357: <==negation-removal== 25848 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #65793: <==uncertain_firing== 15593 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #67935: <==negation-removal== 58980 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #70326: <==uncertain_firing== 25848 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #73048: <==uncertain_firing== 61337 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #76443: <==negation-removal== 52627 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #79802: <==uncertain_firing== 52627 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #84853: <==uncertain_firing== 73157 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #85570: <==negation-removal== 61337 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #89638: <==uncertain_firing== 35658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_b)
                           (Bd_secret_b))
        :effect (and
                    ; #21247: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #29310: <==closure== 78789 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #43406: <==closure== 59198 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #59198: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #69109: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #70758: <==closure== 21247 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #75697: <==closure== 69109 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #78789: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #12632: <==uncertain_firing== 21247 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #16735: <==negation-removal== 21247 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #16899: <==uncertain_firing== 78789 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #18293: <==negation-removal== 70758 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #19300: <==negation-removal== 29310 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #22073: <==uncertain_firing== 59198 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #26645: <==negation-removal== 59198 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30783: <==negation-removal== 78789 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #40646: <==negation-removal== 43406 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #55154: <==uncertain_firing== 43406 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56029: <==uncertain_firing== 70758 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #56659: <==uncertain_firing== 75697 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #63583: <==negation-removal== 69109 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #74571: <==uncertain_firing== 29310 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78795: <==uncertain_firing== 69109 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #85521: <==negation-removal== 75697 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (Pd_secret_c)
                           (at_d_l1))
        :effect (and
                    ; #26578: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #27387: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #35803: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #40588: <==closure== 35803 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #67094: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #68751: <==closure== 26578 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #69615: <==closure== 27387 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #84089: <==closure== 67094 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #26082: <==uncertain_firing== 35803 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #27269: <==uncertain_firing== 68751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #32056: <==uncertain_firing== 67094 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #33629: <==negation-removal== 26578 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #34291: <==uncertain_firing== 26578 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #41959: <==negation-removal== 27387 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #41999: <==negation-removal== 84089 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #43369: <==uncertain_firing== 40588 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #43473: <==negation-removal== 35803 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #48134: <==negation-removal== 67094 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #53535: <==negation-removal== 40588 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #54046: <==negation-removal== 68751 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #69960: <==uncertain_firing== 69615 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #72886: <==uncertain_firing== 27387 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #74286: <==negation-removal== 69615 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #85848: <==uncertain_firing== 84089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #11451: <==closure== 88110 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #33912: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #39645: <==closure== 33912 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #59173: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83200: <==closure== 59173 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #88110: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #88702: <==closure== 92057 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #92057: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #13159: <==uncertain_firing== 39645 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13752: <==negation-removal== 39645 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #19827: <==uncertain_firing== 92057 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23495: <==negation-removal== 88702 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #25767: <==negation-removal== 88110 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #48250: <==negation-removal== 92057 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #51429: <==uncertain_firing== 11451 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #56798: <==negation-removal== 59173 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #57007: <==negation-removal== 83200 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #58520: <==uncertain_firing== 88110 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #63959: <==uncertain_firing== 59173 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #79728: <==negation-removal== 33912 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #80484: <==uncertain_firing== 33912 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #83597: <==uncertain_firing== 83200 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #87645: <==negation-removal== 11451 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #89817: <==uncertain_firing== 88702 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (at_d_l1)
                           (Pd_secret_d))
        :effect (and
                    ; #13320: <==closure== 33361 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #33361: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #47875: <==closure== 90506 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #52874: <==closure== 92039 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #81076: <==closure== 84811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #84811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90506: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #92039: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13406: <==uncertain_firing== 92039 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #16583: <==uncertain_firing== 13320 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #25594: <==uncertain_firing== 81076 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #30777: <==negation-removal== 90506 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #33099: <==negation-removal== 52874 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #38399: <==uncertain_firing== 84811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #40026: <==uncertain_firing== 52874 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #40602: <==negation-removal== 13320 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #41401: <==uncertain_firing== 33361 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62441: <==negation-removal== 92039 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #63578: <==negation-removal== 81076 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #68972: <==negation-removal== 33361 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #72266: <==negation-removal== 47875 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74470: <==uncertain_firing== 47875 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #83044: <==uncertain_firing== 90506 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #87638: <==negation-removal== 84811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Bd_secret_d)
                           (at_d_l2)
                           (Pd_secret_d))
        :effect (and
                    ; #12579: <==closure== 59718 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #23994: <==closure== 85894 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #40311: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #50812: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #59718: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #61772: <==closure== 50812 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #79642: <==closure== 40311 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #85894: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #10332: <==negation-removal== 85894 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #12092: <==uncertain_firing== 12579 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #16511: <==negation-removal== 23994 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #19201: <==uncertain_firing== 61772 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #25574: <==uncertain_firing== 50812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #32044: <==uncertain_firing== 85894 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #36726: <==uncertain_firing== 59718 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #43106: <==uncertain_firing== 23994 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #65142: <==negation-removal== 59718 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #65511: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #69222: <==negation-removal== 50812 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #71253: <==negation-removal== 79642 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #71392: <==negation-removal== 61772 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #74001: <==uncertain_firing== 79642 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #75212: <==negation-removal== 12579 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #75231: <==negation-removal== 40311 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))))

)