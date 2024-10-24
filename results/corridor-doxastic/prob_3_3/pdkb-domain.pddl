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

    (:action fib-1
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l1))
        :effect (and
                    ; #13138: <==closure== 49391 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #15684: <==commonly_known== 17650 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #17650: <==closure== 85512 (pos)
                    (Pa_Pb_not_secret)

                    ; #25125: <==commonly_known== 85512 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #25789: <==commonly_known== 80359 (pos)
                    (Ba_Pb_not_secret)

                    ; #28812: <==commonly_known== 50820 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #29617: <==commonly_known== 77174 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #30966: <==commonly_known== 17650 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #35160: <==closure== 53350 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #37360: <==closure== 25125 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #38821: <==closure== 49391 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #40181: <==commonly_known== 81040 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #41175: <==closure== 25125 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #44185: <==commonly_known== 25789 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #44770: <==commonly_known== 25789 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #45945: <==closure== 49391 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #46891: <==closure== 53350 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #49391: <==commonly_known== 66786 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #50820: <==commonly_known== 80359 (pos)
                    (Bc_Pb_not_secret)

                    ; #52406: <==commonly_known== 84923 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #53350: <==commonly_known== 85512 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #60736: <==commonly_known== 41303 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #64121: <==commonly_known== 77174 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #65353: <==commonly_known== 87218 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #65614: <==commonly_known== 50820 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #66786: <==commonly_known== 82236 (pos)
                    (Bc_Bb_not_secret)

                    ; #69419: <==closure== 87708 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #73270: <==closure== 25125 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #74801: <==commonly_known== 84923 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #75422: <==closure== 87708 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #75469: <==commonly_known== 41303 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #77174: <==commonly_known== 74494 (neg)
                    (Pc_Bb_not_secret)

                    ; #77790: <==commonly_known== 81040 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #80359: <==closure== 82236 (pos)
                    (Pb_not_secret)

                    ; #81818: <==closure== 53350 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #82112: <==commonly_known== 87218 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #82236: origin
                    (Bb_not_secret)

                    ; #84923: <==closure== 66786 (pos)
                    (Pc_Pb_not_secret)

                    ; #85512: <==commonly_known== 82236 (pos)
                    (Ba_Bb_not_secret)

                    ; #87218: <==commonly_known== 74494 (neg)
                    (Pa_Bb_not_secret)

                    ; #87708: <==commonly_known== 66786 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #91485: <==closure== 87708 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #12791: <==negation-removal== 53350 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #17630: <==negation-removal== 38821 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #20176: <==negation-removal== 82112 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #20638: <==negation-removal== 65353 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #23455: <==negation-removal== 74801 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #28369: <==negation-removal== 73270 (pos)
                    (not (Bc_Ba_Bb_secret))

                    ; #30921: <==negation-removal== 77790 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #31738: <==negation-removal== 45945 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #32977: <==negation-removal== 44185 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #35561: <==negation-removal== 91485 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #37925: <==negation-removal== 87218 (pos)
                    (not (Ba_Pb_secret))

                    ; #41154: <==negation-removal== 81818 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #41303: <==negation-removal== 85512 (pos)
                    (not (Pa_Pb_secret))

                    ; #42217: <==negation-removal== 28812 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #44328: <==negation-removal== 77174 (pos)
                    (not (Bc_Pb_secret))

                    ; #44553: <==negation-removal== 52406 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #46730: <==negation-removal== 41175 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #49784: <==negation-removal== 75469 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #55685: <==negation-removal== 29617 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #56214: <==negation-removal== 84923 (pos)
                    (not (Bc_Bb_secret))

                    ; #57060: <==negation-removal== 13138 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #60772: <==negation-removal== 64121 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #61406: <==negation-removal== 30966 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #61908: <==negation-removal== 44770 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #65044: <==negation-removal== 49391 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #65435: <==negation-removal== 87708 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #67190: <==negation-removal== 46891 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #69620: <==negation-removal== 69419 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #70651: <==negation-removal== 25125 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #71422: <==negation-removal== 80359 (pos)
                    (not (Bb_secret))

                    ; #74494: <==negation-removal== 82236 (pos)
                    (not (Pb_secret))

                    ; #76645: <==negation-removal== 25789 (pos)
                    (not (Pa_Bb_secret))

                    ; #78146: <==negation-removal== 40181 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #81040: <==negation-removal== 66786 (pos)
                    (not (Pc_Pb_secret))

                    ; #82854: <==negation-removal== 35160 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #85137: <==negation-removal== 65614 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #85581: <==negation-removal== 17650 (pos)
                    (not (Ba_Bb_secret))

                    ; #86028: <==negation-removal== 15684 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #89083: <==negation-removal== 50820 (pos)
                    (not (Pc_Bb_secret))

                    ; #90630: <==negation-removal== 60736 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #90803: <==negation-removal== 75422 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #92128: <==negation-removal== 37360 (pos)
                    (not (Bc_Pa_Bb_secret))))

    (:action fib-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #10206: origin
                    (Bc_not_secret)

                    ; #12928: <==closure== 74547 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #13138: <==closure== 49391 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #14255: <==closure== 65130 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #15684: <==commonly_known== 17650 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #16641: <==commonly_known== 64806 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #17572: <==closure== 67071 (pos)
                    (Pb_Pc_not_secret)

                    ; #17650: <==closure== 85512 (pos)
                    (Pa_Pb_not_secret)

                    ; #19141: <==closure== 46193 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #20148: <==commonly_known== 78114 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #21334: <==closure== 74547 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #25125: <==commonly_known== 85512 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #25789: <==commonly_known== 80359 (pos)
                    (Ba_Pb_not_secret)

                    ; #27347: <==commonly_known== 34597 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #28186: <==closure== 46193 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #28812: <==commonly_known== 50820 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #29516: <==closure== 46193 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #29617: <==commonly_known== 77174 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #30757: <==commonly_known== 91713 (neg)
                    (Pb_Bc_not_secret)

                    ; #30811: <==commonly_known== 30757 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #30966: <==commonly_known== 17650 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #31536: <==closure== 74547 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #34597: <==closure== 68063 (pos)
                    (Pa_Pc_not_secret)

                    ; #35160: <==closure== 53350 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #36954: <==closure== 65130 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #37360: <==closure== 25125 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #37924: <==closure== 65130 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #38289: <==commonly_known== 93508 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #38821: <==closure== 49391 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #40181: <==commonly_known== 81040 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #41175: <==closure== 25125 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #42509: <==closure== 58442 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #44185: <==commonly_known== 25789 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #44199: <==closure== 58442 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #44770: <==commonly_known== 25789 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #45461: <==commonly_known== 46728 (pos)
                    (Bb_Pc_not_secret)

                    ; #45945: <==closure== 49391 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #46193: <==commonly_known== 68063 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #46728: <==closure== 10206 (pos)
                    (Pc_not_secret)

                    ; #46891: <==closure== 53350 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #47607: <==commonly_known== 64806 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #49391: <==commonly_known== 66786 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #50820: <==commonly_known== 80359 (pos)
                    (Bc_Pb_not_secret)

                    ; #51093: <==commonly_known== 91713 (neg)
                    (Pa_Bc_not_secret)

                    ; #52406: <==commonly_known== 84923 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #53350: <==commonly_known== 85512 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #55853: <==commonly_known== 34597 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #58442: <==commonly_known== 68063 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #60736: <==commonly_known== 41303 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #62177: <==commonly_known== 30757 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #63052: <==commonly_known== 51093 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #64121: <==commonly_known== 77174 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #64806: <==commonly_known== 46728 (pos)
                    (Ba_Pc_not_secret)

                    ; #65130: <==commonly_known== 67071 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #65353: <==commonly_known== 87218 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #65614: <==commonly_known== 50820 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #66786: <==commonly_known== 82236 (pos)
                    (Bc_Bb_not_secret)

                    ; #67071: <==commonly_known== 10206 (pos)
                    (Bb_Bc_not_secret)

                    ; #68063: <==commonly_known== 10206 (pos)
                    (Ba_Bc_not_secret)

                    ; #68332: <==commonly_known== 17572 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #69419: <==closure== 87708 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #72274: <==commonly_known== 45461 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #73270: <==closure== 25125 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #74547: <==commonly_known== 67071 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #74801: <==commonly_known== 84923 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #75422: <==closure== 87708 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #75469: <==commonly_known== 41303 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #77174: <==commonly_known== 74494 (neg)
                    (Pc_Bb_not_secret)

                    ; #77790: <==commonly_known== 81040 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #78294: <==commonly_known== 78114 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #79501: <==commonly_known== 93508 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #80359: <==closure== 82236 (pos)
                    (Pb_not_secret)

                    ; #81215: <==commonly_known== 45461 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #81818: <==closure== 53350 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #82112: <==commonly_known== 87218 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #82236: origin
                    (Bb_not_secret)

                    ; #84923: <==closure== 66786 (pos)
                    (Pc_Pb_not_secret)

                    ; #85512: <==commonly_known== 82236 (pos)
                    (Ba_Bb_not_secret)

                    ; #87218: <==commonly_known== 74494 (neg)
                    (Pa_Bb_not_secret)

                    ; #87708: <==commonly_known== 66786 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #88845: <==closure== 58442 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #90310: <==commonly_known== 51093 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #90702: <==commonly_known== 17572 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #91485: <==closure== 87708 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #10636: <==negation-removal== 55853 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #12228: <==negation-removal== 42509 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #12791: <==negation-removal== 53350 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #13349: <==negation-removal== 79501 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #14048: <==negation-removal== 88845 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #14115: <==negation-removal== 45461 (pos)
                    (not (Pb_Bc_secret))

                    ; #17630: <==negation-removal== 38821 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #17728: <==negation-removal== 51093 (pos)
                    (not (Ba_Pc_secret))

                    ; #20176: <==negation-removal== 82112 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #20638: <==negation-removal== 65353 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #20860: <==negation-removal== 62177 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #23455: <==negation-removal== 74801 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #23895: <==negation-removal== 90702 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #27056: <==negation-removal== 14255 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #28369: <==negation-removal== 73270 (pos)
                    (not (Bc_Ba_Bb_secret))

                    ; #28743: <==negation-removal== 78294 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #30921: <==negation-removal== 77790 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #31738: <==negation-removal== 45945 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #32381: <==negation-removal== 28186 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #32977: <==negation-removal== 44185 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #33912: <==negation-removal== 21334 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #35561: <==negation-removal== 91485 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #37348: <==negation-removal== 63052 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #37925: <==negation-removal== 87218 (pos)
                    (not (Ba_Pb_secret))

                    ; #38376: <==negation-removal== 65130 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #38379: <==negation-removal== 64806 (pos)
                    (not (Pa_Bc_secret))

                    ; #38391: <==negation-removal== 17572 (pos)
                    (not (Bb_Bc_secret))

                    ; #39710: <==negation-removal== 30757 (pos)
                    (not (Bb_Pc_secret))

                    ; #41154: <==negation-removal== 81818 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #41303: <==negation-removal== 85512 (pos)
                    (not (Pa_Pb_secret))

                    ; #42217: <==negation-removal== 28812 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #44328: <==negation-removal== 77174 (pos)
                    (not (Bc_Pb_secret))

                    ; #44553: <==negation-removal== 52406 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #44647: <==negation-removal== 31536 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #45245: <==negation-removal== 12928 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #46730: <==negation-removal== 41175 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #49784: <==negation-removal== 75469 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #55685: <==negation-removal== 29617 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #56214: <==negation-removal== 84923 (pos)
                    (not (Bc_Bb_secret))

                    ; #56351: <==negation-removal== 46728 (pos)
                    (not (Bc_secret))

                    ; #56942: <==negation-removal== 72274 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #57060: <==negation-removal== 13138 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #60772: <==negation-removal== 64121 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #61406: <==negation-removal== 30966 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #61908: <==negation-removal== 44770 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #62206: <==negation-removal== 16641 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #65044: <==negation-removal== 49391 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #65305: <==negation-removal== 44199 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #65435: <==negation-removal== 87708 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #67055: <==negation-removal== 47607 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #67190: <==negation-removal== 46891 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #67820: <==negation-removal== 36954 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #68452: <==negation-removal== 74547 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #68483: <==negation-removal== 37924 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #69620: <==negation-removal== 69419 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #70651: <==negation-removal== 25125 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #71422: <==negation-removal== 80359 (pos)
                    (not (Bb_secret))

                    ; #72600: <==negation-removal== 38289 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #74494: <==negation-removal== 82236 (pos)
                    (not (Pb_secret))

                    ; #75836: <==negation-removal== 19141 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #76645: <==negation-removal== 25789 (pos)
                    (not (Pa_Bb_secret))

                    ; #78114: <==negation-removal== 68063 (pos)
                    (not (Pa_Pc_secret))

                    ; #78146: <==negation-removal== 40181 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #80055: <==negation-removal== 34597 (pos)
                    (not (Ba_Bc_secret))

                    ; #80452: <==negation-removal== 68332 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #81040: <==negation-removal== 66786 (pos)
                    (not (Pc_Pb_secret))

                    ; #81372: <==negation-removal== 27347 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #82535: <==negation-removal== 46193 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #82678: <==negation-removal== 30811 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #82854: <==negation-removal== 35160 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #84270: <==negation-removal== 20148 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #84716: <==negation-removal== 90310 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #85137: <==negation-removal== 65614 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #85581: <==negation-removal== 17650 (pos)
                    (not (Ba_Bb_secret))

                    ; #85584: <==negation-removal== 29516 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #86028: <==negation-removal== 15684 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #89083: <==negation-removal== 50820 (pos)
                    (not (Pc_Bb_secret))

                    ; #90112: <==negation-removal== 81215 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #90215: <==negation-removal== 58442 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #90630: <==negation-removal== 60736 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #90803: <==negation-removal== 75422 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #91713: <==negation-removal== 10206 (pos)
                    (not (Pc_secret))

                    ; #92128: <==negation-removal== 37360 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #93508: <==negation-removal== 67071 (pos)
                    (not (Pb_Pc_secret))))

    (:action fib-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #10206: origin
                    (Bc_not_secret)

                    ; #12928: <==closure== 74547 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #13138: <==closure== 49391 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #14255: <==closure== 65130 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #15684: <==commonly_known== 17650 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #16641: <==commonly_known== 64806 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #17572: <==closure== 67071 (pos)
                    (Pb_Pc_not_secret)

                    ; #17650: <==closure== 85512 (pos)
                    (Pa_Pb_not_secret)

                    ; #19141: <==closure== 46193 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #20148: <==commonly_known== 78114 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #21334: <==closure== 74547 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #25125: <==commonly_known== 85512 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #25789: <==commonly_known== 80359 (pos)
                    (Ba_Pb_not_secret)

                    ; #27347: <==commonly_known== 34597 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #28186: <==closure== 46193 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #28812: <==commonly_known== 50820 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #29516: <==closure== 46193 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #29617: <==commonly_known== 77174 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #30757: <==commonly_known== 91713 (neg)
                    (Pb_Bc_not_secret)

                    ; #30811: <==commonly_known== 30757 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #30966: <==commonly_known== 17650 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #31536: <==closure== 74547 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #34597: <==closure== 68063 (pos)
                    (Pa_Pc_not_secret)

                    ; #35160: <==closure== 53350 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #36954: <==closure== 65130 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #37360: <==closure== 25125 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #37924: <==closure== 65130 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #38289: <==commonly_known== 93508 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #38821: <==closure== 49391 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #40181: <==commonly_known== 81040 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #41175: <==closure== 25125 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #42509: <==closure== 58442 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #44185: <==commonly_known== 25789 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #44199: <==closure== 58442 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #44770: <==commonly_known== 25789 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #45461: <==commonly_known== 46728 (pos)
                    (Bb_Pc_not_secret)

                    ; #45945: <==closure== 49391 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #46193: <==commonly_known== 68063 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #46728: <==closure== 10206 (pos)
                    (Pc_not_secret)

                    ; #46891: <==closure== 53350 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #47607: <==commonly_known== 64806 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #49391: <==commonly_known== 66786 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #50820: <==commonly_known== 80359 (pos)
                    (Bc_Pb_not_secret)

                    ; #51093: <==commonly_known== 91713 (neg)
                    (Pa_Bc_not_secret)

                    ; #52406: <==commonly_known== 84923 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #53350: <==commonly_known== 85512 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #55853: <==commonly_known== 34597 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #58442: <==commonly_known== 68063 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #60736: <==commonly_known== 41303 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #62177: <==commonly_known== 30757 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #63052: <==commonly_known== 51093 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #64121: <==commonly_known== 77174 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #64806: <==commonly_known== 46728 (pos)
                    (Ba_Pc_not_secret)

                    ; #65130: <==commonly_known== 67071 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #65353: <==commonly_known== 87218 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #65614: <==commonly_known== 50820 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #66786: <==commonly_known== 82236 (pos)
                    (Bc_Bb_not_secret)

                    ; #67071: <==commonly_known== 10206 (pos)
                    (Bb_Bc_not_secret)

                    ; #68063: <==commonly_known== 10206 (pos)
                    (Ba_Bc_not_secret)

                    ; #68332: <==commonly_known== 17572 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #69419: <==closure== 87708 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #72274: <==commonly_known== 45461 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #73270: <==closure== 25125 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #74547: <==commonly_known== 67071 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #74801: <==commonly_known== 84923 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #75422: <==closure== 87708 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #75469: <==commonly_known== 41303 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #77174: <==commonly_known== 74494 (neg)
                    (Pc_Bb_not_secret)

                    ; #77790: <==commonly_known== 81040 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #78294: <==commonly_known== 78114 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #79501: <==commonly_known== 93508 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #80359: <==closure== 82236 (pos)
                    (Pb_not_secret)

                    ; #81215: <==commonly_known== 45461 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #81818: <==closure== 53350 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #82112: <==commonly_known== 87218 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #82236: origin
                    (Bb_not_secret)

                    ; #84923: <==closure== 66786 (pos)
                    (Pc_Pb_not_secret)

                    ; #85512: <==commonly_known== 82236 (pos)
                    (Ba_Bb_not_secret)

                    ; #87218: <==commonly_known== 74494 (neg)
                    (Pa_Bb_not_secret)

                    ; #87708: <==commonly_known== 66786 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #88845: <==closure== 58442 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #90310: <==commonly_known== 51093 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #90702: <==commonly_known== 17572 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #91485: <==closure== 87708 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #10636: <==negation-removal== 55853 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #12228: <==negation-removal== 42509 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #12791: <==negation-removal== 53350 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #13349: <==negation-removal== 79501 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #14048: <==negation-removal== 88845 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #14115: <==negation-removal== 45461 (pos)
                    (not (Pb_Bc_secret))

                    ; #17630: <==negation-removal== 38821 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #17728: <==negation-removal== 51093 (pos)
                    (not (Ba_Pc_secret))

                    ; #20176: <==negation-removal== 82112 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #20638: <==negation-removal== 65353 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #20860: <==negation-removal== 62177 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #23455: <==negation-removal== 74801 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #23895: <==negation-removal== 90702 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #27056: <==negation-removal== 14255 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #28369: <==negation-removal== 73270 (pos)
                    (not (Bc_Ba_Bb_secret))

                    ; #28743: <==negation-removal== 78294 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #30921: <==negation-removal== 77790 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #31738: <==negation-removal== 45945 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #32381: <==negation-removal== 28186 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #32977: <==negation-removal== 44185 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #33912: <==negation-removal== 21334 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #35561: <==negation-removal== 91485 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #37348: <==negation-removal== 63052 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #37925: <==negation-removal== 87218 (pos)
                    (not (Ba_Pb_secret))

                    ; #38376: <==negation-removal== 65130 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #38379: <==negation-removal== 64806 (pos)
                    (not (Pa_Bc_secret))

                    ; #38391: <==negation-removal== 17572 (pos)
                    (not (Bb_Bc_secret))

                    ; #39710: <==negation-removal== 30757 (pos)
                    (not (Bb_Pc_secret))

                    ; #41154: <==negation-removal== 81818 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #41303: <==negation-removal== 85512 (pos)
                    (not (Pa_Pb_secret))

                    ; #42217: <==negation-removal== 28812 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #44328: <==negation-removal== 77174 (pos)
                    (not (Bc_Pb_secret))

                    ; #44553: <==negation-removal== 52406 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #44647: <==negation-removal== 31536 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #45245: <==negation-removal== 12928 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #46730: <==negation-removal== 41175 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #49784: <==negation-removal== 75469 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #55685: <==negation-removal== 29617 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #56214: <==negation-removal== 84923 (pos)
                    (not (Bc_Bb_secret))

                    ; #56351: <==negation-removal== 46728 (pos)
                    (not (Bc_secret))

                    ; #56942: <==negation-removal== 72274 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #57060: <==negation-removal== 13138 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #60772: <==negation-removal== 64121 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #61406: <==negation-removal== 30966 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #61908: <==negation-removal== 44770 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #62206: <==negation-removal== 16641 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #65044: <==negation-removal== 49391 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #65305: <==negation-removal== 44199 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #65435: <==negation-removal== 87708 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #67055: <==negation-removal== 47607 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #67190: <==negation-removal== 46891 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #67820: <==negation-removal== 36954 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #68452: <==negation-removal== 74547 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #68483: <==negation-removal== 37924 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #69620: <==negation-removal== 69419 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #70651: <==negation-removal== 25125 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #71422: <==negation-removal== 80359 (pos)
                    (not (Bb_secret))

                    ; #72600: <==negation-removal== 38289 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #74494: <==negation-removal== 82236 (pos)
                    (not (Pb_secret))

                    ; #75836: <==negation-removal== 19141 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #76645: <==negation-removal== 25789 (pos)
                    (not (Pa_Bb_secret))

                    ; #78114: <==negation-removal== 68063 (pos)
                    (not (Pa_Pc_secret))

                    ; #78146: <==negation-removal== 40181 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #80055: <==negation-removal== 34597 (pos)
                    (not (Ba_Bc_secret))

                    ; #80452: <==negation-removal== 68332 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #81040: <==negation-removal== 66786 (pos)
                    (not (Pc_Pb_secret))

                    ; #81372: <==negation-removal== 27347 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #82535: <==negation-removal== 46193 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #82678: <==negation-removal== 30811 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #82854: <==negation-removal== 35160 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #84270: <==negation-removal== 20148 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #84716: <==negation-removal== 90310 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #85137: <==negation-removal== 65614 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #85581: <==negation-removal== 17650 (pos)
                    (not (Ba_Bb_secret))

                    ; #85584: <==negation-removal== 29516 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #86028: <==negation-removal== 15684 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #89083: <==negation-removal== 50820 (pos)
                    (not (Pc_Bb_secret))

                    ; #90112: <==negation-removal== 81215 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #90215: <==negation-removal== 58442 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #90630: <==negation-removal== 60736 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #90803: <==negation-removal== 75422 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #91713: <==negation-removal== 10206 (pos)
                    (not (Pc_secret))

                    ; #92128: <==negation-removal== 37360 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #93508: <==negation-removal== 67071 (pos)
                    (not (Pb_Pc_secret))))

    (:action fib-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #10206: origin
                    (Bc_not_secret)

                    ; #12928: <==closure== 74547 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #14255: <==closure== 65130 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #16641: <==commonly_known== 64806 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #17572: <==closure== 67071 (pos)
                    (Pb_Pc_not_secret)

                    ; #19141: <==closure== 46193 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #20148: <==commonly_known== 78114 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #21334: <==closure== 74547 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #27347: <==commonly_known== 34597 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #28186: <==closure== 46193 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #29516: <==closure== 46193 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #30757: <==commonly_known== 91713 (neg)
                    (Pb_Bc_not_secret)

                    ; #30811: <==commonly_known== 30757 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #31536: <==closure== 74547 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #34597: <==closure== 68063 (pos)
                    (Pa_Pc_not_secret)

                    ; #36954: <==closure== 65130 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #37924: <==closure== 65130 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #38289: <==commonly_known== 93508 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #42509: <==closure== 58442 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #44199: <==closure== 58442 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #45461: <==commonly_known== 46728 (pos)
                    (Bb_Pc_not_secret)

                    ; #46193: <==commonly_known== 68063 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #46728: <==closure== 10206 (pos)
                    (Pc_not_secret)

                    ; #47607: <==commonly_known== 64806 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #51093: <==commonly_known== 91713 (neg)
                    (Pa_Bc_not_secret)

                    ; #55853: <==commonly_known== 34597 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #58442: <==commonly_known== 68063 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #62177: <==commonly_known== 30757 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #63052: <==commonly_known== 51093 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #64806: <==commonly_known== 46728 (pos)
                    (Ba_Pc_not_secret)

                    ; #65130: <==commonly_known== 67071 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #67071: <==commonly_known== 10206 (pos)
                    (Bb_Bc_not_secret)

                    ; #68063: <==commonly_known== 10206 (pos)
                    (Ba_Bc_not_secret)

                    ; #68332: <==commonly_known== 17572 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #72274: <==commonly_known== 45461 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #74547: <==commonly_known== 67071 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #78294: <==commonly_known== 78114 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #79501: <==commonly_known== 93508 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #81215: <==commonly_known== 45461 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #88845: <==closure== 58442 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #90310: <==commonly_known== 51093 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #90702: <==commonly_known== 17572 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #10636: <==negation-removal== 55853 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #12228: <==negation-removal== 42509 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #13349: <==negation-removal== 79501 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #14048: <==negation-removal== 88845 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #14115: <==negation-removal== 45461 (pos)
                    (not (Pb_Bc_secret))

                    ; #17728: <==negation-removal== 51093 (pos)
                    (not (Ba_Pc_secret))

                    ; #20860: <==negation-removal== 62177 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #23895: <==negation-removal== 90702 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #27056: <==negation-removal== 14255 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #28743: <==negation-removal== 78294 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #32381: <==negation-removal== 28186 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #33912: <==negation-removal== 21334 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #37348: <==negation-removal== 63052 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #38376: <==negation-removal== 65130 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #38379: <==negation-removal== 64806 (pos)
                    (not (Pa_Bc_secret))

                    ; #38391: <==negation-removal== 17572 (pos)
                    (not (Bb_Bc_secret))

                    ; #39710: <==negation-removal== 30757 (pos)
                    (not (Bb_Pc_secret))

                    ; #44647: <==negation-removal== 31536 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #45245: <==negation-removal== 12928 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #56351: <==negation-removal== 46728 (pos)
                    (not (Bc_secret))

                    ; #56942: <==negation-removal== 72274 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #62206: <==negation-removal== 16641 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #65305: <==negation-removal== 44199 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #67055: <==negation-removal== 47607 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #67820: <==negation-removal== 36954 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #68452: <==negation-removal== 74547 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #68483: <==negation-removal== 37924 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #72600: <==negation-removal== 38289 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #75836: <==negation-removal== 19141 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #78114: <==negation-removal== 68063 (pos)
                    (not (Pa_Pc_secret))

                    ; #80055: <==negation-removal== 34597 (pos)
                    (not (Ba_Bc_secret))

                    ; #80452: <==negation-removal== 68332 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #81372: <==negation-removal== 27347 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #82535: <==negation-removal== 46193 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #82678: <==negation-removal== 30811 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #84270: <==negation-removal== 20148 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #84716: <==negation-removal== 90310 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #85584: <==negation-removal== 29516 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #90112: <==negation-removal== 81215 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #90215: <==negation-removal== 58442 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #91713: <==negation-removal== 10206 (pos)
                    (not (Pc_secret))

                    ; #93508: <==negation-removal== 67071 (pos)
                    (not (Pb_Pc_secret))))

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #76808: origin
                    (not_at_l1)

                    ; #80890: origin
                    (at_l1)

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #23505: origin
                    (not_at_l2)

                    ; #80890: origin
                    (at_l1)

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #42594: origin
                    (not_at_l3)

                    ; #80890: origin
                    (at_l1)

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #38883: origin
                    (not_at_l4)

                    ; #80890: origin
                    (at_l1)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #39171: origin
                    (at_l2)

                    ; #76808: origin
                    (not_at_l1)

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #23505: origin
                    (not_at_l2)

                    ; #39171: origin
                    (at_l2)

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #39171: origin
                    (at_l2)

                    ; #42594: origin
                    (not_at_l3)

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #38883: origin
                    (not_at_l4)

                    ; #39171: origin
                    (at_l2)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #26574: origin
                    (at_l3)

                    ; #76808: origin
                    (not_at_l1)

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #23505: origin
                    (not_at_l2)

                    ; #26574: origin
                    (at_l3)

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #26574: origin
                    (at_l3)

                    ; #42594: origin
                    (not_at_l3)

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #26574: origin
                    (at_l3)

                    ; #38883: origin
                    (not_at_l4)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #76808: origin
                    (not_at_l1)

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #23505: origin
                    (not_at_l2)

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #42594: origin
                    (not_at_l3)

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #38883: origin
                    (not_at_l4)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #76808: origin
                    (not_at_l1)

                    ; #80890: origin
                    (at_l1)

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #39171: origin
                    (at_l2)

                    ; #76808: origin
                    (not_at_l1)

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #26574: origin
                    (at_l3)

                    ; #76808: origin
                    (not_at_l1)

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #76808: origin
                    (not_at_l1)

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))

                    ; #80890: <==negation-removal== 76808 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #23505: origin
                    (not_at_l2)

                    ; #80890: origin
                    (at_l1)

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #23505: origin
                    (not_at_l2)

                    ; #39171: origin
                    (at_l2)

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #23505: origin
                    (not_at_l2)

                    ; #26574: origin
                    (at_l3)

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #23505: origin
                    (not_at_l2)

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))

                    ; #39171: <==negation-removal== 23505 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #42594: origin
                    (not_at_l3)

                    ; #80890: origin
                    (at_l1)

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #39171: origin
                    (at_l2)

                    ; #42594: origin
                    (not_at_l3)

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #26574: origin
                    (at_l3)

                    ; #42594: origin
                    (not_at_l3)

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #42594: origin
                    (not_at_l3)

                    ; #26574: <==negation-removal== 42594 (pos)
                    (not (at_l3))

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #38883: origin
                    (not_at_l4)

                    ; #80890: origin
                    (at_l1)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #76808: <==negation-removal== 80890 (pos)
                    (not (not_at_l1))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #38883: origin
                    (not_at_l4)

                    ; #39171: origin
                    (at_l2)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #23505: <==negation-removal== 39171 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #26574: origin
                    (at_l3)

                    ; #38883: origin
                    (not_at_l4)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #42594: <==negation-removal== 26574 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #14369: origin
                    (at_l4)

                    ; #38883: origin
                    (not_at_l4)

                    ; #14369: <==negation-removal== 38883 (pos)
                    (not (at_l4))

                    ; #38883: <==negation-removal== 14369 (pos)
                    (not (not_at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #10634: <==closure== 52478 (pos)
                    (Pa_secret)

                    ; #11625: <==commonly_known== 89292 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #14985: <==commonly_known== 10634 (pos)
                    (Bc_Pa_secret)

                    ; #15112: <==closure== 43565 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #17326: <==closure== 43565 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #20527: <==commonly_known== 14985 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #20642: <==commonly_known== 89292 (pos)
                    (Bb_Pc_Ba_secret)

                    ; #23040: <==commonly_known== 81420 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #34044: <==commonly_known== 10634 (pos)
                    (Bb_Pa_secret)

                    ; #34512: <==commonly_known== 14985 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #35052: <==closure== 91683 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #39072: <==commonly_known== 57587 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #39334: <==commonly_known== 45887 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #41983: <==closure== 91683 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #41983: <==commonly_known== 45711 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #43565: <==commonly_known== 57587 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #45887: <==commonly_known== 76999 (neg)
                    (Pb_Ba_secret)

                    ; #46754: <==closure== 70725 (pos)
                    (Pb_Pa_secret)

                    ; #49295: <==commonly_known== 53054 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #49867: <==closure== 70342 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #52036: <==commonly_known== 45887 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #52478: origin
                    (Ba_secret)

                    ; #53054: <==closure== 57587 (pos)
                    (Pc_Pa_secret)

                    ; #54009: <==commonly_known== 53054 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #55912: <==commonly_known== 45711 (neg)
                    (Pc_Bb_Ba_secret)

                    ; #55944: <==closure== 39072 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #57215: <==commonly_known== 34044 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #57587: <==commonly_known== 52478 (pos)
                    (Bc_Ba_secret)

                    ; #61158: <==closure== 43565 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #61936: <==commonly_known== 81420 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #63289: <==closure== 70342 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #64591: <==closure== 39072 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #70342: <==commonly_known== 70725 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #70725: <==commonly_known== 52478 (pos)
                    (Bb_Ba_secret)

                    ; #82558: <==commonly_known== 46754 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #84480: <==commonly_known== 46754 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #85790: <==commonly_known== 34044 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #88045: <==closure== 39072 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #89292: <==commonly_known== 76999 (neg)
                    (Pc_Ba_secret)

                    ; #90536: <==closure== 91683 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #91683: <==commonly_known== 70725 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #92037: <==closure== 70342 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #11216: <==negation-removal== 11625 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #13592: <==negation-removal== 41983 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #14904: <==negation-removal== 70342 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #15390: <==negation-removal== 43565 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #19876: <==negation-removal== 53054 (pos)
                    (not (Bc_Ba_not_secret))

                    ; #20260: <==negation-removal== 52036 (pos)
                    (not (Pc_Bb_Pa_not_secret))

                    ; #21672: <==negation-removal== 10634 (pos)
                    (not (Ba_not_secret))

                    ; #26276: <==negation-removal== 15112 (pos)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #31684: <==negation-removal== 88045 (pos)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #34317: <==negation-removal== 54009 (pos)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #40965: <==negation-removal== 46754 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #41786: <==negation-removal== 61936 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #44212: <==negation-removal== 82558 (pos)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #44800: <==negation-removal== 39334 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #45711: <==negation-removal== 70725 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #46532: <==negation-removal== 63289 (pos)
                    (not (Bc_Bb_Ba_not_secret))

                    ; #46576: <==negation-removal== 90536 (pos)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #46941: <==negation-removal== 34512 (pos)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #47015: <==negation-removal== 89292 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #49298: <==negation-removal== 20642 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #49881: <==negation-removal== 92037 (pos)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #50441: <==negation-removal== 49295 (pos)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #53173: <==negation-removal== 55944 (pos)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #58032: <==negation-removal== 55912 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #59556: <==negation-removal== 91683 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #62353: <==negation-removal== 14985 (pos)
                    (not (Pc_Ba_not_secret))

                    ; #63445: <==negation-removal== 49867 (pos)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #63599: <==negation-removal== 17326 (pos)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #68353: <==negation-removal== 35052 (pos)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #69291: <==negation-removal== 34044 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #71274: <==negation-removal== 20527 (pos)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #71493: <==negation-removal== 61158 (pos)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #76999: <==negation-removal== 52478 (pos)
                    (not (Pa_not_secret))

                    ; #77587: <==negation-removal== 23040 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #79918: <==negation-removal== 45887 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #81239: <==negation-removal== 84480 (pos)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #81420: <==negation-removal== 57587 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #82080: <==negation-removal== 64591 (pos)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #85186: <==negation-removal== 57215 (pos)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #89298: <==negation-removal== 85790 (pos)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #91869: <==negation-removal== 41983 (pos)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #92194: <==negation-removal== 39072 (pos)
                    (not (Pa_Pc_Pa_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l1))
        :effect (and
                    ; #12791: <==closure== 67190 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #17630: <==commonly_known== 56214 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #20176: <==closure== 28369 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #20638: <==closure== 67190 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #23455: <==commonly_known== 84923 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #28369: <==commonly_known== 85581 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #30921: <==commonly_known== 81040 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #31738: <==commonly_known== 89083 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #32977: <==closure== 28369 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #35561: <==commonly_known== 56214 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #37925: <==commonly_known== 74494 (pos)
                    (Ba_Pb_secret)

                    ; #41154: <==commonly_known== 76645 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #41303: <==closure== 85581 (pos)
                    (Pa_Pb_secret)

                    ; #42217: <==closure== 35561 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #44328: <==commonly_known== 74494 (pos)
                    (Bc_Pb_secret)

                    ; #44553: <==commonly_known== 84923 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #46730: <==commonly_known== 37925 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #49784: <==commonly_known== 41303 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #55685: <==closure== 35561 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #56214: <==commonly_known== 71422 (pos)
                    (Bc_Bb_secret)

                    ; #57060: <==commonly_known== 44328 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #60772: <==closure== 17630 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #61406: <==commonly_known== 17650 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #61908: <==closure== 67190 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #65044: <==closure== 17630 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #65435: <==closure== 35561 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #67190: <==commonly_known== 85581 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #69620: <==commonly_known== 44328 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #70651: <==closure== 28369 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #71422: origin
                    (Bb_secret)

                    ; #74494: <==closure== 71422 (pos)
                    (Pb_secret)

                    ; #76645: <==commonly_known== 80359 (neg)
                    (Pa_Bb_secret)

                    ; #78146: <==commonly_known== 81040 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #81040: <==closure== 56214 (pos)
                    (Pc_Pb_secret)

                    ; #82854: <==commonly_known== 37925 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #85137: <==closure== 17630 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #85581: <==commonly_known== 71422 (pos)
                    (Ba_Bb_secret)

                    ; #86028: <==commonly_known== 17650 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #89083: <==commonly_known== 80359 (neg)
                    (Pc_Bb_secret)

                    ; #90630: <==commonly_known== 41303 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #90803: <==commonly_known== 89083 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #92128: <==commonly_known== 76645 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #13138: <==negation-removal== 57060 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #15684: <==negation-removal== 86028 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #17650: <==negation-removal== 85581 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #25125: <==negation-removal== 70651 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #25789: <==negation-removal== 76645 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #28812: <==negation-removal== 42217 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #29617: <==negation-removal== 55685 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #30966: <==negation-removal== 61406 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #35160: <==negation-removal== 82854 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #37360: <==negation-removal== 92128 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #38821: <==negation-removal== 17630 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #40181: <==negation-removal== 78146 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #41175: <==negation-removal== 46730 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #44185: <==negation-removal== 32977 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #44770: <==negation-removal== 61908 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #45945: <==negation-removal== 31738 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #46891: <==negation-removal== 67190 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #49391: <==negation-removal== 65044 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #50820: <==negation-removal== 89083 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #52406: <==negation-removal== 44553 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #53350: <==negation-removal== 12791 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #60736: <==negation-removal== 90630 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #64121: <==negation-removal== 60772 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #65353: <==negation-removal== 20638 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #65614: <==negation-removal== 85137 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #66786: <==negation-removal== 81040 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #69419: <==negation-removal== 69620 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #73270: <==negation-removal== 28369 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #74801: <==negation-removal== 23455 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #75422: <==negation-removal== 90803 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #75469: <==negation-removal== 49784 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #77174: <==negation-removal== 44328 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #77790: <==negation-removal== 30921 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #80359: <==negation-removal== 71422 (pos)
                    (not (Pb_not_secret))

                    ; #81818: <==negation-removal== 41154 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #82112: <==negation-removal== 20176 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #82236: <==negation-removal== 74494 (pos)
                    (not (Bb_not_secret))

                    ; #84923: <==negation-removal== 56214 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #85512: <==negation-removal== 41303 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #87218: <==negation-removal== 37925 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #87708: <==negation-removal== 65435 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #91485: <==negation-removal== 35561 (pos)
                    (not (Pa_Pc_Pb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #10636: <==commonly_known== 34597 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #12228: <==commonly_known== 17728 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #12791: <==closure== 67190 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #13349: <==commonly_known== 93508 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #14048: <==commonly_known== 38379 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #14115: <==commonly_known== 46728 (neg)
                    (Pb_Bc_secret)

                    ; #17630: <==commonly_known== 56214 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #17728: <==commonly_known== 91713 (pos)
                    (Ba_Pc_secret)

                    ; #20176: <==closure== 28369 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #20638: <==closure== 67190 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #20860: <==closure== 67820 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #23455: <==commonly_known== 84923 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #23895: <==commonly_known== 17572 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #27056: <==commonly_known== 39710 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #28369: <==commonly_known== 85581 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #28743: <==commonly_known== 78114 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #30921: <==commonly_known== 81040 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #31738: <==commonly_known== 89083 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #32381: <==commonly_known== 80055 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #32977: <==closure== 28369 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #33912: <==commonly_known== 38391 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #35561: <==commonly_known== 56214 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #37348: <==closure== 32381 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #37925: <==commonly_known== 74494 (pos)
                    (Ba_Pb_secret)

                    ; #38376: <==closure== 67820 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #38379: <==commonly_known== 46728 (neg)
                    (Pa_Bc_secret)

                    ; #38391: <==commonly_known== 56351 (pos)
                    (Bb_Bc_secret)

                    ; #39710: <==commonly_known== 91713 (pos)
                    (Bb_Pc_secret)

                    ; #41154: <==commonly_known== 76645 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #41303: <==closure== 85581 (pos)
                    (Pa_Pb_secret)

                    ; #42217: <==closure== 35561 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #44328: <==commonly_known== 74494 (pos)
                    (Bc_Pb_secret)

                    ; #44553: <==commonly_known== 84923 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #44647: <==commonly_known== 14115 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #45245: <==commonly_known== 39710 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #46730: <==commonly_known== 37925 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #49784: <==commonly_known== 41303 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #55685: <==closure== 35561 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #56214: <==commonly_known== 71422 (pos)
                    (Bc_Bb_secret)

                    ; #56351: origin
                    (Bc_secret)

                    ; #56942: <==closure== 67820 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #57060: <==commonly_known== 44328 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #60772: <==closure== 17630 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #61406: <==commonly_known== 17650 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #61908: <==closure== 67190 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #62206: <==closure== 32381 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #65044: <==closure== 17630 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #65305: <==commonly_known== 80055 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #65435: <==closure== 35561 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #67055: <==closure== 65305 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #67190: <==commonly_known== 85581 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #67820: <==commonly_known== 38391 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #68452: <==closure== 33912 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #68483: <==commonly_known== 14115 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #69620: <==commonly_known== 44328 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #70651: <==closure== 28369 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #71422: origin
                    (Bb_secret)

                    ; #72600: <==commonly_known== 93508 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #74494: <==closure== 71422 (pos)
                    (Pb_secret)

                    ; #75836: <==commonly_known== 38379 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #76645: <==commonly_known== 80359 (neg)
                    (Pa_Bb_secret)

                    ; #78114: <==closure== 80055 (pos)
                    (Pa_Pc_secret)

                    ; #78146: <==commonly_known== 81040 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #80055: <==commonly_known== 56351 (pos)
                    (Ba_Bc_secret)

                    ; #80452: <==commonly_known== 17572 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #81040: <==closure== 56214 (pos)
                    (Pc_Pb_secret)

                    ; #81372: <==commonly_known== 34597 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #82535: <==closure== 32381 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #82678: <==closure== 33912 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #82854: <==commonly_known== 37925 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #84270: <==commonly_known== 78114 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #84716: <==closure== 65305 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #85137: <==closure== 17630 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #85581: <==commonly_known== 71422 (pos)
                    (Ba_Bb_secret)

                    ; #85584: <==commonly_known== 17728 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #86028: <==commonly_known== 17650 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #89083: <==commonly_known== 80359 (neg)
                    (Pc_Bb_secret)

                    ; #90112: <==closure== 33912 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #90215: <==closure== 65305 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #90630: <==commonly_known== 41303 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #90803: <==commonly_known== 89083 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #91713: <==closure== 56351 (pos)
                    (Pc_secret)

                    ; #92128: <==commonly_known== 76645 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #93508: <==closure== 38391 (pos)
                    (Pb_Pc_secret)

                    ; #10206: <==negation-removal== 91713 (pos)
                    (not (Bc_not_secret))

                    ; #12928: <==negation-removal== 45245 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #13138: <==negation-removal== 57060 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #14255: <==negation-removal== 27056 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #15684: <==negation-removal== 86028 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #16641: <==negation-removal== 62206 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #17572: <==negation-removal== 38391 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #17650: <==negation-removal== 85581 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #19141: <==negation-removal== 75836 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #20148: <==negation-removal== 84270 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #21334: <==negation-removal== 33912 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #25125: <==negation-removal== 70651 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #25789: <==negation-removal== 76645 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #27347: <==negation-removal== 81372 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #28186: <==negation-removal== 32381 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #28812: <==negation-removal== 42217 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #29516: <==negation-removal== 85584 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #29617: <==negation-removal== 55685 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #30757: <==negation-removal== 39710 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #30811: <==negation-removal== 82678 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #30966: <==negation-removal== 61406 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #31536: <==negation-removal== 44647 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #34597: <==negation-removal== 80055 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #35160: <==negation-removal== 82854 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #36954: <==negation-removal== 67820 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #37360: <==negation-removal== 92128 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #37924: <==negation-removal== 68483 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #38289: <==negation-removal== 72600 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #38821: <==negation-removal== 17630 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #40181: <==negation-removal== 78146 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #41175: <==negation-removal== 46730 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #42509: <==negation-removal== 12228 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #44185: <==negation-removal== 32977 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #44199: <==negation-removal== 65305 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #44770: <==negation-removal== 61908 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #45461: <==negation-removal== 14115 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #45945: <==negation-removal== 31738 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #46193: <==negation-removal== 82535 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #46728: <==negation-removal== 56351 (pos)
                    (not (Pc_not_secret))

                    ; #46891: <==negation-removal== 67190 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #47607: <==negation-removal== 67055 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #49391: <==negation-removal== 65044 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #50820: <==negation-removal== 89083 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #51093: <==negation-removal== 17728 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #52406: <==negation-removal== 44553 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #53350: <==negation-removal== 12791 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #55853: <==negation-removal== 10636 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #58442: <==negation-removal== 90215 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #60736: <==negation-removal== 90630 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #62177: <==negation-removal== 20860 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #63052: <==negation-removal== 37348 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #64121: <==negation-removal== 60772 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #64806: <==negation-removal== 38379 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #65130: <==negation-removal== 38376 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #65353: <==negation-removal== 20638 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #65614: <==negation-removal== 85137 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #66786: <==negation-removal== 81040 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #67071: <==negation-removal== 93508 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #68063: <==negation-removal== 78114 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #68332: <==negation-removal== 80452 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #69419: <==negation-removal== 69620 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #72274: <==negation-removal== 56942 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #73270: <==negation-removal== 28369 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #74547: <==negation-removal== 68452 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #74801: <==negation-removal== 23455 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #75422: <==negation-removal== 90803 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #75469: <==negation-removal== 49784 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #77174: <==negation-removal== 44328 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #77790: <==negation-removal== 30921 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #78294: <==negation-removal== 28743 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #79501: <==negation-removal== 13349 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #80359: <==negation-removal== 71422 (pos)
                    (not (Pb_not_secret))

                    ; #81215: <==negation-removal== 90112 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #81818: <==negation-removal== 41154 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #82112: <==negation-removal== 20176 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #82236: <==negation-removal== 74494 (pos)
                    (not (Bb_not_secret))

                    ; #84923: <==negation-removal== 56214 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #85512: <==negation-removal== 41303 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #87218: <==negation-removal== 37925 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #87708: <==negation-removal== 65435 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #88845: <==negation-removal== 14048 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #90310: <==negation-removal== 84716 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #90702: <==negation-removal== 23895 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #91485: <==negation-removal== 35561 (pos)
                    (not (Pa_Pc_Pb_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #10636: <==commonly_known== 34597 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #12228: <==commonly_known== 17728 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #12791: <==closure== 67190 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #13349: <==commonly_known== 93508 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #14048: <==commonly_known== 38379 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #14115: <==commonly_known== 46728 (neg)
                    (Pb_Bc_secret)

                    ; #17630: <==commonly_known== 56214 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #17728: <==commonly_known== 91713 (pos)
                    (Ba_Pc_secret)

                    ; #20176: <==closure== 28369 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #20638: <==closure== 67190 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #20860: <==closure== 67820 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #23455: <==commonly_known== 84923 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #23895: <==commonly_known== 17572 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #27056: <==commonly_known== 39710 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #28369: <==commonly_known== 85581 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #28743: <==commonly_known== 78114 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #30921: <==commonly_known== 81040 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #31738: <==commonly_known== 89083 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #32381: <==commonly_known== 80055 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #32977: <==closure== 28369 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #33912: <==commonly_known== 38391 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #35561: <==commonly_known== 56214 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #37348: <==closure== 32381 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #37925: <==commonly_known== 74494 (pos)
                    (Ba_Pb_secret)

                    ; #38376: <==closure== 67820 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #38379: <==commonly_known== 46728 (neg)
                    (Pa_Bc_secret)

                    ; #38391: <==commonly_known== 56351 (pos)
                    (Bb_Bc_secret)

                    ; #39710: <==commonly_known== 91713 (pos)
                    (Bb_Pc_secret)

                    ; #41154: <==commonly_known== 76645 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #41303: <==closure== 85581 (pos)
                    (Pa_Pb_secret)

                    ; #42217: <==closure== 35561 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #44328: <==commonly_known== 74494 (pos)
                    (Bc_Pb_secret)

                    ; #44553: <==commonly_known== 84923 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #44647: <==commonly_known== 14115 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #45245: <==commonly_known== 39710 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #46730: <==commonly_known== 37925 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #49784: <==commonly_known== 41303 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #55685: <==closure== 35561 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #56214: <==commonly_known== 71422 (pos)
                    (Bc_Bb_secret)

                    ; #56351: origin
                    (Bc_secret)

                    ; #56942: <==closure== 67820 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #57060: <==commonly_known== 44328 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #60772: <==closure== 17630 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #61406: <==commonly_known== 17650 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #61908: <==closure== 67190 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #62206: <==closure== 32381 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #65044: <==closure== 17630 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #65305: <==commonly_known== 80055 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #65435: <==closure== 35561 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #67055: <==closure== 65305 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #67190: <==commonly_known== 85581 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #67820: <==commonly_known== 38391 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #68452: <==closure== 33912 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #68483: <==commonly_known== 14115 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #69620: <==commonly_known== 44328 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #70651: <==closure== 28369 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #71422: origin
                    (Bb_secret)

                    ; #72600: <==commonly_known== 93508 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #74494: <==closure== 71422 (pos)
                    (Pb_secret)

                    ; #75836: <==commonly_known== 38379 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #76645: <==commonly_known== 80359 (neg)
                    (Pa_Bb_secret)

                    ; #78114: <==closure== 80055 (pos)
                    (Pa_Pc_secret)

                    ; #78146: <==commonly_known== 81040 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #80055: <==commonly_known== 56351 (pos)
                    (Ba_Bc_secret)

                    ; #80452: <==commonly_known== 17572 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #81040: <==closure== 56214 (pos)
                    (Pc_Pb_secret)

                    ; #81372: <==commonly_known== 34597 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #82535: <==closure== 32381 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #82678: <==closure== 33912 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #82854: <==commonly_known== 37925 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #84270: <==commonly_known== 78114 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #84716: <==closure== 65305 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #85137: <==closure== 17630 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #85581: <==commonly_known== 71422 (pos)
                    (Ba_Bb_secret)

                    ; #85584: <==commonly_known== 17728 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #86028: <==commonly_known== 17650 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #89083: <==commonly_known== 80359 (neg)
                    (Pc_Bb_secret)

                    ; #90112: <==closure== 33912 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #90215: <==closure== 65305 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #90630: <==commonly_known== 41303 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #90803: <==commonly_known== 89083 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #91713: <==closure== 56351 (pos)
                    (Pc_secret)

                    ; #92128: <==commonly_known== 76645 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #93508: <==closure== 38391 (pos)
                    (Pb_Pc_secret)

                    ; #10206: <==negation-removal== 91713 (pos)
                    (not (Bc_not_secret))

                    ; #12928: <==negation-removal== 45245 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #13138: <==negation-removal== 57060 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #14255: <==negation-removal== 27056 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #15684: <==negation-removal== 86028 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #16641: <==negation-removal== 62206 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #17572: <==negation-removal== 38391 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #17650: <==negation-removal== 85581 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #19141: <==negation-removal== 75836 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #20148: <==negation-removal== 84270 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #21334: <==negation-removal== 33912 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #25125: <==negation-removal== 70651 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #25789: <==negation-removal== 76645 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #27347: <==negation-removal== 81372 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #28186: <==negation-removal== 32381 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #28812: <==negation-removal== 42217 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #29516: <==negation-removal== 85584 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #29617: <==negation-removal== 55685 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #30757: <==negation-removal== 39710 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #30811: <==negation-removal== 82678 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #30966: <==negation-removal== 61406 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #31536: <==negation-removal== 44647 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #34597: <==negation-removal== 80055 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #35160: <==negation-removal== 82854 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #36954: <==negation-removal== 67820 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #37360: <==negation-removal== 92128 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #37924: <==negation-removal== 68483 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #38289: <==negation-removal== 72600 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #38821: <==negation-removal== 17630 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #40181: <==negation-removal== 78146 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #41175: <==negation-removal== 46730 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #42509: <==negation-removal== 12228 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #44185: <==negation-removal== 32977 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #44199: <==negation-removal== 65305 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #44770: <==negation-removal== 61908 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #45461: <==negation-removal== 14115 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #45945: <==negation-removal== 31738 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #46193: <==negation-removal== 82535 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #46728: <==negation-removal== 56351 (pos)
                    (not (Pc_not_secret))

                    ; #46891: <==negation-removal== 67190 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #47607: <==negation-removal== 67055 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #49391: <==negation-removal== 65044 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #50820: <==negation-removal== 89083 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #51093: <==negation-removal== 17728 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #52406: <==negation-removal== 44553 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #53350: <==negation-removal== 12791 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #55853: <==negation-removal== 10636 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #58442: <==negation-removal== 90215 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #60736: <==negation-removal== 90630 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #62177: <==negation-removal== 20860 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #63052: <==negation-removal== 37348 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #64121: <==negation-removal== 60772 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #64806: <==negation-removal== 38379 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #65130: <==negation-removal== 38376 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #65353: <==negation-removal== 20638 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #65614: <==negation-removal== 85137 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #66786: <==negation-removal== 81040 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #67071: <==negation-removal== 93508 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #68063: <==negation-removal== 78114 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #68332: <==negation-removal== 80452 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #69419: <==negation-removal== 69620 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #72274: <==negation-removal== 56942 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #73270: <==negation-removal== 28369 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #74547: <==negation-removal== 68452 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #74801: <==negation-removal== 23455 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #75422: <==negation-removal== 90803 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #75469: <==negation-removal== 49784 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #77174: <==negation-removal== 44328 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #77790: <==negation-removal== 30921 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #78294: <==negation-removal== 28743 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #79501: <==negation-removal== 13349 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #80359: <==negation-removal== 71422 (pos)
                    (not (Pb_not_secret))

                    ; #81215: <==negation-removal== 90112 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #81818: <==negation-removal== 41154 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #82112: <==negation-removal== 20176 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #82236: <==negation-removal== 74494 (pos)
                    (not (Bb_not_secret))

                    ; #84923: <==negation-removal== 56214 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #85512: <==negation-removal== 41303 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #87218: <==negation-removal== 37925 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #87708: <==negation-removal== 65435 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #88845: <==negation-removal== 14048 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #90310: <==negation-removal== 84716 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #90702: <==negation-removal== 23895 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #91485: <==negation-removal== 35561 (pos)
                    (not (Pa_Pc_Pb_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #10636: <==commonly_known== 34597 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #12228: <==commonly_known== 17728 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #13349: <==commonly_known== 93508 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #14048: <==commonly_known== 38379 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #14115: <==commonly_known== 46728 (neg)
                    (Pb_Bc_secret)

                    ; #17728: <==commonly_known== 91713 (pos)
                    (Ba_Pc_secret)

                    ; #20860: <==closure== 67820 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #23895: <==commonly_known== 17572 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #27056: <==commonly_known== 39710 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #28743: <==commonly_known== 78114 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #32381: <==commonly_known== 80055 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #33912: <==commonly_known== 38391 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #37348: <==closure== 32381 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #38376: <==closure== 67820 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #38379: <==commonly_known== 46728 (neg)
                    (Pa_Bc_secret)

                    ; #38391: <==commonly_known== 56351 (pos)
                    (Bb_Bc_secret)

                    ; #39710: <==commonly_known== 91713 (pos)
                    (Bb_Pc_secret)

                    ; #44647: <==commonly_known== 14115 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #45245: <==commonly_known== 39710 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #56351: origin
                    (Bc_secret)

                    ; #56942: <==closure== 67820 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #62206: <==closure== 32381 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #65305: <==commonly_known== 80055 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #67055: <==closure== 65305 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #67820: <==commonly_known== 38391 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #68452: <==closure== 33912 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #68483: <==commonly_known== 14115 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #72600: <==commonly_known== 93508 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #75836: <==commonly_known== 38379 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #78114: <==closure== 80055 (pos)
                    (Pa_Pc_secret)

                    ; #80055: <==commonly_known== 56351 (pos)
                    (Ba_Bc_secret)

                    ; #80452: <==commonly_known== 17572 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #81372: <==commonly_known== 34597 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #82535: <==closure== 32381 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #82678: <==closure== 33912 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #84270: <==commonly_known== 78114 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #84716: <==closure== 65305 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #85584: <==commonly_known== 17728 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #90112: <==closure== 33912 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #90215: <==closure== 65305 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #91713: <==closure== 56351 (pos)
                    (Pc_secret)

                    ; #93508: <==closure== 38391 (pos)
                    (Pb_Pc_secret)

                    ; #10206: <==negation-removal== 91713 (pos)
                    (not (Bc_not_secret))

                    ; #12928: <==negation-removal== 45245 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #14255: <==negation-removal== 27056 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #16641: <==negation-removal== 62206 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #17572: <==negation-removal== 38391 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #19141: <==negation-removal== 75836 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #20148: <==negation-removal== 84270 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #21334: <==negation-removal== 33912 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #27347: <==negation-removal== 81372 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #28186: <==negation-removal== 32381 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #29516: <==negation-removal== 85584 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #30757: <==negation-removal== 39710 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #30811: <==negation-removal== 82678 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #31536: <==negation-removal== 44647 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #34597: <==negation-removal== 80055 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #36954: <==negation-removal== 67820 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #37924: <==negation-removal== 68483 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #38289: <==negation-removal== 72600 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #42509: <==negation-removal== 12228 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #44199: <==negation-removal== 65305 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #45461: <==negation-removal== 14115 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #46193: <==negation-removal== 82535 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #46728: <==negation-removal== 56351 (pos)
                    (not (Pc_not_secret))

                    ; #47607: <==negation-removal== 67055 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #51093: <==negation-removal== 17728 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #55853: <==negation-removal== 10636 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #58442: <==negation-removal== 90215 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #62177: <==negation-removal== 20860 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #63052: <==negation-removal== 37348 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #64806: <==negation-removal== 38379 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #65130: <==negation-removal== 38376 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #67071: <==negation-removal== 93508 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #68063: <==negation-removal== 78114 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #68332: <==negation-removal== 80452 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #72274: <==negation-removal== 56942 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #74547: <==negation-removal== 68452 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #78294: <==negation-removal== 28743 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #79501: <==negation-removal== 13349 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #81215: <==negation-removal== 90112 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #88845: <==negation-removal== 14048 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #90310: <==negation-removal== 84716 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #90702: <==negation-removal== 23895 (pos)
                    (not (Bc_Pb_Pc_not_secret))))

)