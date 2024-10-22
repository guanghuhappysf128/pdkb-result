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
        (Ba_Ba_not_secret)
        (Ba_Ba_Ba_not_secret)
        (Ba_Ba_Ba_secret)
        (Ba_Ba_Bb_not_secret)
        (Ba_Ba_Bb_secret)
        (Ba_Ba_Bc_not_secret)
        (Ba_Ba_Bc_secret)
        (Ba_Ba_Pa_not_secret)
        (Ba_Ba_Pa_secret)
        (Ba_Ba_Pb_not_secret)
        (Ba_Ba_Pb_secret)
        (Ba_Ba_Pc_not_secret)
        (Ba_Ba_Pc_secret)
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_Ba_not_secret)
        (Ba_Bb_Ba_secret)
        (Ba_Bb_Bb_not_secret)
        (Ba_Bb_Bb_secret)
        (Ba_Bb_Bc_not_secret)
        (Ba_Bb_Bc_secret)
        (Ba_Bb_Pa_not_secret)
        (Ba_Bb_Pa_secret)
        (Ba_Bb_Pb_not_secret)
        (Ba_Bb_Pb_secret)
        (Ba_Bb_Pc_not_secret)
        (Ba_Bb_Pc_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_Ba_not_secret)
        (Ba_Bc_Ba_secret)
        (Ba_Bc_Bb_not_secret)
        (Ba_Bc_Bb_secret)
        (Ba_Bc_Bc_not_secret)
        (Ba_Bc_Bc_secret)
        (Ba_Bc_Pa_not_secret)
        (Ba_Bc_Pa_secret)
        (Ba_Bc_Pb_not_secret)
        (Ba_Bc_Pb_secret)
        (Ba_Bc_Pc_not_secret)
        (Ba_Bc_Pc_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_Ba_not_secret)
        (Ba_Pa_Ba_secret)
        (Ba_Pa_Bb_not_secret)
        (Ba_Pa_Bb_secret)
        (Ba_Pa_Bc_not_secret)
        (Ba_Pa_Bc_secret)
        (Ba_Pa_Pa_not_secret)
        (Ba_Pa_Pa_secret)
        (Ba_Pa_Pb_not_secret)
        (Ba_Pa_Pb_secret)
        (Ba_Pa_Pc_not_secret)
        (Ba_Pa_Pc_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_Ba_not_secret)
        (Ba_Pb_Ba_secret)
        (Ba_Pb_Bb_not_secret)
        (Ba_Pb_Bb_secret)
        (Ba_Pb_Bc_not_secret)
        (Ba_Pb_Bc_secret)
        (Ba_Pb_Pa_not_secret)
        (Ba_Pb_Pa_secret)
        (Ba_Pb_Pb_not_secret)
        (Ba_Pb_Pb_secret)
        (Ba_Pb_Pc_not_secret)
        (Ba_Pb_Pc_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_Ba_not_secret)
        (Ba_Pc_Ba_secret)
        (Ba_Pc_Bb_not_secret)
        (Ba_Pc_Bb_secret)
        (Ba_Pc_Bc_not_secret)
        (Ba_Pc_Bc_secret)
        (Ba_Pc_Pa_not_secret)
        (Ba_Pc_Pa_secret)
        (Ba_Pc_Pb_not_secret)
        (Ba_Pc_Pb_secret)
        (Ba_Pc_Pc_not_secret)
        (Ba_Pc_Pc_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_Ba_not_secret)
        (Bb_Ba_Ba_secret)
        (Bb_Ba_Bb_not_secret)
        (Bb_Ba_Bb_secret)
        (Bb_Ba_Bc_not_secret)
        (Bb_Ba_Bc_secret)
        (Bb_Ba_Pa_not_secret)
        (Bb_Ba_Pa_secret)
        (Bb_Ba_Pb_not_secret)
        (Bb_Ba_Pb_secret)
        (Bb_Ba_Pc_not_secret)
        (Bb_Ba_Pc_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_Ba_not_secret)
        (Bb_Bb_Ba_secret)
        (Bb_Bb_Bb_not_secret)
        (Bb_Bb_Bb_secret)
        (Bb_Bb_Bc_not_secret)
        (Bb_Bb_Bc_secret)
        (Bb_Bb_Pa_not_secret)
        (Bb_Bb_Pa_secret)
        (Bb_Bb_Pb_not_secret)
        (Bb_Bb_Pb_secret)
        (Bb_Bb_Pc_not_secret)
        (Bb_Bb_Pc_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_Ba_not_secret)
        (Bb_Bc_Ba_secret)
        (Bb_Bc_Bb_not_secret)
        (Bb_Bc_Bb_secret)
        (Bb_Bc_Bc_not_secret)
        (Bb_Bc_Bc_secret)
        (Bb_Bc_Pa_not_secret)
        (Bb_Bc_Pa_secret)
        (Bb_Bc_Pb_not_secret)
        (Bb_Bc_Pb_secret)
        (Bb_Bc_Pc_not_secret)
        (Bb_Bc_Pc_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_Ba_not_secret)
        (Bb_Pa_Ba_secret)
        (Bb_Pa_Bb_not_secret)
        (Bb_Pa_Bb_secret)
        (Bb_Pa_Bc_not_secret)
        (Bb_Pa_Bc_secret)
        (Bb_Pa_Pa_not_secret)
        (Bb_Pa_Pa_secret)
        (Bb_Pa_Pb_not_secret)
        (Bb_Pa_Pb_secret)
        (Bb_Pa_Pc_not_secret)
        (Bb_Pa_Pc_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_Ba_not_secret)
        (Bb_Pb_Ba_secret)
        (Bb_Pb_Bb_not_secret)
        (Bb_Pb_Bb_secret)
        (Bb_Pb_Bc_not_secret)
        (Bb_Pb_Bc_secret)
        (Bb_Pb_Pa_not_secret)
        (Bb_Pb_Pa_secret)
        (Bb_Pb_Pb_not_secret)
        (Bb_Pb_Pb_secret)
        (Bb_Pb_Pc_not_secret)
        (Bb_Pb_Pc_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_Ba_not_secret)
        (Bb_Pc_Ba_secret)
        (Bb_Pc_Bb_not_secret)
        (Bb_Pc_Bb_secret)
        (Bb_Pc_Bc_not_secret)
        (Bb_Pc_Bc_secret)
        (Bb_Pc_Pa_not_secret)
        (Bb_Pc_Pa_secret)
        (Bb_Pc_Pb_not_secret)
        (Bb_Pc_Pb_secret)
        (Bb_Pc_Pc_not_secret)
        (Bb_Pc_Pc_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_Ba_not_secret)
        (Bc_Ba_Ba_secret)
        (Bc_Ba_Bb_not_secret)
        (Bc_Ba_Bb_secret)
        (Bc_Ba_Bc_not_secret)
        (Bc_Ba_Bc_secret)
        (Bc_Ba_Pa_not_secret)
        (Bc_Ba_Pa_secret)
        (Bc_Ba_Pb_not_secret)
        (Bc_Ba_Pb_secret)
        (Bc_Ba_Pc_not_secret)
        (Bc_Ba_Pc_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_Ba_not_secret)
        (Bc_Bb_Ba_secret)
        (Bc_Bb_Bb_not_secret)
        (Bc_Bb_Bb_secret)
        (Bc_Bb_Bc_not_secret)
        (Bc_Bb_Bc_secret)
        (Bc_Bb_Pa_not_secret)
        (Bc_Bb_Pa_secret)
        (Bc_Bb_Pb_not_secret)
        (Bc_Bb_Pb_secret)
        (Bc_Bb_Pc_not_secret)
        (Bc_Bb_Pc_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_Ba_not_secret)
        (Bc_Bc_Ba_secret)
        (Bc_Bc_Bb_not_secret)
        (Bc_Bc_Bb_secret)
        (Bc_Bc_Bc_not_secret)
        (Bc_Bc_Bc_secret)
        (Bc_Bc_Pa_not_secret)
        (Bc_Bc_Pa_secret)
        (Bc_Bc_Pb_not_secret)
        (Bc_Bc_Pb_secret)
        (Bc_Bc_Pc_not_secret)
        (Bc_Bc_Pc_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_Ba_not_secret)
        (Bc_Pa_Ba_secret)
        (Bc_Pa_Bb_not_secret)
        (Bc_Pa_Bb_secret)
        (Bc_Pa_Bc_not_secret)
        (Bc_Pa_Bc_secret)
        (Bc_Pa_Pa_not_secret)
        (Bc_Pa_Pa_secret)
        (Bc_Pa_Pb_not_secret)
        (Bc_Pa_Pb_secret)
        (Bc_Pa_Pc_not_secret)
        (Bc_Pa_Pc_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_Ba_not_secret)
        (Bc_Pb_Ba_secret)
        (Bc_Pb_Bb_not_secret)
        (Bc_Pb_Bb_secret)
        (Bc_Pb_Bc_not_secret)
        (Bc_Pb_Bc_secret)
        (Bc_Pb_Pa_not_secret)
        (Bc_Pb_Pa_secret)
        (Bc_Pb_Pb_not_secret)
        (Bc_Pb_Pb_secret)
        (Bc_Pb_Pc_not_secret)
        (Bc_Pb_Pc_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_Ba_not_secret)
        (Bc_Pc_Ba_secret)
        (Bc_Pc_Bb_not_secret)
        (Bc_Pc_Bb_secret)
        (Bc_Pc_Bc_not_secret)
        (Bc_Pc_Bc_secret)
        (Bc_Pc_Pa_not_secret)
        (Bc_Pc_Pa_secret)
        (Bc_Pc_Pb_not_secret)
        (Bc_Pc_Pb_secret)
        (Bc_Pc_Pc_not_secret)
        (Bc_Pc_Pc_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_Ba_not_secret)
        (Pa_Ba_Ba_secret)
        (Pa_Ba_Bb_not_secret)
        (Pa_Ba_Bb_secret)
        (Pa_Ba_Bc_not_secret)
        (Pa_Ba_Bc_secret)
        (Pa_Ba_Pa_not_secret)
        (Pa_Ba_Pa_secret)
        (Pa_Ba_Pb_not_secret)
        (Pa_Ba_Pb_secret)
        (Pa_Ba_Pc_not_secret)
        (Pa_Ba_Pc_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_Ba_not_secret)
        (Pa_Bb_Ba_secret)
        (Pa_Bb_Bb_not_secret)
        (Pa_Bb_Bb_secret)
        (Pa_Bb_Bc_not_secret)
        (Pa_Bb_Bc_secret)
        (Pa_Bb_Pa_not_secret)
        (Pa_Bb_Pa_secret)
        (Pa_Bb_Pb_not_secret)
        (Pa_Bb_Pb_secret)
        (Pa_Bb_Pc_not_secret)
        (Pa_Bb_Pc_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_Ba_not_secret)
        (Pa_Bc_Ba_secret)
        (Pa_Bc_Bb_not_secret)
        (Pa_Bc_Bb_secret)
        (Pa_Bc_Bc_not_secret)
        (Pa_Bc_Bc_secret)
        (Pa_Bc_Pa_not_secret)
        (Pa_Bc_Pa_secret)
        (Pa_Bc_Pb_not_secret)
        (Pa_Bc_Pb_secret)
        (Pa_Bc_Pc_not_secret)
        (Pa_Bc_Pc_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_Ba_not_secret)
        (Pa_Pa_Ba_secret)
        (Pa_Pa_Bb_not_secret)
        (Pa_Pa_Bb_secret)
        (Pa_Pa_Bc_not_secret)
        (Pa_Pa_Bc_secret)
        (Pa_Pa_Pa_not_secret)
        (Pa_Pa_Pa_secret)
        (Pa_Pa_Pb_not_secret)
        (Pa_Pa_Pb_secret)
        (Pa_Pa_Pc_not_secret)
        (Pa_Pa_Pc_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_Ba_not_secret)
        (Pa_Pb_Ba_secret)
        (Pa_Pb_Bb_not_secret)
        (Pa_Pb_Bb_secret)
        (Pa_Pb_Bc_not_secret)
        (Pa_Pb_Bc_secret)
        (Pa_Pb_Pa_not_secret)
        (Pa_Pb_Pa_secret)
        (Pa_Pb_Pb_not_secret)
        (Pa_Pb_Pb_secret)
        (Pa_Pb_Pc_not_secret)
        (Pa_Pb_Pc_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_Ba_not_secret)
        (Pa_Pc_Ba_secret)
        (Pa_Pc_Bb_not_secret)
        (Pa_Pc_Bb_secret)
        (Pa_Pc_Bc_not_secret)
        (Pa_Pc_Bc_secret)
        (Pa_Pc_Pa_not_secret)
        (Pa_Pc_Pa_secret)
        (Pa_Pc_Pb_not_secret)
        (Pa_Pc_Pb_secret)
        (Pa_Pc_Pc_not_secret)
        (Pa_Pc_Pc_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_Ba_not_secret)
        (Pb_Ba_Ba_secret)
        (Pb_Ba_Bb_not_secret)
        (Pb_Ba_Bb_secret)
        (Pb_Ba_Bc_not_secret)
        (Pb_Ba_Bc_secret)
        (Pb_Ba_Pa_not_secret)
        (Pb_Ba_Pa_secret)
        (Pb_Ba_Pb_not_secret)
        (Pb_Ba_Pb_secret)
        (Pb_Ba_Pc_not_secret)
        (Pb_Ba_Pc_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_Ba_not_secret)
        (Pb_Bb_Ba_secret)
        (Pb_Bb_Bb_not_secret)
        (Pb_Bb_Bb_secret)
        (Pb_Bb_Bc_not_secret)
        (Pb_Bb_Bc_secret)
        (Pb_Bb_Pa_not_secret)
        (Pb_Bb_Pa_secret)
        (Pb_Bb_Pb_not_secret)
        (Pb_Bb_Pb_secret)
        (Pb_Bb_Pc_not_secret)
        (Pb_Bb_Pc_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_Ba_not_secret)
        (Pb_Bc_Ba_secret)
        (Pb_Bc_Bb_not_secret)
        (Pb_Bc_Bb_secret)
        (Pb_Bc_Bc_not_secret)
        (Pb_Bc_Bc_secret)
        (Pb_Bc_Pa_not_secret)
        (Pb_Bc_Pa_secret)
        (Pb_Bc_Pb_not_secret)
        (Pb_Bc_Pb_secret)
        (Pb_Bc_Pc_not_secret)
        (Pb_Bc_Pc_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_Ba_not_secret)
        (Pb_Pa_Ba_secret)
        (Pb_Pa_Bb_not_secret)
        (Pb_Pa_Bb_secret)
        (Pb_Pa_Bc_not_secret)
        (Pb_Pa_Bc_secret)
        (Pb_Pa_Pa_not_secret)
        (Pb_Pa_Pa_secret)
        (Pb_Pa_Pb_not_secret)
        (Pb_Pa_Pb_secret)
        (Pb_Pa_Pc_not_secret)
        (Pb_Pa_Pc_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_Ba_not_secret)
        (Pb_Pb_Ba_secret)
        (Pb_Pb_Bb_not_secret)
        (Pb_Pb_Bb_secret)
        (Pb_Pb_Bc_not_secret)
        (Pb_Pb_Bc_secret)
        (Pb_Pb_Pa_not_secret)
        (Pb_Pb_Pa_secret)
        (Pb_Pb_Pb_not_secret)
        (Pb_Pb_Pb_secret)
        (Pb_Pb_Pc_not_secret)
        (Pb_Pb_Pc_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_Ba_not_secret)
        (Pb_Pc_Ba_secret)
        (Pb_Pc_Bb_not_secret)
        (Pb_Pc_Bb_secret)
        (Pb_Pc_Bc_not_secret)
        (Pb_Pc_Bc_secret)
        (Pb_Pc_Pa_not_secret)
        (Pb_Pc_Pa_secret)
        (Pb_Pc_Pb_not_secret)
        (Pb_Pc_Pb_secret)
        (Pb_Pc_Pc_not_secret)
        (Pb_Pc_Pc_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_Ba_not_secret)
        (Pc_Ba_Ba_secret)
        (Pc_Ba_Bb_not_secret)
        (Pc_Ba_Bb_secret)
        (Pc_Ba_Bc_not_secret)
        (Pc_Ba_Bc_secret)
        (Pc_Ba_Pa_not_secret)
        (Pc_Ba_Pa_secret)
        (Pc_Ba_Pb_not_secret)
        (Pc_Ba_Pb_secret)
        (Pc_Ba_Pc_not_secret)
        (Pc_Ba_Pc_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_Ba_not_secret)
        (Pc_Bb_Ba_secret)
        (Pc_Bb_Bb_not_secret)
        (Pc_Bb_Bb_secret)
        (Pc_Bb_Bc_not_secret)
        (Pc_Bb_Bc_secret)
        (Pc_Bb_Pa_not_secret)
        (Pc_Bb_Pa_secret)
        (Pc_Bb_Pb_not_secret)
        (Pc_Bb_Pb_secret)
        (Pc_Bb_Pc_not_secret)
        (Pc_Bb_Pc_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_Ba_not_secret)
        (Pc_Bc_Ba_secret)
        (Pc_Bc_Bb_not_secret)
        (Pc_Bc_Bb_secret)
        (Pc_Bc_Bc_not_secret)
        (Pc_Bc_Bc_secret)
        (Pc_Bc_Pa_not_secret)
        (Pc_Bc_Pa_secret)
        (Pc_Bc_Pb_not_secret)
        (Pc_Bc_Pb_secret)
        (Pc_Bc_Pc_not_secret)
        (Pc_Bc_Pc_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_Ba_not_secret)
        (Pc_Pa_Ba_secret)
        (Pc_Pa_Bb_not_secret)
        (Pc_Pa_Bb_secret)
        (Pc_Pa_Bc_not_secret)
        (Pc_Pa_Bc_secret)
        (Pc_Pa_Pa_not_secret)
        (Pc_Pa_Pa_secret)
        (Pc_Pa_Pb_not_secret)
        (Pc_Pa_Pb_secret)
        (Pc_Pa_Pc_not_secret)
        (Pc_Pa_Pc_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_Ba_not_secret)
        (Pc_Pb_Ba_secret)
        (Pc_Pb_Bb_not_secret)
        (Pc_Pb_Bb_secret)
        (Pc_Pb_Bc_not_secret)
        (Pc_Pb_Bc_secret)
        (Pc_Pb_Pa_not_secret)
        (Pc_Pb_Pa_secret)
        (Pc_Pb_Pb_not_secret)
        (Pc_Pb_Pb_secret)
        (Pc_Pb_Pc_not_secret)
        (Pc_Pb_Pc_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
        (Pc_Pc_Ba_not_secret)
        (Pc_Pc_Ba_secret)
        (Pc_Pc_Bb_not_secret)
        (Pc_Pc_Bb_secret)
        (Pc_Pc_Bc_not_secret)
        (Pc_Pc_Bc_secret)
        (Pc_Pc_Pa_not_secret)
        (Pc_Pc_Pa_secret)
        (Pc_Pc_Pb_not_secret)
        (Pc_Pc_Pb_secret)
        (Pc_Pc_Pc_not_secret)
        (Pc_Pc_Pc_secret)
        (Pc_Pc_secret)
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
                    ; #36704: origin
                    (at_l1)

                    ; #42604: origin
                    (not_at_l1)

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #36704: origin
                    (at_l1)

                    ; #38956: origin
                    (not_at_l2)

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #36704: origin
                    (at_l1)

                    ; #90821: origin
                    (not_at_l3)

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #36704: origin
                    (at_l1)

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #16566: origin
                    (at_l2)

                    ; #42604: origin
                    (not_at_l1)

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #16566: origin
                    (at_l2)

                    ; #38956: origin
                    (not_at_l2)

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #16566: origin
                    (at_l2)

                    ; #90821: origin
                    (not_at_l3)

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #16566: origin
                    (at_l2)

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #16689: origin
                    (at_l3)

                    ; #42604: origin
                    (not_at_l1)

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #16689: origin
                    (at_l3)

                    ; #38956: origin
                    (not_at_l2)

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #16689: origin
                    (at_l3)

                    ; #90821: origin
                    (not_at_l3)

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #16689: origin
                    (at_l3)

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #42604: origin
                    (not_at_l1)

                    ; #66172: origin
                    (at_l4)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #38956: origin
                    (not_at_l2)

                    ; #66172: origin
                    (at_l4)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #66172: origin
                    (at_l4)

                    ; #90821: origin
                    (not_at_l3)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #66172: origin
                    (at_l4)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #36704: origin
                    (at_l1)

                    ; #42604: origin
                    (not_at_l1)

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #16566: origin
                    (at_l2)

                    ; #42604: origin
                    (not_at_l1)

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #16689: origin
                    (at_l3)

                    ; #42604: origin
                    (not_at_l1)

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #42604: origin
                    (not_at_l1)

                    ; #66172: origin
                    (at_l4)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #36704: <==negation-removal== 42604 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #36704: origin
                    (at_l1)

                    ; #38956: origin
                    (not_at_l2)

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #16566: origin
                    (at_l2)

                    ; #38956: origin
                    (not_at_l2)

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #16689: origin
                    (at_l3)

                    ; #38956: origin
                    (not_at_l2)

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #38956: origin
                    (not_at_l2)

                    ; #66172: origin
                    (at_l4)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #16566: <==negation-removal== 38956 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #36704: origin
                    (at_l1)

                    ; #90821: origin
                    (not_at_l3)

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #16566: origin
                    (at_l2)

                    ; #90821: origin
                    (not_at_l3)

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #16689: origin
                    (at_l3)

                    ; #90821: origin
                    (not_at_l3)

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #66172: origin
                    (at_l4)

                    ; #90821: origin
                    (not_at_l3)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #16689: <==negation-removal== 90821 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #36704: origin
                    (at_l1)

                    ; #42604: <==negation-removal== 36704 (pos)
                    (not (not_at_l1))

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #16566: origin
                    (at_l2)

                    ; #38956: <==negation-removal== 16566 (pos)
                    (not (not_at_l2))

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #16689: origin
                    (at_l3)

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))

                    ; #90821: <==negation-removal== 16689 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #10590: origin
                    (not_at_l4)

                    ; #66172: origin
                    (at_l4)

                    ; #10590: <==negation-removal== 66172 (pos)
                    (not (not_at_l4))

                    ; #66172: <==negation-removal== 10590 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #10403: <==closure== 60720 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #15029: <==commonly_known== 60374 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #15784: <==commonly_known== 86234 (pos)
                    (Bb_Ba_secret)

                    ; #19786: <==commonly_known== 27702 (pos)
                    (Bc_Pa_secret)

                    ; #20648: <==closure== 39434 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #24690: <==closure== 78083 (pos)
                    (Pc_Pa_secret)

                    ; #27702: <==closure== 86234 (pos)
                    (Pa_secret)

                    ; #30322: <==closure== 15784 (pos)
                    (Pb_Pa_secret)

                    ; #31507: <==closure== 39434 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #33052: <==commonly_known== 30322 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #33879: <==commonly_known== 24690 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #36573: <==closure== 39434 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #39434: <==commonly_known== 78083 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #39989: <==commonly_known== 15784 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #45062: <==commonly_known== 19786 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #45238: <==closure== 39989 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #45468: <==commonly_known== 53187 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #46068: <==closure== 60720 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #52447: <==closure== 53541 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #53187: <==commonly_known== 27702 (pos)
                    (Bb_Pa_secret)

                    ; #53541: <==commonly_known== 15784 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #53748: <==commonly_known== 24690 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #54368: <==commonly_known== 30322 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #59057: <==commonly_known== 91020 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #59890: <==closure== 53541 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #60374: <==commonly_known== 70669 (neg)
                    (Pc_Ba_secret)

                    ; #60720: <==commonly_known== 78083 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #62360: <==closure== 60720 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #66717: <==commonly_known== 91020 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #67573: <==closure== 53541 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #69450: <==commonly_known== 53187 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #69990: <==closure== 39989 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #70738: <==commonly_known== 60374 (pos)
                    (Bb_Pc_Ba_secret)

                    ; #72570: <==commonly_known== 51219 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #76484: <==commonly_known== 51219 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #78083: <==commonly_known== 86234 (pos)
                    (Bc_Ba_secret)

                    ; #80457: <==commonly_known== 18123 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #84145: <==commonly_known== 19786 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #86139: <==commonly_known== 18123 (neg)
                    (Pc_Bb_Ba_secret)

                    ; #86234: origin
                    (Ba_secret)

                    ; #91020: <==commonly_known== 70669 (neg)
                    (Pb_Ba_secret)

                    ; #92035: <==closure== 39989 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #10679: <==negation-removal== 33879 (pos)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #11939: <==negation-removal== 52447 (pos)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #12460: <==negation-removal== 36573 (pos)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #14964: <==negation-removal== 84145 (pos)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #15853: <==negation-removal== 45468 (pos)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #17008: <==negation-removal== 92035 (pos)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #17157: <==negation-removal== 69990 (pos)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #18123: <==negation-removal== 15784 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #19067: <==negation-removal== 60720 (pos)
                    (not (Pa_Pc_Pa_not_secret))

                    ; #20926: <==negation-removal== 76484 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #21785: <==negation-removal== 66717 (pos)
                    (not (Pc_Bb_Pa_not_secret))

                    ; #22339: <==negation-removal== 59890 (pos)
                    (not (Bc_Bb_Ba_not_secret))

                    ; #22741: <==negation-removal== 60374 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #24516: <==negation-removal== 15029 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #29666: <==negation-removal== 27702 (pos)
                    (not (Ba_not_secret))

                    ; #33196: <==negation-removal== 67573 (pos)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #33440: <==negation-removal== 72570 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #34587: <==negation-removal== 54368 (pos)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #35997: <==negation-removal== 10403 (pos)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #38362: <==negation-removal== 46068 (pos)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #39441: <==negation-removal== 45238 (pos)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #40597: <==negation-removal== 19786 (pos)
                    (not (Pc_Ba_not_secret))

                    ; #45608: <==negation-removal== 59057 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #46968: <==negation-removal== 80457 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #51219: <==negation-removal== 78083 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #52108: <==negation-removal== 33052 (pos)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #54037: <==negation-removal== 62360 (pos)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #57777: <==negation-removal== 45062 (pos)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #67011: <==negation-removal== 39989 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #70669: <==negation-removal== 86234 (pos)
                    (not (Pa_not_secret))

                    ; #71017: <==negation-removal== 69450 (pos)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #73297: <==negation-removal== 39434 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #78374: <==negation-removal== 20648 (pos)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #79494: <==negation-removal== 53187 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #80244: <==negation-removal== 53541 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #81607: <==negation-removal== 91020 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #81936: <==negation-removal== 30322 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #82902: <==negation-removal== 31507 (pos)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #83248: <==negation-removal== 53748 (pos)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #84604: <==negation-removal== 86139 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #86623: <==negation-removal== 70738 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #87465: <==negation-removal== 24690 (pos)
                    (not (Bc_Ba_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #10887: <==commonly_known== 27797 (pos)
                    (Ba_Bb_secret)

                    ; #12357: <==commonly_known== 77790 (pos)
                    (Ba_Pb_secret)

                    ; #13436: <==commonly_known== 29670 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #15591: <==closure== 54766 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #20415: <==closure== 79958 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #21241: <==commonly_known== 66719 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #25379: <==closure== 79958 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #26613: <==commonly_known== 78881 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #27797: origin
                    (Bb_secret)

                    ; #29016: <==commonly_known== 27797 (pos)
                    (Bc_Bb_secret)

                    ; #29670: <==closure== 10887 (pos)
                    (Pa_Pb_secret)

                    ; #30639: <==closure== 68898 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #37331: <==closure== 54766 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #37444: <==commonly_known== 47701 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #40842: <==commonly_known== 47404 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #46854: <==commonly_known== 12357 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #47701: <==commonly_known== 65916 (neg)
                    (Pa_Bb_secret)

                    ; #48196: <==closure== 68898 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #48510: <==commonly_known== 78798 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #50472: <==commonly_known== 78798 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #50786: <==closure== 91786 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #52080: <==closure== 91786 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #54766: <==commonly_known== 29016 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #54917: <==commonly_known== 85059 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #56540: <==closure== 54766 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #58313: <==closure== 91786 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #62082: <==closure== 79958 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #62320: <==commonly_known== 66719 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #63047: <==commonly_known== 85059 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #66719: <==commonly_known== 65916 (neg)
                    (Pc_Bb_secret)

                    ; #68898: <==commonly_known== 29016 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #72169: <==closure== 68898 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #76278: <==commonly_known== 12357 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #77790: <==closure== 27797 (pos)
                    (Pb_secret)

                    ; #78511: <==commonly_known== 29670 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #78798: <==commonly_known== 77790 (pos)
                    (Bc_Pb_secret)

                    ; #79958: <==commonly_known== 10887 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #82766: <==commonly_known== 78881 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #85059: <==closure== 29016 (pos)
                    (Pc_Pb_secret)

                    ; #87531: <==commonly_known== 47701 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #91786: <==commonly_known== 10887 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #91796: <==commonly_known== 47404 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #10241: <==negation-removal== 63047 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #14546: <==negation-removal== 26613 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #17720: <==negation-removal== 72169 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #19110: <==negation-removal== 68898 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #19400: <==negation-removal== 37444 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #21604: <==negation-removal== 40842 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #23313: <==negation-removal== 12357 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #23998: <==negation-removal== 29670 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #24555: <==negation-removal== 30639 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #26088: <==negation-removal== 20415 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #27121: <==negation-removal== 62082 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #29386: <==negation-removal== 50472 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #30109: <==negation-removal== 50786 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #30488: <==negation-removal== 47701 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #36911: <==negation-removal== 25379 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #40362: <==negation-removal== 85059 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #45043: <==negation-removal== 56540 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #46367: <==negation-removal== 62320 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #46663: <==negation-removal== 58313 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #47404: <==negation-removal== 29016 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #47484: <==negation-removal== 54917 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #51758: <==negation-removal== 46854 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #51976: <==negation-removal== 77790 (pos)
                    (not (Bb_not_secret))

                    ; #57697: <==negation-removal== 79958 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #57988: <==negation-removal== 15591 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #60012: <==negation-removal== 91786 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #61609: <==negation-removal== 13436 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #64642: <==negation-removal== 54766 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #65488: <==negation-removal== 48196 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #65916: <==negation-removal== 27797 (pos)
                    (not (Pb_not_secret))

                    ; #71625: <==negation-removal== 78511 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #76026: <==negation-removal== 66719 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #78298: <==negation-removal== 21241 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #78881: <==negation-removal== 10887 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #79071: <==negation-removal== 37331 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #80711: <==negation-removal== 87531 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #80755: <==negation-removal== 52080 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #85630: <==negation-removal== 91796 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #85833: <==negation-removal== 82766 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #86818: <==negation-removal== 78798 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #87924: <==negation-removal== 76278 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #91109: <==negation-removal== 48510 (pos)
                    (not (Pa_Pc_Bb_not_secret))))

    (:action shout-2
        :precondition (and (Pa_secret)
                           (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #10887: <==commonly_known== 27797 (pos)
                    (Ba_Bb_secret)

                    ; #12357: <==commonly_known== 77790 (pos)
                    (Ba_Pb_secret)

                    ; #13436: <==commonly_known== 29670 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #15591: <==closure== 54766 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #16232: <==closure== 74917 (pos)
                    (Pb_Pc_secret)

                    ; #16286: <==commonly_known== 62213 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #16607: <==commonly_known== 74917 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #17376: <==commonly_known== 16232 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #17775: <==closure== 22308 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #20199: <==commonly_known== 82812 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #20415: <==closure== 79958 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #21241: <==commonly_known== 66719 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #22308: <==commonly_known== 86724 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #23658: <==commonly_known== 29504 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #25379: <==closure== 79958 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #26613: <==commonly_known== 78881 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #27701: <==closure== 43992 (pos)
                    (Pc_secret)

                    ; #27797: origin
                    (Bb_secret)

                    ; #28047: <==closure== 43569 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #29016: <==commonly_known== 27797 (pos)
                    (Bc_Bb_secret)

                    ; #29670: <==closure== 10887 (pos)
                    (Pa_Pb_secret)

                    ; #30639: <==closure== 68898 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #37331: <==closure== 54766 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #37356: <==commonly_known== 64880 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #37444: <==commonly_known== 47701 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #38169: <==commonly_known== 82812 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #38771: <==closure== 43569 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #39319: <==closure== 22308 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #39928: <==closure== 16607 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #40842: <==commonly_known== 47404 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #43323: <==commonly_known== 29504 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #43569: <==commonly_known== 74917 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #43798: <==closure== 43569 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #43992: origin
                    (Bc_secret)

                    ; #44583: <==commonly_known== 64880 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #45499: <==commonly_known== 28931 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #45823: <==closure== 49073 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #46854: <==commonly_known== 12357 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #47701: <==commonly_known== 65916 (neg)
                    (Pa_Bb_secret)

                    ; #48196: <==closure== 68898 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #48510: <==commonly_known== 78798 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #49073: <==commonly_known== 86724 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #50472: <==commonly_known== 78798 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #50786: <==closure== 91786 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #51465: <==commonly_known== 28931 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #52080: <==closure== 91786 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #52876: <==closure== 22308 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #54766: <==commonly_known== 29016 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #54917: <==commonly_known== 85059 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #56540: <==closure== 54766 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #58121: <==closure== 16607 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #58313: <==closure== 91786 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #58638: <==commonly_known== 62087 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #58675: <==commonly_known== 16232 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #62082: <==closure== 79958 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #62087: <==commonly_known== 55268 (neg)
                    (Pb_Bc_secret)

                    ; #62213: <==commonly_known== 55268 (neg)
                    (Pa_Bc_secret)

                    ; #62320: <==commonly_known== 66719 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #63047: <==commonly_known== 85059 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #63179: <==commonly_known== 62213 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #64880: <==commonly_known== 27701 (pos)
                    (Bb_Pc_secret)

                    ; #66719: <==commonly_known== 65916 (neg)
                    (Pc_Bb_secret)

                    ; #66865: <==commonly_known== 62087 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #68739: <==commonly_known== 78639 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #68898: <==commonly_known== 29016 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #72169: <==closure== 68898 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #73845: <==commonly_known== 78639 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #74917: <==commonly_known== 43992 (pos)
                    (Bb_Bc_secret)

                    ; #76278: <==commonly_known== 12357 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #77790: <==closure== 27797 (pos)
                    (Pb_secret)

                    ; #78511: <==commonly_known== 29670 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #78639: <==closure== 86724 (pos)
                    (Pa_Pc_secret)

                    ; #78798: <==commonly_known== 77790 (pos)
                    (Bc_Pb_secret)

                    ; #79958: <==commonly_known== 10887 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #82766: <==commonly_known== 78881 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #82812: <==commonly_known== 27701 (pos)
                    (Ba_Pc_secret)

                    ; #85059: <==closure== 29016 (pos)
                    (Pc_Pb_secret)

                    ; #86724: <==commonly_known== 43992 (pos)
                    (Ba_Bc_secret)

                    ; #87441: <==closure== 49073 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #87531: <==commonly_known== 47701 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #88510: <==closure== 49073 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #91739: <==closure== 16607 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #91786: <==commonly_known== 10887 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #91796: <==commonly_known== 47404 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #10241: <==negation-removal== 63047 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #11350: <==negation-removal== 45499 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #12444: <==negation-removal== 62213 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #14546: <==negation-removal== 26613 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #14962: <==negation-removal== 39928 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #16482: <==negation-removal== 43323 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #16944: <==negation-removal== 28047 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #17720: <==negation-removal== 72169 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #17951: <==negation-removal== 88510 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #17996: <==negation-removal== 58675 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #19110: <==negation-removal== 68898 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #19400: <==negation-removal== 37444 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #19675: <==negation-removal== 17775 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #21224: <==negation-removal== 68739 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #21604: <==negation-removal== 40842 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #23313: <==negation-removal== 12357 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #23998: <==negation-removal== 29670 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #24555: <==negation-removal== 30639 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #24678: <==negation-removal== 37356 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #25746: <==negation-removal== 58638 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #26088: <==negation-removal== 20415 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #27121: <==negation-removal== 62082 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #28795: <==negation-removal== 23658 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #28931: <==negation-removal== 86724 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #29386: <==negation-removal== 50472 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #29504: <==negation-removal== 74917 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #30109: <==negation-removal== 50786 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #30488: <==negation-removal== 47701 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #33428: <==negation-removal== 64880 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #36911: <==negation-removal== 25379 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #38874: <==negation-removal== 22308 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #38944: <==negation-removal== 66865 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #39251: <==negation-removal== 16232 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #40362: <==negation-removal== 85059 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #42181: <==negation-removal== 52876 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #42859: <==negation-removal== 62087 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #42876: <==negation-removal== 45823 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #45043: <==negation-removal== 56540 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #46367: <==negation-removal== 62320 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #46663: <==negation-removal== 58313 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #47404: <==negation-removal== 29016 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #47484: <==negation-removal== 54917 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #48079: <==negation-removal== 38771 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #51758: <==negation-removal== 46854 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #51823: <==negation-removal== 51465 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #51976: <==negation-removal== 77790 (pos)
                    (not (Bb_not_secret))

                    ; #54278: <==negation-removal== 43798 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #54480: <==negation-removal== 63179 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #55268: <==negation-removal== 43992 (pos)
                    (not (Pc_not_secret))

                    ; #57697: <==negation-removal== 79958 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #57988: <==negation-removal== 15591 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #59687: <==negation-removal== 20199 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #60012: <==negation-removal== 91786 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #60918: <==negation-removal== 78639 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #61609: <==negation-removal== 13436 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #64642: <==negation-removal== 54766 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #65488: <==negation-removal== 48196 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #65916: <==negation-removal== 27797 (pos)
                    (not (Pb_not_secret))

                    ; #68383: <==negation-removal== 87441 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #69796: <==negation-removal== 27701 (pos)
                    (not (Bc_not_secret))

                    ; #71625: <==negation-removal== 78511 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #72279: <==negation-removal== 16607 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #76026: <==negation-removal== 66719 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #76116: <==negation-removal== 49073 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #77183: <==negation-removal== 91739 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #78298: <==negation-removal== 21241 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #78881: <==negation-removal== 10887 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #79071: <==negation-removal== 37331 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #79724: <==negation-removal== 16286 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #80711: <==negation-removal== 87531 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #80755: <==negation-removal== 52080 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #80865: <==negation-removal== 39319 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #83978: <==negation-removal== 44583 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #84053: <==negation-removal== 58121 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #84476: <==negation-removal== 82812 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #84956: <==negation-removal== 17376 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #85630: <==negation-removal== 91796 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #85833: <==negation-removal== 82766 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #86818: <==negation-removal== 78798 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #87924: <==negation-removal== 76278 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #90618: <==negation-removal== 73845 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #91109: <==negation-removal== 48510 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #91641: <==negation-removal== 43569 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #92174: <==negation-removal== 38169 (pos)
                    (not (Pb_Pa_Bc_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #10887: <==commonly_known== 27797 (pos)
                    (Ba_Bb_secret)

                    ; #12357: <==commonly_known== 77790 (pos)
                    (Ba_Pb_secret)

                    ; #13436: <==commonly_known== 29670 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #15591: <==closure== 54766 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #16232: <==closure== 74917 (pos)
                    (Pb_Pc_secret)

                    ; #16286: <==commonly_known== 62213 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #16607: <==commonly_known== 74917 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #17376: <==commonly_known== 16232 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #17775: <==closure== 22308 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #20199: <==commonly_known== 82812 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #20415: <==closure== 79958 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #21241: <==commonly_known== 66719 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #22308: <==commonly_known== 86724 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #23658: <==commonly_known== 29504 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #25379: <==closure== 79958 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #26613: <==commonly_known== 78881 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #27701: <==closure== 43992 (pos)
                    (Pc_secret)

                    ; #27797: origin
                    (Bb_secret)

                    ; #28047: <==closure== 43569 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #29016: <==commonly_known== 27797 (pos)
                    (Bc_Bb_secret)

                    ; #29670: <==closure== 10887 (pos)
                    (Pa_Pb_secret)

                    ; #30639: <==closure== 68898 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #37331: <==closure== 54766 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #37356: <==commonly_known== 64880 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #37444: <==commonly_known== 47701 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #38169: <==commonly_known== 82812 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #38771: <==closure== 43569 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #39319: <==closure== 22308 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #39928: <==closure== 16607 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #40842: <==commonly_known== 47404 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #43323: <==commonly_known== 29504 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #43569: <==commonly_known== 74917 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #43798: <==closure== 43569 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #43992: origin
                    (Bc_secret)

                    ; #44583: <==commonly_known== 64880 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #45499: <==commonly_known== 28931 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #45823: <==closure== 49073 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #46854: <==commonly_known== 12357 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #47701: <==commonly_known== 65916 (neg)
                    (Pa_Bb_secret)

                    ; #48196: <==closure== 68898 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #48510: <==commonly_known== 78798 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #49073: <==commonly_known== 86724 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #50472: <==commonly_known== 78798 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #50786: <==closure== 91786 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #51465: <==commonly_known== 28931 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #52080: <==closure== 91786 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #52876: <==closure== 22308 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #54766: <==commonly_known== 29016 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #54917: <==commonly_known== 85059 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #56540: <==closure== 54766 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #58121: <==closure== 16607 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #58313: <==closure== 91786 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #58638: <==commonly_known== 62087 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #58675: <==commonly_known== 16232 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #62082: <==closure== 79958 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #62087: <==commonly_known== 55268 (neg)
                    (Pb_Bc_secret)

                    ; #62213: <==commonly_known== 55268 (neg)
                    (Pa_Bc_secret)

                    ; #62320: <==commonly_known== 66719 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #63047: <==commonly_known== 85059 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #63179: <==commonly_known== 62213 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #64880: <==commonly_known== 27701 (pos)
                    (Bb_Pc_secret)

                    ; #66719: <==commonly_known== 65916 (neg)
                    (Pc_Bb_secret)

                    ; #66865: <==commonly_known== 62087 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #68739: <==commonly_known== 78639 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #68898: <==commonly_known== 29016 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #72169: <==closure== 68898 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #73845: <==commonly_known== 78639 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #74917: <==commonly_known== 43992 (pos)
                    (Bb_Bc_secret)

                    ; #76278: <==commonly_known== 12357 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #77790: <==closure== 27797 (pos)
                    (Pb_secret)

                    ; #78511: <==commonly_known== 29670 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #78639: <==closure== 86724 (pos)
                    (Pa_Pc_secret)

                    ; #78798: <==commonly_known== 77790 (pos)
                    (Bc_Pb_secret)

                    ; #79958: <==commonly_known== 10887 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #82766: <==commonly_known== 78881 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #82812: <==commonly_known== 27701 (pos)
                    (Ba_Pc_secret)

                    ; #85059: <==closure== 29016 (pos)
                    (Pc_Pb_secret)

                    ; #86724: <==commonly_known== 43992 (pos)
                    (Ba_Bc_secret)

                    ; #87441: <==closure== 49073 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #87531: <==commonly_known== 47701 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #88510: <==closure== 49073 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #91739: <==closure== 16607 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #91786: <==commonly_known== 10887 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #91796: <==commonly_known== 47404 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #10241: <==negation-removal== 63047 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #11350: <==negation-removal== 45499 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #12444: <==negation-removal== 62213 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #14546: <==negation-removal== 26613 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #14962: <==negation-removal== 39928 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #16482: <==negation-removal== 43323 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #16944: <==negation-removal== 28047 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #17720: <==negation-removal== 72169 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #17951: <==negation-removal== 88510 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #17996: <==negation-removal== 58675 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #19110: <==negation-removal== 68898 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #19400: <==negation-removal== 37444 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #19675: <==negation-removal== 17775 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #21224: <==negation-removal== 68739 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #21604: <==negation-removal== 40842 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #23313: <==negation-removal== 12357 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #23998: <==negation-removal== 29670 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #24555: <==negation-removal== 30639 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #24678: <==negation-removal== 37356 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #25746: <==negation-removal== 58638 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #26088: <==negation-removal== 20415 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #27121: <==negation-removal== 62082 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #28795: <==negation-removal== 23658 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #28931: <==negation-removal== 86724 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #29386: <==negation-removal== 50472 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #29504: <==negation-removal== 74917 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #30109: <==negation-removal== 50786 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #30488: <==negation-removal== 47701 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #33428: <==negation-removal== 64880 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #36911: <==negation-removal== 25379 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #38874: <==negation-removal== 22308 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #38944: <==negation-removal== 66865 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #39251: <==negation-removal== 16232 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #40362: <==negation-removal== 85059 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #42181: <==negation-removal== 52876 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #42859: <==negation-removal== 62087 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #42876: <==negation-removal== 45823 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #45043: <==negation-removal== 56540 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #46367: <==negation-removal== 62320 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #46663: <==negation-removal== 58313 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #47404: <==negation-removal== 29016 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #47484: <==negation-removal== 54917 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #48079: <==negation-removal== 38771 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #51758: <==negation-removal== 46854 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #51823: <==negation-removal== 51465 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #51976: <==negation-removal== 77790 (pos)
                    (not (Bb_not_secret))

                    ; #54278: <==negation-removal== 43798 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #54480: <==negation-removal== 63179 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #55268: <==negation-removal== 43992 (pos)
                    (not (Pc_not_secret))

                    ; #57697: <==negation-removal== 79958 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #57988: <==negation-removal== 15591 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #59687: <==negation-removal== 20199 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #60012: <==negation-removal== 91786 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #60918: <==negation-removal== 78639 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #61609: <==negation-removal== 13436 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #64642: <==negation-removal== 54766 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #65488: <==negation-removal== 48196 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #65916: <==negation-removal== 27797 (pos)
                    (not (Pb_not_secret))

                    ; #68383: <==negation-removal== 87441 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #69796: <==negation-removal== 27701 (pos)
                    (not (Bc_not_secret))

                    ; #71625: <==negation-removal== 78511 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #72279: <==negation-removal== 16607 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #76026: <==negation-removal== 66719 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #76116: <==negation-removal== 49073 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #77183: <==negation-removal== 91739 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #78298: <==negation-removal== 21241 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #78881: <==negation-removal== 10887 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #79071: <==negation-removal== 37331 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #79724: <==negation-removal== 16286 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #80711: <==negation-removal== 87531 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #80755: <==negation-removal== 52080 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #80865: <==negation-removal== 39319 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #83978: <==negation-removal== 44583 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #84053: <==negation-removal== 58121 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #84476: <==negation-removal== 82812 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #84956: <==negation-removal== 17376 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #85630: <==negation-removal== 91796 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #85833: <==negation-removal== 82766 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #86818: <==negation-removal== 78798 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #87924: <==negation-removal== 76278 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #90618: <==negation-removal== 73845 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #91109: <==negation-removal== 48510 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #91641: <==negation-removal== 43569 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #92174: <==negation-removal== 38169 (pos)
                    (not (Pb_Pa_Bc_not_secret))))

    (:action shout-4
        :precondition (and (Pa_secret)
                           (at_l4)
                           (Ba_secret))
        :effect (and
                    ; #16232: <==closure== 74917 (pos)
                    (Pb_Pc_secret)

                    ; #16286: <==commonly_known== 62213 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #16607: <==commonly_known== 74917 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #17376: <==commonly_known== 16232 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #17775: <==closure== 22308 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #20199: <==commonly_known== 82812 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #22308: <==commonly_known== 86724 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #23658: <==commonly_known== 29504 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #27701: <==closure== 43992 (pos)
                    (Pc_secret)

                    ; #28047: <==closure== 43569 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #37356: <==commonly_known== 64880 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #38169: <==commonly_known== 82812 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #38771: <==closure== 43569 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #39319: <==closure== 22308 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #39928: <==closure== 16607 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #43323: <==commonly_known== 29504 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #43569: <==commonly_known== 74917 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #43798: <==closure== 43569 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #43992: origin
                    (Bc_secret)

                    ; #44583: <==commonly_known== 64880 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #45499: <==commonly_known== 28931 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #45823: <==closure== 49073 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #49073: <==commonly_known== 86724 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #51465: <==commonly_known== 28931 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #52876: <==closure== 22308 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #58121: <==closure== 16607 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #58638: <==commonly_known== 62087 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #58675: <==commonly_known== 16232 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #62087: <==commonly_known== 55268 (neg)
                    (Pb_Bc_secret)

                    ; #62213: <==commonly_known== 55268 (neg)
                    (Pa_Bc_secret)

                    ; #63179: <==commonly_known== 62213 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #64880: <==commonly_known== 27701 (pos)
                    (Bb_Pc_secret)

                    ; #66865: <==commonly_known== 62087 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #68739: <==commonly_known== 78639 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #73845: <==commonly_known== 78639 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #74917: <==commonly_known== 43992 (pos)
                    (Bb_Bc_secret)

                    ; #78639: <==closure== 86724 (pos)
                    (Pa_Pc_secret)

                    ; #82812: <==commonly_known== 27701 (pos)
                    (Ba_Pc_secret)

                    ; #86724: <==commonly_known== 43992 (pos)
                    (Ba_Bc_secret)

                    ; #87441: <==closure== 49073 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #88510: <==closure== 49073 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #91739: <==closure== 16607 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #11350: <==negation-removal== 45499 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #12444: <==negation-removal== 62213 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #14962: <==negation-removal== 39928 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #16482: <==negation-removal== 43323 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #16944: <==negation-removal== 28047 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #17951: <==negation-removal== 88510 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #17996: <==negation-removal== 58675 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #19675: <==negation-removal== 17775 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #21224: <==negation-removal== 68739 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #24678: <==negation-removal== 37356 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #25746: <==negation-removal== 58638 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #28795: <==negation-removal== 23658 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #28931: <==negation-removal== 86724 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #29504: <==negation-removal== 74917 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #33428: <==negation-removal== 64880 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #38874: <==negation-removal== 22308 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #38944: <==negation-removal== 66865 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #39251: <==negation-removal== 16232 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #42181: <==negation-removal== 52876 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #42859: <==negation-removal== 62087 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #42876: <==negation-removal== 45823 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #48079: <==negation-removal== 38771 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #51823: <==negation-removal== 51465 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #54278: <==negation-removal== 43798 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #54480: <==negation-removal== 63179 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #55268: <==negation-removal== 43992 (pos)
                    (not (Pc_not_secret))

                    ; #59687: <==negation-removal== 20199 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #60918: <==negation-removal== 78639 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #68383: <==negation-removal== 87441 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #69796: <==negation-removal== 27701 (pos)
                    (not (Bc_not_secret))

                    ; #72279: <==negation-removal== 16607 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #76116: <==negation-removal== 49073 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #77183: <==negation-removal== 91739 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #79724: <==negation-removal== 16286 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #80865: <==negation-removal== 39319 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #83978: <==negation-removal== 44583 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #84053: <==negation-removal== 58121 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #84476: <==negation-removal== 82812 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #84956: <==negation-removal== 17376 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #90618: <==negation-removal== 73845 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #91641: <==negation-removal== 43569 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #92174: <==negation-removal== 38169 (pos)
                    (not (Pb_Pa_Bc_not_secret))))

)