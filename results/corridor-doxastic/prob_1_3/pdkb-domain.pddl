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
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
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
        :precondition (and (at_l1)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #37309: <==closure== 64682 (pos)
                    (Pb_not_secret)

                    ; #64682: origin
                    (Bb_not_secret)

                    ; #75433: <==negation-removal== 37309 (pos)
                    (not (Bb_secret))

                    ; #90808: <==negation-removal== 64682 (pos)
                    (not (Pb_secret))))

    (:action fib-2
        :precondition (and (Pa_secret)
                           (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #34702: <==closure== 78822 (pos)
                    (Pc_not_secret)

                    ; #37309: <==closure== 64682 (pos)
                    (Pb_not_secret)

                    ; #64682: origin
                    (Bb_not_secret)

                    ; #78822: origin
                    (Bc_not_secret)

                    ; #10400: <==negation-removal== 78822 (pos)
                    (not (Pc_secret))

                    ; #23360: <==negation-removal== 34702 (pos)
                    (not (Bc_secret))

                    ; #75433: <==negation-removal== 37309 (pos)
                    (not (Bb_secret))

                    ; #90808: <==negation-removal== 64682 (pos)
                    (not (Pb_secret))))

    (:action fib-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #34702: <==closure== 78822 (pos)
                    (Pc_not_secret)

                    ; #37309: <==closure== 64682 (pos)
                    (Pb_not_secret)

                    ; #64682: origin
                    (Bb_not_secret)

                    ; #78822: origin
                    (Bc_not_secret)

                    ; #10400: <==negation-removal== 78822 (pos)
                    (not (Pc_secret))

                    ; #23360: <==negation-removal== 34702 (pos)
                    (not (Bc_secret))

                    ; #75433: <==negation-removal== 37309 (pos)
                    (not (Bb_secret))

                    ; #90808: <==negation-removal== 64682 (pos)
                    (not (Pb_secret))))

    (:action fib-4
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #34702: <==closure== 78822 (pos)
                    (Pc_not_secret)

                    ; #78822: origin
                    (Bc_not_secret)

                    ; #10400: <==negation-removal== 78822 (pos)
                    (not (Pc_secret))

                    ; #23360: <==negation-removal== 34702 (pos)
                    (not (Bc_secret))))

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #44843: origin
                    (not_at_l1)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #79925: origin
                    (not_at_l2)

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #74772: origin
                    (not_at_l3)

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #47519: origin
                    (not_at_l4)

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #44843: origin
                    (not_at_l1)

                    ; #51154: origin
                    (at_l2)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #51154: origin
                    (at_l2)

                    ; #79925: origin
                    (not_at_l2)

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #51154: origin
                    (at_l2)

                    ; #74772: origin
                    (not_at_l3)

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #47519: origin
                    (not_at_l4)

                    ; #51154: origin
                    (at_l2)

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #44843: origin
                    (not_at_l1)

                    ; #80645: origin
                    (at_l3)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #79925: origin
                    (not_at_l2)

                    ; #80645: origin
                    (at_l3)

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #74772: origin
                    (not_at_l3)

                    ; #80645: origin
                    (at_l3)

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #47519: origin
                    (not_at_l4)

                    ; #80645: origin
                    (at_l3)

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #44843: origin
                    (not_at_l1)

                    ; #60702: origin
                    (at_l4)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #60702: origin
                    (at_l4)

                    ; #79925: origin
                    (not_at_l2)

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #60702: origin
                    (at_l4)

                    ; #74772: origin
                    (not_at_l3)

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #47519: origin
                    (not_at_l4)

                    ; #60702: origin
                    (at_l4)

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #44843: origin
                    (not_at_l1)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #44843: origin
                    (not_at_l1)

                    ; #51154: origin
                    (at_l2)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #44843: origin
                    (not_at_l1)

                    ; #80645: origin
                    (at_l3)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #44843: origin
                    (not_at_l1)

                    ; #60702: origin
                    (at_l4)

                    ; #16285: <==negation-removal== 44843 (pos)
                    (not (at_l1))

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #79925: origin
                    (not_at_l2)

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #51154: origin
                    (at_l2)

                    ; #79925: origin
                    (not_at_l2)

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #79925: origin
                    (not_at_l2)

                    ; #80645: origin
                    (at_l3)

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #60702: origin
                    (at_l4)

                    ; #79925: origin
                    (not_at_l2)

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))

                    ; #51154: <==negation-removal== 79925 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #74772: origin
                    (not_at_l3)

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #51154: origin
                    (at_l2)

                    ; #74772: origin
                    (not_at_l3)

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #74772: origin
                    (not_at_l3)

                    ; #80645: origin
                    (at_l3)

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #60702: origin
                    (at_l4)

                    ; #74772: origin
                    (not_at_l3)

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))

                    ; #80645: <==negation-removal== 74772 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #16285: origin
                    (at_l1)

                    ; #47519: origin
                    (not_at_l4)

                    ; #44843: <==negation-removal== 16285 (pos)
                    (not (not_at_l1))

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #47519: origin
                    (not_at_l4)

                    ; #51154: origin
                    (at_l2)

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))

                    ; #79925: <==negation-removal== 51154 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #47519: origin
                    (not_at_l4)

                    ; #80645: origin
                    (at_l3)

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))

                    ; #74772: <==negation-removal== 80645 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #47519: origin
                    (not_at_l4)

                    ; #60702: origin
                    (at_l4)

                    ; #47519: <==negation-removal== 60702 (pos)
                    (not (not_at_l4))

                    ; #60702: <==negation-removal== 47519 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #52412: origin
                    (Ba_secret)

                    ; #73605: <==closure== 52412 (pos)
                    (Pa_secret)

                    ; #42039: <==negation-removal== 73605 (pos)
                    (not (Ba_not_secret))

                    ; #98872: <==negation-removal== 52412 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #75433: origin
                    (Bb_secret)

                    ; #90808: <==closure== 75433 (pos)
                    (Pb_secret)

                    ; #37309: <==negation-removal== 75433 (pos)
                    (not (Pb_not_secret))

                    ; #64682: <==negation-removal== 90808 (pos)
                    (not (Bb_not_secret))))

    (:action shout-2
        :precondition (and (Pa_secret)
                           (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #10400: <==closure== 23360 (pos)
                    (Pc_secret)

                    ; #23360: origin
                    (Bc_secret)

                    ; #75433: origin
                    (Bb_secret)

                    ; #90808: <==closure== 75433 (pos)
                    (Pb_secret)

                    ; #34702: <==negation-removal== 23360 (pos)
                    (not (Pc_not_secret))

                    ; #37309: <==negation-removal== 75433 (pos)
                    (not (Pb_not_secret))

                    ; #64682: <==negation-removal== 90808 (pos)
                    (not (Bb_not_secret))

                    ; #78822: <==negation-removal== 10400 (pos)
                    (not (Bc_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #10400: <==closure== 23360 (pos)
                    (Pc_secret)

                    ; #23360: origin
                    (Bc_secret)

                    ; #75433: origin
                    (Bb_secret)

                    ; #90808: <==closure== 75433 (pos)
                    (Pb_secret)

                    ; #34702: <==negation-removal== 23360 (pos)
                    (not (Pc_not_secret))

                    ; #37309: <==negation-removal== 75433 (pos)
                    (not (Pb_not_secret))

                    ; #64682: <==negation-removal== 90808 (pos)
                    (not (Bb_not_secret))

                    ; #78822: <==negation-removal== 10400 (pos)
                    (not (Bc_not_secret))))

    (:action shout-4
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #10400: <==closure== 23360 (pos)
                    (Pc_secret)

                    ; #23360: origin
                    (Bc_secret)

                    ; #34702: <==negation-removal== 23360 (pos)
                    (not (Pc_not_secret))

                    ; #78822: <==negation-removal== 10400 (pos)
                    (not (Bc_not_secret))))

)