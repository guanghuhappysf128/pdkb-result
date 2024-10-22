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

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #72150: origin
                    (not_at_l1)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #68685: origin
                    (not_at_l4)

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #72150: origin
                    (not_at_l1)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #68685: origin
                    (not_at_l4)

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #72150: origin
                    (not_at_l1)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #68685: origin
                    (not_at_l4)

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #72150: origin
                    (not_at_l1)

                    ; #83591: origin
                    (at_l4)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #83591: origin
                    (at_l4)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #83591: origin
                    (at_l4)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #68685: origin
                    (not_at_l4)

                    ; #83591: origin
                    (at_l4)

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #72150: origin
                    (not_at_l1)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #72150: origin
                    (not_at_l1)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #72150: origin
                    (not_at_l1)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #72150: origin
                    (not_at_l1)

                    ; #83591: origin
                    (at_l4)

                    ; #11950: <==negation-removal== 72150 (pos)
                    (not (at_l1))

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (at_l2)
                           (succ_l2_l3))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #83591: origin
                    (at_l4)

                    ; #84090: origin
                    (not_at_l2)

                    ; #27516: <==negation-removal== 84090 (pos)
                    (not (at_l2))

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #83591: origin
                    (at_l4)

                    ; #85504: origin
                    (not_at_l3)

                    ; #11726: <==negation-removal== 85504 (pos)
                    (not (at_l3))

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #11950: origin
                    (at_l1)

                    ; #68685: origin
                    (not_at_l4)

                    ; #72150: <==negation-removal== 11950 (pos)
                    (not (not_at_l1))

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #27516: origin
                    (at_l2)

                    ; #68685: origin
                    (not_at_l4)

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))

                    ; #84090: <==negation-removal== 27516 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #11726: origin
                    (at_l3)

                    ; #68685: origin
                    (not_at_l4)

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))

                    ; #85504: <==negation-removal== 11726 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #68685: origin
                    (not_at_l4)

                    ; #83591: origin
                    (at_l4)

                    ; #68685: <==negation-removal== 83591 (pos)
                    (not (not_at_l4))

                    ; #83591: <==negation-removal== 68685 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #51556: <==closure== 69450 (pos)
                    (Pa_secret)

                    ; #69450: origin
                    (Ba_secret)

                    ; #13386: <==negation-removal== 51556 (pos)
                    (not (Ba_not_secret))

                    ; #80378: <==negation-removal== 69450 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (at_l1)
                           (Pa_secret))
        :effect (and
                    ; #35349: <==closure== 67623 (pos)
                    (Pb_secret)

                    ; #67623: origin
                    (Bb_secret)

                    ; #12097: <==negation-removal== 35349 (pos)
                    (not (Bb_not_secret))

                    ; #42522: <==negation-removal== 67623 (pos)
                    (not (Pb_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #10201: origin
                    (Bc_secret)

                    ; #24965: <==closure== 10201 (pos)
                    (Pc_secret)

                    ; #35349: <==closure== 67623 (pos)
                    (Pb_secret)

                    ; #67623: origin
                    (Bb_secret)

                    ; #12097: <==negation-removal== 35349 (pos)
                    (not (Bb_not_secret))

                    ; #42522: <==negation-removal== 67623 (pos)
                    (not (Pb_not_secret))

                    ; #45198: <==negation-removal== 24965 (pos)
                    (not (Bc_not_secret))

                    ; #51255: <==negation-removal== 10201 (pos)
                    (not (Pc_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #10201: origin
                    (Bc_secret)

                    ; #24965: <==closure== 10201 (pos)
                    (Pc_secret)

                    ; #35349: <==closure== 67623 (pos)
                    (Pb_secret)

                    ; #67623: origin
                    (Bb_secret)

                    ; #12097: <==negation-removal== 35349 (pos)
                    (not (Bb_not_secret))

                    ; #42522: <==negation-removal== 67623 (pos)
                    (not (Pb_not_secret))

                    ; #45198: <==negation-removal== 24965 (pos)
                    (not (Bc_not_secret))

                    ; #51255: <==negation-removal== 10201 (pos)
                    (not (Pc_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #10201: origin
                    (Bc_secret)

                    ; #24965: <==closure== 10201 (pos)
                    (Pc_secret)

                    ; #45198: <==negation-removal== 24965 (pos)
                    (not (Bc_not_secret))

                    ; #51255: <==negation-removal== 10201 (pos)
                    (not (Pc_not_secret))))

)