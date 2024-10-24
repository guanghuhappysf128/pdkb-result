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
        :precondition (and (Ba_secret)
                           (at_l1)
                           (Pa_secret))
        :effect (and
                    ; #25687: origin
                    (Bd_not_secret)

                    ; #46477: <==closure== 85392 (pos)
                    (Pb_not_secret)

                    ; #74472: <==closure== 25687 (pos)
                    (Pd_not_secret)

                    ; #85392: origin
                    (Bb_not_secret)

                    ; #32215: <==negation-removal== 25687 (pos)
                    (not (Pd_secret))

                    ; #53128: <==negation-removal== 46477 (pos)
                    (not (Bb_secret))

                    ; #61276: <==negation-removal== 85392 (pos)
                    (not (Pb_secret))

                    ; #86413: <==negation-removal== 74472 (pos)
                    (not (Bd_secret))))

    (:action fib-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #23218: origin
                    (Bc_not_secret)

                    ; #25687: origin
                    (Bd_not_secret)

                    ; #34049: <==closure== 82957 (pos)
                    (Pe_not_secret)

                    ; #45216: <==closure== 23218 (pos)
                    (Pc_not_secret)

                    ; #46477: <==closure== 85392 (pos)
                    (Pb_not_secret)

                    ; #74472: <==closure== 25687 (pos)
                    (Pd_not_secret)

                    ; #82957: origin
                    (Be_not_secret)

                    ; #85392: origin
                    (Bb_not_secret)

                    ; #10051: <==negation-removal== 34049 (pos)
                    (not (Be_secret))

                    ; #32215: <==negation-removal== 25687 (pos)
                    (not (Pd_secret))

                    ; #34685: <==negation-removal== 23218 (pos)
                    (not (Pc_secret))

                    ; #52773: <==negation-removal== 82957 (pos)
                    (not (Pe_secret))

                    ; #53128: <==negation-removal== 46477 (pos)
                    (not (Bb_secret))

                    ; #61276: <==negation-removal== 85392 (pos)
                    (not (Pb_secret))

                    ; #80144: <==negation-removal== 45216 (pos)
                    (not (Bc_secret))

                    ; #86413: <==negation-removal== 74472 (pos)
                    (not (Bd_secret))))

    (:action fib-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #23218: origin
                    (Bc_not_secret)

                    ; #34049: <==closure== 82957 (pos)
                    (Pe_not_secret)

                    ; #45216: <==closure== 23218 (pos)
                    (Pc_not_secret)

                    ; #46477: <==closure== 85392 (pos)
                    (Pb_not_secret)

                    ; #82957: origin
                    (Be_not_secret)

                    ; #85392: origin
                    (Bb_not_secret)

                    ; #10051: <==negation-removal== 34049 (pos)
                    (not (Be_secret))

                    ; #34685: <==negation-removal== 23218 (pos)
                    (not (Pc_secret))

                    ; #52773: <==negation-removal== 82957 (pos)
                    (not (Pe_secret))

                    ; #53128: <==negation-removal== 46477 (pos)
                    (not (Bb_secret))

                    ; #61276: <==negation-removal== 85392 (pos)
                    (not (Pb_secret))

                    ; #80144: <==negation-removal== 45216 (pos)
                    (not (Bc_secret))))

    (:action fib-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #23218: origin
                    (Bc_not_secret)

                    ; #34049: <==closure== 82957 (pos)
                    (Pe_not_secret)

                    ; #45216: <==closure== 23218 (pos)
                    (Pc_not_secret)

                    ; #82957: origin
                    (Be_not_secret)

                    ; #10051: <==negation-removal== 34049 (pos)
                    (not (Be_secret))

                    ; #34685: <==negation-removal== 23218 (pos)
                    (not (Pc_secret))

                    ; #52773: <==negation-removal== 82957 (pos)
                    (not (Pe_secret))

                    ; #80144: <==negation-removal== 45216 (pos)
                    (not (Bc_secret))))

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #22410: origin
                    (at_l1)

                    ; #74669: origin
                    (not_at_l1)

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #22410: origin
                    (at_l1)

                    ; #24518: origin
                    (not_at_l2)

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #22410: origin
                    (at_l1)

                    ; #71827: origin
                    (not_at_l3)

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #22410: origin
                    (at_l1)

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #49148: origin
                    (at_l2)

                    ; #74669: origin
                    (not_at_l1)

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #24518: origin
                    (not_at_l2)

                    ; #49148: origin
                    (at_l2)

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #49148: origin
                    (at_l2)

                    ; #71827: origin
                    (not_at_l3)

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #49148: origin
                    (at_l2)

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #68523: origin
                    (at_l3)

                    ; #74669: origin
                    (not_at_l1)

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #24518: origin
                    (not_at_l2)

                    ; #68523: origin
                    (at_l3)

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #68523: origin
                    (at_l3)

                    ; #71827: origin
                    (not_at_l3)

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #68523: origin
                    (at_l3)

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #19895: origin
                    (at_l4)

                    ; #74669: origin
                    (not_at_l1)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #19895: origin
                    (at_l4)

                    ; #24518: origin
                    (not_at_l2)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #19895: origin
                    (at_l4)

                    ; #71827: origin
                    (not_at_l3)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #19895: origin
                    (at_l4)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #22410: origin
                    (at_l1)

                    ; #74669: origin
                    (not_at_l1)

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #49148: origin
                    (at_l2)

                    ; #74669: origin
                    (not_at_l1)

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #68523: origin
                    (at_l3)

                    ; #74669: origin
                    (not_at_l1)

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #19895: origin
                    (at_l4)

                    ; #74669: origin
                    (not_at_l1)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #22410: <==negation-removal== 74669 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #22410: origin
                    (at_l1)

                    ; #24518: origin
                    (not_at_l2)

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #24518: origin
                    (not_at_l2)

                    ; #49148: origin
                    (at_l2)

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #24518: origin
                    (not_at_l2)

                    ; #68523: origin
                    (at_l3)

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #19895: origin
                    (at_l4)

                    ; #24518: origin
                    (not_at_l2)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #49148: <==negation-removal== 24518 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #22410: origin
                    (at_l1)

                    ; #71827: origin
                    (not_at_l3)

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #49148: origin
                    (at_l2)

                    ; #71827: origin
                    (not_at_l3)

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #68523: origin
                    (at_l3)

                    ; #71827: origin
                    (not_at_l3)

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #19895: origin
                    (at_l4)

                    ; #71827: origin
                    (not_at_l3)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #68523: <==negation-removal== 71827 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #22410: origin
                    (at_l1)

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))

                    ; #74669: <==negation-removal== 22410 (pos)
                    (not (not_at_l1))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #49148: origin
                    (at_l2)

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))

                    ; #24518: <==negation-removal== 49148 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #68523: origin
                    (at_l3)

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))

                    ; #71827: <==negation-removal== 68523 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #12751: origin
                    (not_at_l4)

                    ; #19895: origin
                    (at_l4)

                    ; #12751: <==negation-removal== 19895 (pos)
                    (not (not_at_l4))

                    ; #19895: <==negation-removal== 12751 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #23603: <==closure== 34280 (pos)
                    (Pa_secret)

                    ; #34280: origin
                    (Ba_secret)

                    ; #41866: <==negation-removal== 34280 (pos)
                    (not (Pa_not_secret))

                    ; #73133: <==negation-removal== 23603 (pos)
                    (not (Ba_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (at_l1)
                           (Pa_secret))
        :effect (and
                    ; #32215: <==closure== 86413 (pos)
                    (Pd_secret)

                    ; #53128: origin
                    (Bb_secret)

                    ; #61276: <==closure== 53128 (pos)
                    (Pb_secret)

                    ; #86413: origin
                    (Bd_secret)

                    ; #25687: <==negation-removal== 32215 (pos)
                    (not (Bd_not_secret))

                    ; #46477: <==negation-removal== 53128 (pos)
                    (not (Pb_not_secret))

                    ; #74472: <==negation-removal== 86413 (pos)
                    (not (Pd_not_secret))

                    ; #85392: <==negation-removal== 61276 (pos)
                    (not (Bb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #10051: origin
                    (Be_secret)

                    ; #32215: <==closure== 86413 (pos)
                    (Pd_secret)

                    ; #34685: <==closure== 80144 (pos)
                    (Pc_secret)

                    ; #52773: <==closure== 10051 (pos)
                    (Pe_secret)

                    ; #53128: origin
                    (Bb_secret)

                    ; #61276: <==closure== 53128 (pos)
                    (Pb_secret)

                    ; #80144: origin
                    (Bc_secret)

                    ; #86413: origin
                    (Bd_secret)

                    ; #23218: <==negation-removal== 34685 (pos)
                    (not (Bc_not_secret))

                    ; #25687: <==negation-removal== 32215 (pos)
                    (not (Bd_not_secret))

                    ; #34049: <==negation-removal== 10051 (pos)
                    (not (Pe_not_secret))

                    ; #45216: <==negation-removal== 80144 (pos)
                    (not (Pc_not_secret))

                    ; #46477: <==negation-removal== 53128 (pos)
                    (not (Pb_not_secret))

                    ; #74472: <==negation-removal== 86413 (pos)
                    (not (Pd_not_secret))

                    ; #82957: <==negation-removal== 52773 (pos)
                    (not (Be_not_secret))

                    ; #85392: <==negation-removal== 61276 (pos)
                    (not (Bb_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #10051: origin
                    (Be_secret)

                    ; #34685: <==closure== 80144 (pos)
                    (Pc_secret)

                    ; #52773: <==closure== 10051 (pos)
                    (Pe_secret)

                    ; #53128: origin
                    (Bb_secret)

                    ; #61276: <==closure== 53128 (pos)
                    (Pb_secret)

                    ; #80144: origin
                    (Bc_secret)

                    ; #23218: <==negation-removal== 34685 (pos)
                    (not (Bc_not_secret))

                    ; #34049: <==negation-removal== 10051 (pos)
                    (not (Pe_not_secret))

                    ; #45216: <==negation-removal== 80144 (pos)
                    (not (Pc_not_secret))

                    ; #46477: <==negation-removal== 53128 (pos)
                    (not (Pb_not_secret))

                    ; #82957: <==negation-removal== 52773 (pos)
                    (not (Be_not_secret))

                    ; #85392: <==negation-removal== 61276 (pos)
                    (not (Bb_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #10051: origin
                    (Be_secret)

                    ; #34685: <==closure== 80144 (pos)
                    (Pc_secret)

                    ; #52773: <==closure== 10051 (pos)
                    (Pe_secret)

                    ; #80144: origin
                    (Bc_secret)

                    ; #23218: <==negation-removal== 34685 (pos)
                    (not (Bc_not_secret))

                    ; #34049: <==negation-removal== 10051 (pos)
                    (not (Pe_not_secret))

                    ; #45216: <==negation-removal== 80144 (pos)
                    (not (Pc_not_secret))

                    ; #82957: <==negation-removal== 52773 (pos)
                    (not (Be_not_secret))))

)