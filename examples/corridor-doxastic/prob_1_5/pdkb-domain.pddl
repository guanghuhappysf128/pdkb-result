(define (domain corridor)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_l1)
        (not_at_l2)
        (not_at_l3)
        (not_at_l4)
        (not_secret)
        (not_succ_l1_l1)
        (not_succ_l1_l2)
        (not_succ_l1_l3)
        (not_succ_l1_l4)
        (not_succ_l2_l1)
        (not_succ_l2_l2)
        (not_succ_l2_l3)
        (not_succ_l2_l4)
        (not_succ_l3_l1)
        (not_succ_l3_l2)
        (not_succ_l3_l3)
        (not_succ_l3_l4)
        (not_succ_l4_l1)
        (not_succ_l4_l2)
        (not_succ_l4_l3)
        (not_succ_l4_l4)
        (Ba_not_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_secret)
        (Bd_not_secret)
        (Bd_secret)
        (Be_not_secret)
        (Be_secret)
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
        (Pd_not_secret)
        (Pd_secret)
        (Pe_not_secret)
        (Pe_secret)
        (at_l1)
        (at_l2)
        (at_l3)
        (at_l4)
        (secret)
        (succ_l1_l1)
        (succ_l1_l2)
        (succ_l1_l3)
        (succ_l1_l4)
        (succ_l2_l1)
        (succ_l2_l2)
        (succ_l2_l3)
        (succ_l2_l4)
        (succ_l3_l1)
        (succ_l3_l2)
        (succ_l3_l3)
        (succ_l3_l4)
        (succ_l4_l1)
        (succ_l4_l2)
        (succ_l4_l3)
        (succ_l4_l4)
    )

    (:action fib-1
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #35641: origin
                    (Bd_not_secret)

                    ; #39807: origin
                    (Bb_not_secret)

                    ; #39936: <==closure== 39807 (pos)
                    (Pb_not_secret)

                    ; #71717: <==closure== 35641 (pos)
                    (Pd_not_secret)

                    ; #16874: <==negation-removal== 71717 (pos)
                    (not (Bd_secret))

                    ; #32683: <==negation-removal== 39807 (pos)
                    (not (Pb_secret))

                    ; #72623: <==negation-removal== 39936 (pos)
                    (not (Bb_secret))

                    ; #86620: <==negation-removal== 35641 (pos)
                    (not (Pd_secret))))

    (:action fib-2
        :precondition (and (at_l2)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #18105: origin
                    (Bc_not_secret)

                    ; #19942: <==closure== 18105 (pos)
                    (Pc_not_secret)

                    ; #35641: origin
                    (Bd_not_secret)

                    ; #39807: origin
                    (Bb_not_secret)

                    ; #39936: <==closure== 39807 (pos)
                    (Pb_not_secret)

                    ; #69124: origin
                    (Be_not_secret)

                    ; #71717: <==closure== 35641 (pos)
                    (Pd_not_secret)

                    ; #75442: <==closure== 69124 (pos)
                    (Pe_not_secret)

                    ; #16874: <==negation-removal== 71717 (pos)
                    (not (Bd_secret))

                    ; #23257: <==negation-removal== 18105 (pos)
                    (not (Pc_secret))

                    ; #32683: <==negation-removal== 39807 (pos)
                    (not (Pb_secret))

                    ; #41375: <==negation-removal== 69124 (pos)
                    (not (Pe_secret))

                    ; #65756: <==negation-removal== 75442 (pos)
                    (not (Be_secret))

                    ; #72623: <==negation-removal== 39936 (pos)
                    (not (Bb_secret))

                    ; #86620: <==negation-removal== 35641 (pos)
                    (not (Pd_secret))

                    ; #90220: <==negation-removal== 19942 (pos)
                    (not (Bc_secret))))

    (:action fib-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #18105: origin
                    (Bc_not_secret)

                    ; #19942: <==closure== 18105 (pos)
                    (Pc_not_secret)

                    ; #39807: origin
                    (Bb_not_secret)

                    ; #39936: <==closure== 39807 (pos)
                    (Pb_not_secret)

                    ; #69124: origin
                    (Be_not_secret)

                    ; #75442: <==closure== 69124 (pos)
                    (Pe_not_secret)

                    ; #23257: <==negation-removal== 18105 (pos)
                    (not (Pc_secret))

                    ; #32683: <==negation-removal== 39807 (pos)
                    (not (Pb_secret))

                    ; #41375: <==negation-removal== 69124 (pos)
                    (not (Pe_secret))

                    ; #65756: <==negation-removal== 75442 (pos)
                    (not (Be_secret))

                    ; #72623: <==negation-removal== 39936 (pos)
                    (not (Bb_secret))

                    ; #90220: <==negation-removal== 19942 (pos)
                    (not (Bc_secret))))

    (:action fib-4
        :precondition (and (at_l4)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #18105: origin
                    (Bc_not_secret)

                    ; #19942: <==closure== 18105 (pos)
                    (Pc_not_secret)

                    ; #69124: origin
                    (Be_not_secret)

                    ; #75442: <==closure== 69124 (pos)
                    (Pe_not_secret)

                    ; #23257: <==negation-removal== 18105 (pos)
                    (not (Pc_secret))

                    ; #41375: <==negation-removal== 69124 (pos)
                    (not (Pe_secret))

                    ; #65756: <==negation-removal== 75442 (pos)
                    (not (Be_secret))

                    ; #90220: <==negation-removal== 19942 (pos)
                    (not (Bc_secret))))

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #57071: origin
                    (at_l1)

                    ; #75655: origin
                    (not_at_l1)

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #45152: origin
                    (not_at_l2)

                    ; #57071: origin
                    (at_l1)

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #57071: origin
                    (at_l1)

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #57071: origin
                    (at_l1)

                    ; #59373: origin
                    (not_at_l4)

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #32723: origin
                    (at_l2)

                    ; #75655: origin
                    (not_at_l1)

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #32723: origin
                    (at_l2)

                    ; #45152: origin
                    (not_at_l2)

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #32723: origin
                    (at_l2)

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #32723: origin
                    (at_l2)

                    ; #59373: origin
                    (not_at_l4)

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #68190: origin
                    (at_l3)

                    ; #75655: origin
                    (not_at_l1)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #45152: origin
                    (not_at_l2)

                    ; #68190: origin
                    (at_l3)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #68190: origin
                    (at_l3)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #59373: origin
                    (not_at_l4)

                    ; #68190: origin
                    (at_l3)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #75655: origin
                    (not_at_l1)

                    ; #80116: origin
                    (at_l4)

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #45152: origin
                    (not_at_l2)

                    ; #80116: origin
                    (at_l4)

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #80116: origin
                    (at_l4)

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #59373: origin
                    (not_at_l4)

                    ; #80116: origin
                    (at_l4)

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #57071: origin
                    (at_l1)

                    ; #75655: origin
                    (not_at_l1)

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #32723: origin
                    (at_l2)

                    ; #75655: origin
                    (not_at_l1)

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #68190: origin
                    (at_l3)

                    ; #75655: origin
                    (not_at_l1)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #75655: origin
                    (not_at_l1)

                    ; #80116: origin
                    (at_l4)

                    ; #57071: <==negation-removal== 75655 (pos)
                    (not (at_l1))

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #45152: origin
                    (not_at_l2)

                    ; #57071: origin
                    (at_l1)

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #32723: origin
                    (at_l2)

                    ; #45152: origin
                    (not_at_l2)

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (at_l2)
                           (succ_l2_l3))
        :effect (and
                    ; #45152: origin
                    (not_at_l2)

                    ; #68190: origin
                    (at_l3)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #45152: origin
                    (not_at_l2)

                    ; #80116: origin
                    (at_l4)

                    ; #32723: <==negation-removal== 45152 (pos)
                    (not (at_l2))

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #57071: origin
                    (at_l1)

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #32723: origin
                    (at_l2)

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #68190: origin
                    (at_l3)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #16755: origin
                    (not_at_l3)

                    ; #80116: origin
                    (at_l4)

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))

                    ; #68190: <==negation-removal== 16755 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #57071: origin
                    (at_l1)

                    ; #59373: origin
                    (not_at_l4)

                    ; #75655: <==negation-removal== 57071 (pos)
                    (not (not_at_l1))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #32723: origin
                    (at_l2)

                    ; #59373: origin
                    (not_at_l4)

                    ; #45152: <==negation-removal== 32723 (pos)
                    (not (not_at_l2))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #59373: origin
                    (not_at_l4)

                    ; #68190: origin
                    (at_l3)

                    ; #16755: <==negation-removal== 68190 (pos)
                    (not (not_at_l3))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #59373: origin
                    (not_at_l4)

                    ; #80116: origin
                    (at_l4)

                    ; #59373: <==negation-removal== 80116 (pos)
                    (not (not_at_l4))

                    ; #80116: <==negation-removal== 59373 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #82189: origin
                    (Ba_secret)

                    ; #84631: <==closure== 82189 (pos)
                    (Pa_secret)

                    ; #33433: <==negation-removal== 82189 (pos)
                    (not (Pa_not_secret))

                    ; #67785: <==negation-removal== 84631 (pos)
                    (not (Ba_not_secret))))

    (:action shout-1
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #16874: origin
                    (Bd_secret)

                    ; #32683: <==closure== 72623 (pos)
                    (Pb_secret)

                    ; #72623: origin
                    (Bb_secret)

                    ; #86620: <==closure== 16874 (pos)
                    (Pd_secret)

                    ; #35641: <==negation-removal== 86620 (pos)
                    (not (Bd_not_secret))

                    ; #39807: <==negation-removal== 32683 (pos)
                    (not (Bb_not_secret))

                    ; #39936: <==negation-removal== 72623 (pos)
                    (not (Pb_not_secret))

                    ; #71717: <==negation-removal== 16874 (pos)
                    (not (Pd_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #16874: origin
                    (Bd_secret)

                    ; #23257: <==closure== 90220 (pos)
                    (Pc_secret)

                    ; #32683: <==closure== 72623 (pos)
                    (Pb_secret)

                    ; #41375: <==closure== 65756 (pos)
                    (Pe_secret)

                    ; #65756: origin
                    (Be_secret)

                    ; #72623: origin
                    (Bb_secret)

                    ; #86620: <==closure== 16874 (pos)
                    (Pd_secret)

                    ; #90220: origin
                    (Bc_secret)

                    ; #18105: <==negation-removal== 23257 (pos)
                    (not (Bc_not_secret))

                    ; #19942: <==negation-removal== 90220 (pos)
                    (not (Pc_not_secret))

                    ; #35641: <==negation-removal== 86620 (pos)
                    (not (Bd_not_secret))

                    ; #39807: <==negation-removal== 32683 (pos)
                    (not (Bb_not_secret))

                    ; #39936: <==negation-removal== 72623 (pos)
                    (not (Pb_not_secret))

                    ; #69124: <==negation-removal== 41375 (pos)
                    (not (Be_not_secret))

                    ; #71717: <==negation-removal== 16874 (pos)
                    (not (Pd_not_secret))

                    ; #75442: <==negation-removal== 65756 (pos)
                    (not (Pe_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #23257: <==closure== 90220 (pos)
                    (Pc_secret)

                    ; #32683: <==closure== 72623 (pos)
                    (Pb_secret)

                    ; #41375: <==closure== 65756 (pos)
                    (Pe_secret)

                    ; #65756: origin
                    (Be_secret)

                    ; #72623: origin
                    (Bb_secret)

                    ; #90220: origin
                    (Bc_secret)

                    ; #18105: <==negation-removal== 23257 (pos)
                    (not (Bc_not_secret))

                    ; #19942: <==negation-removal== 90220 (pos)
                    (not (Pc_not_secret))

                    ; #39807: <==negation-removal== 32683 (pos)
                    (not (Bb_not_secret))

                    ; #39936: <==negation-removal== 72623 (pos)
                    (not (Pb_not_secret))

                    ; #69124: <==negation-removal== 41375 (pos)
                    (not (Be_not_secret))

                    ; #75442: <==negation-removal== 65756 (pos)
                    (not (Pe_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #23257: <==closure== 90220 (pos)
                    (Pc_secret)

                    ; #41375: <==closure== 65756 (pos)
                    (Pe_secret)

                    ; #65756: origin
                    (Be_secret)

                    ; #90220: origin
                    (Bc_secret)

                    ; #18105: <==negation-removal== 23257 (pos)
                    (not (Bc_not_secret))

                    ; #19942: <==negation-removal== 90220 (pos)
                    (not (Pc_not_secret))

                    ; #69124: <==negation-removal== 41375 (pos)
                    (not (Be_not_secret))

                    ; #75442: <==negation-removal== 65756 (pos)
                    (not (Pe_not_secret))))

)