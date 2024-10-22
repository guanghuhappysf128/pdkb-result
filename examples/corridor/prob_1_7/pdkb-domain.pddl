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
        (Bf_not_secret)
        (Bf_secret)
        (Bg_not_secret)
        (Bg_secret)
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
        (Pf_not_secret)
        (Pf_secret)
        (Pg_not_secret)
        (Pg_secret)
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

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #58736: origin
                    (not_at_l1)

                    ; #66442: origin
                    (at_l1)

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #66442: origin
                    (at_l1)

                    ; #67814: origin
                    (not_at_l2)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #66442: origin
                    (at_l1)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #66442: origin
                    (at_l1)

                    ; #84635: origin
                    (not_at_l4)

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #58736: origin
                    (not_at_l1)

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #67814: origin
                    (not_at_l2)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #84635: origin
                    (not_at_l4)

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #58736: origin
                    (not_at_l1)

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #67814: origin
                    (not_at_l2)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #84635: origin
                    (not_at_l4)

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #58736: origin
                    (not_at_l1)

                    ; #69553: origin
                    (at_l4)

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #67814: origin
                    (not_at_l2)

                    ; #69553: origin
                    (at_l4)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #69553: origin
                    (at_l4)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #69553: origin
                    (at_l4)

                    ; #84635: origin
                    (not_at_l4)

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #58736: origin
                    (not_at_l1)

                    ; #66442: origin
                    (at_l1)

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #58736: origin
                    (not_at_l1)

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #58736: origin
                    (not_at_l1)

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #58736: origin
                    (not_at_l1)

                    ; #69553: origin
                    (at_l4)

                    ; #66442: <==negation-removal== 58736 (pos)
                    (not (at_l1))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #66442: origin
                    (at_l1)

                    ; #67814: origin
                    (not_at_l2)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #67814: origin
                    (not_at_l2)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #67814: origin
                    (not_at_l2)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #67814: origin
                    (not_at_l2)

                    ; #69553: origin
                    (at_l4)

                    ; #47361: <==negation-removal== 67814 (pos)
                    (not (at_l2))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #66442: origin
                    (at_l1)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #69553: origin
                    (at_l4)

                    ; #75736: origin
                    (not_at_l3)

                    ; #22362: <==negation-removal== 75736 (pos)
                    (not (at_l3))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #66442: origin
                    (at_l1)

                    ; #84635: origin
                    (not_at_l4)

                    ; #58736: <==negation-removal== 66442 (pos)
                    (not (not_at_l1))

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #47361: origin
                    (at_l2)

                    ; #84635: origin
                    (not_at_l4)

                    ; #67814: <==negation-removal== 47361 (pos)
                    (not (not_at_l2))

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #22362: origin
                    (at_l3)

                    ; #84635: origin
                    (not_at_l4)

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))

                    ; #75736: <==negation-removal== 22362 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #69553: origin
                    (at_l4)

                    ; #84635: origin
                    (not_at_l4)

                    ; #69553: <==negation-removal== 84635 (pos)
                    (not (at_l4))

                    ; #84635: <==negation-removal== 69553 (pos)
                    (not (not_at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #43133: origin
                    (Ba_secret)

                    ; #67883: <==closure== 43133 (pos)
                    (Pa_secret)

                    ; #29757: <==negation-removal== 43133 (pos)
                    (not (Pa_not_secret))

                    ; #35564: <==negation-removal== 67883 (pos)
                    (not (Ba_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l1))
        :effect (and
                    ; #40687: origin
                    (Bb_secret)

                    ; #53951: <==closure== 40687 (pos)
                    (Pb_secret)

                    ; #55776: <==closure== 59702 (pos)
                    (Pd_secret)

                    ; #56806: origin
                    (Bf_secret)

                    ; #59702: origin
                    (Bd_secret)

                    ; #85385: <==closure== 56806 (pos)
                    (Pf_secret)

                    ; #21964: <==negation-removal== 56806 (pos)
                    (not (Pf_not_secret))

                    ; #24108: <==negation-removal== 59702 (pos)
                    (not (Pd_not_secret))

                    ; #45368: <==negation-removal== 40687 (pos)
                    (not (Pb_not_secret))

                    ; #68044: <==negation-removal== 53951 (pos)
                    (not (Bb_not_secret))

                    ; #86327: <==negation-removal== 55776 (pos)
                    (not (Bd_not_secret))

                    ; #86401: <==negation-removal== 85385 (pos)
                    (not (Bf_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #10695: origin
                    (Bc_secret)

                    ; #31501: <==closure== 66136 (pos)
                    (Pg_secret)

                    ; #37867: <==closure== 89027 (pos)
                    (Pe_secret)

                    ; #40687: origin
                    (Bb_secret)

                    ; #53951: <==closure== 40687 (pos)
                    (Pb_secret)

                    ; #55776: <==closure== 59702 (pos)
                    (Pd_secret)

                    ; #56806: origin
                    (Bf_secret)

                    ; #59702: origin
                    (Bd_secret)

                    ; #66136: origin
                    (Bg_secret)

                    ; #84133: <==closure== 10695 (pos)
                    (Pc_secret)

                    ; #85385: <==closure== 56806 (pos)
                    (Pf_secret)

                    ; #89027: origin
                    (Be_secret)

                    ; #14652: <==negation-removal== 84133 (pos)
                    (not (Bc_not_secret))

                    ; #21964: <==negation-removal== 56806 (pos)
                    (not (Pf_not_secret))

                    ; #24108: <==negation-removal== 59702 (pos)
                    (not (Pd_not_secret))

                    ; #42002: <==negation-removal== 31501 (pos)
                    (not (Bg_not_secret))

                    ; #45368: <==negation-removal== 40687 (pos)
                    (not (Pb_not_secret))

                    ; #60845: <==negation-removal== 37867 (pos)
                    (not (Be_not_secret))

                    ; #66519: <==negation-removal== 10695 (pos)
                    (not (Pc_not_secret))

                    ; #68044: <==negation-removal== 53951 (pos)
                    (not (Bb_not_secret))

                    ; #70728: <==negation-removal== 66136 (pos)
                    (not (Pg_not_secret))

                    ; #80534: <==negation-removal== 89027 (pos)
                    (not (Pe_not_secret))

                    ; #86327: <==negation-removal== 55776 (pos)
                    (not (Bd_not_secret))

                    ; #86401: <==negation-removal== 85385 (pos)
                    (not (Bf_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #10695: origin
                    (Bc_secret)

                    ; #31501: <==closure== 66136 (pos)
                    (Pg_secret)

                    ; #37867: <==closure== 89027 (pos)
                    (Pe_secret)

                    ; #40687: origin
                    (Bb_secret)

                    ; #53951: <==closure== 40687 (pos)
                    (Pb_secret)

                    ; #55776: <==closure== 59702 (pos)
                    (Pd_secret)

                    ; #56806: origin
                    (Bf_secret)

                    ; #59702: origin
                    (Bd_secret)

                    ; #66136: origin
                    (Bg_secret)

                    ; #84133: <==closure== 10695 (pos)
                    (Pc_secret)

                    ; #85385: <==closure== 56806 (pos)
                    (Pf_secret)

                    ; #89027: origin
                    (Be_secret)

                    ; #14652: <==negation-removal== 84133 (pos)
                    (not (Bc_not_secret))

                    ; #21964: <==negation-removal== 56806 (pos)
                    (not (Pf_not_secret))

                    ; #24108: <==negation-removal== 59702 (pos)
                    (not (Pd_not_secret))

                    ; #42002: <==negation-removal== 31501 (pos)
                    (not (Bg_not_secret))

                    ; #45368: <==negation-removal== 40687 (pos)
                    (not (Pb_not_secret))

                    ; #60845: <==negation-removal== 37867 (pos)
                    (not (Be_not_secret))

                    ; #66519: <==negation-removal== 10695 (pos)
                    (not (Pc_not_secret))

                    ; #68044: <==negation-removal== 53951 (pos)
                    (not (Bb_not_secret))

                    ; #70728: <==negation-removal== 66136 (pos)
                    (not (Pg_not_secret))

                    ; #80534: <==negation-removal== 89027 (pos)
                    (not (Pe_not_secret))

                    ; #86327: <==negation-removal== 55776 (pos)
                    (not (Bd_not_secret))

                    ; #86401: <==negation-removal== 85385 (pos)
                    (not (Bf_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #10695: origin
                    (Bc_secret)

                    ; #31501: <==closure== 66136 (pos)
                    (Pg_secret)

                    ; #37867: <==closure== 89027 (pos)
                    (Pe_secret)

                    ; #66136: origin
                    (Bg_secret)

                    ; #84133: <==closure== 10695 (pos)
                    (Pc_secret)

                    ; #89027: origin
                    (Be_secret)

                    ; #14652: <==negation-removal== 84133 (pos)
                    (not (Bc_not_secret))

                    ; #42002: <==negation-removal== 31501 (pos)
                    (not (Bg_not_secret))

                    ; #60845: <==negation-removal== 37867 (pos)
                    (not (Be_not_secret))

                    ; #66519: <==negation-removal== 10695 (pos)
                    (not (Pc_not_secret))

                    ; #70728: <==negation-removal== 66136 (pos)
                    (not (Pg_not_secret))

                    ; #80534: <==negation-removal== 89027 (pos)
                    (not (Pe_not_secret))))

)