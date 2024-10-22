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
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #10987: <==closure== 25073 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #14913: <==commonly_known== 27704 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #15767: <==commonly_known== 28257 (pos)
                    (Bc_Bb_not_secret)

                    ; #15779: <==closure== 86758 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #16713: <==closure== 19234 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #16796: <==commonly_known== 86174 (neg)
                    (Pc_Bb_not_secret)

                    ; #16974: <==closure== 25073 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #18509: <==commonly_known== 61537 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #19071: <==commonly_known== 80438 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #19234: <==commonly_known== 15767 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #21487: <==closure== 19234 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #25073: <==commonly_known== 71394 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #27704: <==closure== 71394 (pos)
                    (Pa_Pb_not_secret)

                    ; #27884: <==commonly_known== 42297 (pos)
                    (Bc_Pb_not_secret)

                    ; #28257: origin
                    (Bb_not_secret)

                    ; #28321: <==commonly_known== 36788 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #32501: <==commonly_known== 16796 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #33902: <==commonly_known== 40220 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #35460: <==commonly_known== 16796 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #36788: <==closure== 15767 (pos)
                    (Pc_Pb_not_secret)

                    ; #36936: <==commonly_known== 36788 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #41294: <==closure== 86758 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #42297: <==closure== 28257 (pos)
                    (Pb_not_secret)

                    ; #42584: <==commonly_known== 42297 (pos)
                    (Ba_Pb_not_secret)

                    ; #44803: <==commonly_known== 71394 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #53827: <==commonly_known== 61537 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #56041: <==commonly_known== 80438 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #57484: <==closure== 44803 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #59835: <==commonly_known== 42584 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #60600: <==commonly_known== 27884 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #61537: <==commonly_known== 86174 (neg)
                    (Pa_Bb_not_secret)

                    ; #64536: <==commonly_known== 40220 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #66202: <==closure== 44803 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #71365: <==commonly_known== 42584 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #71394: <==commonly_known== 28257 (pos)
                    (Ba_Bb_not_secret)

                    ; #73916: <==closure== 44803 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #75073: <==commonly_known== 27884 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #75420: <==commonly_known== 27704 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #83309: <==closure== 19234 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #85213: <==closure== 25073 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #86258: <==closure== 86758 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #86758: <==commonly_known== 15767 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #11150: <==negation-removal== 27704 (pos)
                    (not (Ba_Bb_secret))

                    ; #14773: <==negation-removal== 85213 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #17031: <==negation-removal== 16974 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #17108: <==negation-removal== 16713 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #18900: <==negation-removal== 21487 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #19688: <==negation-removal== 56041 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #23627: <==negation-removal== 44803 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #25242: <==negation-removal== 14913 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #27661: <==negation-removal== 16796 (pos)
                    (not (Bc_Pb_secret))

                    ; #30262: <==negation-removal== 15779 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #31378: <==negation-removal== 36788 (pos)
                    (not (Bc_Bb_secret))

                    ; #33214: <==negation-removal== 64536 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #38941: <==negation-removal== 53827 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #39847: <==negation-removal== 42584 (pos)
                    (not (Pa_Bb_secret))

                    ; #40220: <==negation-removal== 15767 (pos)
                    (not (Pc_Pb_secret))

                    ; #43516: <==negation-removal== 19234 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #47017: <==negation-removal== 35460 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #47397: <==negation-removal== 28321 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #47567: <==negation-removal== 32501 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #50350: <==negation-removal== 27884 (pos)
                    (not (Pc_Bb_secret))

                    ; #52414: <==negation-removal== 18509 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #57379: <==negation-removal== 71365 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #57419: <==negation-removal== 10987 (pos)
                    (not (Bc_Ba_Bb_secret))

                    ; #58655: <==negation-removal== 86258 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #58746: <==negation-removal== 73916 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #60102: <==negation-removal== 60600 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #60900: <==negation-removal== 86758 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #63443: <==negation-removal== 57484 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #67581: <==negation-removal== 25073 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #70765: <==negation-removal== 19071 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #72314: <==negation-removal== 66202 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #76894: <==negation-removal== 33902 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #77420: <==negation-removal== 42297 (pos)
                    (not (Bb_secret))

                    ; #78684: <==negation-removal== 41294 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #80438: <==negation-removal== 71394 (pos)
                    (not (Pa_Pb_secret))

                    ; #82387: <==negation-removal== 75420 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #84627: <==negation-removal== 83309 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #86174: <==negation-removal== 28257 (pos)
                    (not (Pb_secret))

                    ; #88559: <==negation-removal== 75073 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #91911: <==negation-removal== 59835 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #92008: <==negation-removal== 61537 (pos)
                    (not (Ba_Pb_secret))

                    ; #92662: <==negation-removal== 36936 (pos)
                    (not (Pb_Bc_Bb_secret))))

    (:action fib-2
        :precondition (and (Pa_secret)
                           (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #10987: <==closure== 25073 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #14697: <==closure== 75336 (pos)
                    (Pa_Pc_not_secret)

                    ; #14913: <==commonly_known== 27704 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #15767: <==commonly_known== 28257 (pos)
                    (Bc_Bb_not_secret)

                    ; #15779: <==closure== 86758 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #16713: <==closure== 19234 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #16796: <==commonly_known== 86174 (neg)
                    (Pc_Bb_not_secret)

                    ; #16798: <==commonly_known== 75336 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #16974: <==closure== 25073 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #18509: <==commonly_known== 61537 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #19071: <==commonly_known== 80438 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #19234: <==commonly_known== 15767 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #21487: <==closure== 19234 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #23472: <==commonly_known== 61542 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #25073: <==commonly_known== 71394 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #27246: <==commonly_known== 47326 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #27704: <==closure== 71394 (pos)
                    (Pa_Pb_not_secret)

                    ; #27884: <==commonly_known== 42297 (pos)
                    (Bc_Pb_not_secret)

                    ; #28257: origin
                    (Bb_not_secret)

                    ; #28321: <==commonly_known== 36788 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #28913: <==commonly_known== 31828 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #29292: <==commonly_known== 64113 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #30066: <==commonly_known== 64113 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #30903: <==commonly_known== 75336 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #31828: <==commonly_known== 87662 (pos)
                    (Ba_Pc_not_secret)

                    ; #32501: <==commonly_known== 16796 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #32580: <==commonly_known== 67134 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #33902: <==commonly_known== 40220 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #34763: <==commonly_known== 76038 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #35136: <==closure== 30066 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #35460: <==commonly_known== 16796 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #36788: <==closure== 15767 (pos)
                    (Pc_Pb_not_secret)

                    ; #36936: <==commonly_known== 36788 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #37845: <==commonly_known== 61542 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #41294: <==closure== 86758 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #42297: <==closure== 28257 (pos)
                    (Pb_not_secret)

                    ; #42584: <==commonly_known== 42297 (pos)
                    (Ba_Pb_not_secret)

                    ; #44292: <==commonly_known== 99013 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #44803: <==commonly_known== 71394 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #44932: <==closure== 30903 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #47326: <==commonly_known== 62074 (neg)
                    (Pa_Bc_not_secret)

                    ; #48714: <==closure== 29292 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #51609: <==commonly_known== 99013 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #52344: <==commonly_known== 47326 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #52851: <==commonly_known== 76038 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #53656: <==commonly_known== 62074 (neg)
                    (Pb_Bc_not_secret)

                    ; #53827: <==commonly_known== 61537 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #54305: <==closure== 30066 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #56041: <==commonly_known== 80438 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #56048: origin
                    (Bc_not_secret)

                    ; #56260: <==closure== 30066 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #57484: <==closure== 44803 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #59835: <==commonly_known== 42584 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #60600: <==commonly_known== 27884 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #60869: <==closure== 30903 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #61537: <==commonly_known== 86174 (neg)
                    (Pa_Bb_not_secret)

                    ; #61542: <==closure== 64113 (pos)
                    (Pb_Pc_not_secret)

                    ; #64113: <==commonly_known== 56048 (pos)
                    (Bb_Bc_not_secret)

                    ; #64536: <==commonly_known== 40220 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #66202: <==closure== 44803 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #70749: <==commonly_known== 67134 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #71365: <==commonly_known== 42584 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #71394: <==commonly_known== 28257 (pos)
                    (Ba_Bb_not_secret)

                    ; #73916: <==closure== 44803 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #73934: <==closure== 16798 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #75073: <==commonly_known== 27884 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #75140: <==closure== 29292 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #75336: <==commonly_known== 56048 (pos)
                    (Ba_Bc_not_secret)

                    ; #75420: <==commonly_known== 27704 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #76038: <==commonly_known== 87662 (pos)
                    (Bb_Pc_not_secret)

                    ; #76076: <==commonly_known== 31828 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #77003: <==commonly_known== 53656 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #77172: <==closure== 16798 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #77800: <==commonly_known== 14697 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #79168: <==closure== 29292 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #83309: <==closure== 19234 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #85213: <==closure== 25073 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #86258: <==closure== 86758 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #86758: <==commonly_known== 15767 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #87662: <==closure== 56048 (pos)
                    (Pc_not_secret)

                    ; #88730: <==closure== 30903 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #89326: <==closure== 16798 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #89406: <==commonly_known== 14697 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #92114: <==commonly_known== 53656 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #10101: <==negation-removal== 77003 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #10304: <==negation-removal== 48714 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #11150: <==negation-removal== 27704 (pos)
                    (not (Ba_Bb_secret))

                    ; #11771: <==negation-removal== 52851 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #12611: <==negation-removal== 52344 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #14773: <==negation-removal== 85213 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #15388: <==negation-removal== 30903 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #17031: <==negation-removal== 16974 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #17108: <==negation-removal== 16713 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #18900: <==negation-removal== 21487 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #19688: <==negation-removal== 56041 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #20777: <==negation-removal== 47326 (pos)
                    (not (Ba_Pc_secret))

                    ; #23627: <==negation-removal== 44803 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #24753: <==negation-removal== 56260 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #25171: <==negation-removal== 88730 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #25242: <==negation-removal== 14913 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #26136: <==negation-removal== 76038 (pos)
                    (not (Pb_Bc_secret))

                    ; #27548: <==negation-removal== 77800 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #27661: <==negation-removal== 16796 (pos)
                    (not (Bc_Pb_secret))

                    ; #28750: <==negation-removal== 44932 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #29876: <==negation-removal== 31828 (pos)
                    (not (Pa_Bc_secret))

                    ; #30262: <==negation-removal== 15779 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #30461: <==negation-removal== 29292 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #31378: <==negation-removal== 36788 (pos)
                    (not (Bc_Bb_secret))

                    ; #33214: <==negation-removal== 64536 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #34879: <==negation-removal== 92114 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #36198: <==negation-removal== 35136 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #36735: <==negation-removal== 54305 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #37489: <==negation-removal== 30066 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #38941: <==negation-removal== 53827 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #39847: <==negation-removal== 42584 (pos)
                    (not (Pa_Bb_secret))

                    ; #40144: <==negation-removal== 61542 (pos)
                    (not (Bb_Bc_secret))

                    ; #40220: <==negation-removal== 15767 (pos)
                    (not (Pc_Pb_secret))

                    ; #42368: <==negation-removal== 76076 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #43153: <==negation-removal== 51609 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #43393: <==negation-removal== 16798 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #43516: <==negation-removal== 19234 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #46515: <==negation-removal== 60869 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #47017: <==negation-removal== 35460 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #47397: <==negation-removal== 28321 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #47567: <==negation-removal== 32501 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #50350: <==negation-removal== 27884 (pos)
                    (not (Pc_Bb_secret))

                    ; #51398: <==negation-removal== 27246 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #51883: <==negation-removal== 53656 (pos)
                    (not (Bb_Pc_secret))

                    ; #52414: <==negation-removal== 18509 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #55900: <==negation-removal== 75140 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #56198: <==negation-removal== 87662 (pos)
                    (not (Bc_secret))

                    ; #56310: <==negation-removal== 14697 (pos)
                    (not (Ba_Bc_secret))

                    ; #57379: <==negation-removal== 71365 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #57419: <==negation-removal== 10987 (pos)
                    (not (Bc_Ba_Bb_secret))

                    ; #58655: <==negation-removal== 86258 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #58746: <==negation-removal== 73916 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #58903: <==negation-removal== 89326 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #60102: <==negation-removal== 60600 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #60900: <==negation-removal== 86758 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #62074: <==negation-removal== 56048 (pos)
                    (not (Pc_secret))

                    ; #63443: <==negation-removal== 57484 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #67134: <==negation-removal== 75336 (pos)
                    (not (Pa_Pc_secret))

                    ; #67581: <==negation-removal== 25073 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #68469: <==negation-removal== 79168 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #70765: <==negation-removal== 19071 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #72314: <==negation-removal== 66202 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #76389: <==negation-removal== 77172 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #76894: <==negation-removal== 33902 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #77286: <==negation-removal== 23472 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #77420: <==negation-removal== 42297 (pos)
                    (not (Bb_secret))

                    ; #77461: <==negation-removal== 37845 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #78023: <==negation-removal== 28913 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #78684: <==negation-removal== 41294 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #79115: <==negation-removal== 34763 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #80438: <==negation-removal== 71394 (pos)
                    (not (Pa_Pb_secret))

                    ; #80922: <==negation-removal== 44292 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #82387: <==negation-removal== 75420 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #84627: <==negation-removal== 83309 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #86174: <==negation-removal== 28257 (pos)
                    (not (Pb_secret))

                    ; #87440: <==negation-removal== 89406 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #88559: <==negation-removal== 75073 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #89138: <==negation-removal== 70749 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #89225: <==negation-removal== 32580 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #91911: <==negation-removal== 59835 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #92008: <==negation-removal== 61537 (pos)
                    (not (Ba_Pb_secret))

                    ; #92662: <==negation-removal== 36936 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #93470: <==negation-removal== 73934 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #99013: <==negation-removal== 64113 (pos)
                    (not (Pb_Pc_secret))))

    (:action fib-3
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l3))
        :effect (and
                    ; #10987: <==closure== 25073 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #14697: <==closure== 75336 (pos)
                    (Pa_Pc_not_secret)

                    ; #14913: <==commonly_known== 27704 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #15767: <==commonly_known== 28257 (pos)
                    (Bc_Bb_not_secret)

                    ; #15779: <==closure== 86758 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #16713: <==closure== 19234 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #16796: <==commonly_known== 86174 (neg)
                    (Pc_Bb_not_secret)

                    ; #16798: <==commonly_known== 75336 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #16974: <==closure== 25073 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #18509: <==commonly_known== 61537 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #19071: <==commonly_known== 80438 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #19234: <==commonly_known== 15767 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #21487: <==closure== 19234 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #23472: <==commonly_known== 61542 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #25073: <==commonly_known== 71394 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #27246: <==commonly_known== 47326 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #27704: <==closure== 71394 (pos)
                    (Pa_Pb_not_secret)

                    ; #27884: <==commonly_known== 42297 (pos)
                    (Bc_Pb_not_secret)

                    ; #28257: origin
                    (Bb_not_secret)

                    ; #28321: <==commonly_known== 36788 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #28913: <==commonly_known== 31828 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #29292: <==commonly_known== 64113 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #30066: <==commonly_known== 64113 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #30903: <==commonly_known== 75336 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #31828: <==commonly_known== 87662 (pos)
                    (Ba_Pc_not_secret)

                    ; #32501: <==commonly_known== 16796 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #32580: <==commonly_known== 67134 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #33902: <==commonly_known== 40220 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #34763: <==commonly_known== 76038 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #35136: <==closure== 30066 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #35460: <==commonly_known== 16796 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #36788: <==closure== 15767 (pos)
                    (Pc_Pb_not_secret)

                    ; #36936: <==commonly_known== 36788 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #37845: <==commonly_known== 61542 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #41294: <==closure== 86758 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #42297: <==closure== 28257 (pos)
                    (Pb_not_secret)

                    ; #42584: <==commonly_known== 42297 (pos)
                    (Ba_Pb_not_secret)

                    ; #44292: <==commonly_known== 99013 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #44803: <==commonly_known== 71394 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #44932: <==closure== 30903 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #47326: <==commonly_known== 62074 (neg)
                    (Pa_Bc_not_secret)

                    ; #48714: <==closure== 29292 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #51609: <==commonly_known== 99013 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #52344: <==commonly_known== 47326 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #52851: <==commonly_known== 76038 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #53656: <==commonly_known== 62074 (neg)
                    (Pb_Bc_not_secret)

                    ; #53827: <==commonly_known== 61537 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #54305: <==closure== 30066 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #56041: <==commonly_known== 80438 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #56048: origin
                    (Bc_not_secret)

                    ; #56260: <==closure== 30066 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #57484: <==closure== 44803 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #59835: <==commonly_known== 42584 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #60600: <==commonly_known== 27884 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #60869: <==closure== 30903 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #61537: <==commonly_known== 86174 (neg)
                    (Pa_Bb_not_secret)

                    ; #61542: <==closure== 64113 (pos)
                    (Pb_Pc_not_secret)

                    ; #64113: <==commonly_known== 56048 (pos)
                    (Bb_Bc_not_secret)

                    ; #64536: <==commonly_known== 40220 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #66202: <==closure== 44803 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #70749: <==commonly_known== 67134 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #71365: <==commonly_known== 42584 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #71394: <==commonly_known== 28257 (pos)
                    (Ba_Bb_not_secret)

                    ; #73916: <==closure== 44803 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #73934: <==closure== 16798 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #75073: <==commonly_known== 27884 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #75140: <==closure== 29292 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #75336: <==commonly_known== 56048 (pos)
                    (Ba_Bc_not_secret)

                    ; #75420: <==commonly_known== 27704 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #76038: <==commonly_known== 87662 (pos)
                    (Bb_Pc_not_secret)

                    ; #76076: <==commonly_known== 31828 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #77003: <==commonly_known== 53656 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #77172: <==closure== 16798 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #77800: <==commonly_known== 14697 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #79168: <==closure== 29292 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #83309: <==closure== 19234 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #85213: <==closure== 25073 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #86258: <==closure== 86758 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #86758: <==commonly_known== 15767 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #87662: <==closure== 56048 (pos)
                    (Pc_not_secret)

                    ; #88730: <==closure== 30903 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #89326: <==closure== 16798 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #89406: <==commonly_known== 14697 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #92114: <==commonly_known== 53656 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #10101: <==negation-removal== 77003 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #10304: <==negation-removal== 48714 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #11150: <==negation-removal== 27704 (pos)
                    (not (Ba_Bb_secret))

                    ; #11771: <==negation-removal== 52851 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #12611: <==negation-removal== 52344 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #14773: <==negation-removal== 85213 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #15388: <==negation-removal== 30903 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #17031: <==negation-removal== 16974 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #17108: <==negation-removal== 16713 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #18900: <==negation-removal== 21487 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #19688: <==negation-removal== 56041 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #20777: <==negation-removal== 47326 (pos)
                    (not (Ba_Pc_secret))

                    ; #23627: <==negation-removal== 44803 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #24753: <==negation-removal== 56260 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #25171: <==negation-removal== 88730 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #25242: <==negation-removal== 14913 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #26136: <==negation-removal== 76038 (pos)
                    (not (Pb_Bc_secret))

                    ; #27548: <==negation-removal== 77800 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #27661: <==negation-removal== 16796 (pos)
                    (not (Bc_Pb_secret))

                    ; #28750: <==negation-removal== 44932 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #29876: <==negation-removal== 31828 (pos)
                    (not (Pa_Bc_secret))

                    ; #30262: <==negation-removal== 15779 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #30461: <==negation-removal== 29292 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #31378: <==negation-removal== 36788 (pos)
                    (not (Bc_Bb_secret))

                    ; #33214: <==negation-removal== 64536 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #34879: <==negation-removal== 92114 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #36198: <==negation-removal== 35136 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #36735: <==negation-removal== 54305 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #37489: <==negation-removal== 30066 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #38941: <==negation-removal== 53827 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #39847: <==negation-removal== 42584 (pos)
                    (not (Pa_Bb_secret))

                    ; #40144: <==negation-removal== 61542 (pos)
                    (not (Bb_Bc_secret))

                    ; #40220: <==negation-removal== 15767 (pos)
                    (not (Pc_Pb_secret))

                    ; #42368: <==negation-removal== 76076 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #43153: <==negation-removal== 51609 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #43393: <==negation-removal== 16798 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #43516: <==negation-removal== 19234 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #46515: <==negation-removal== 60869 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #47017: <==negation-removal== 35460 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #47397: <==negation-removal== 28321 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #47567: <==negation-removal== 32501 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #50350: <==negation-removal== 27884 (pos)
                    (not (Pc_Bb_secret))

                    ; #51398: <==negation-removal== 27246 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #51883: <==negation-removal== 53656 (pos)
                    (not (Bb_Pc_secret))

                    ; #52414: <==negation-removal== 18509 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #55900: <==negation-removal== 75140 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #56198: <==negation-removal== 87662 (pos)
                    (not (Bc_secret))

                    ; #56310: <==negation-removal== 14697 (pos)
                    (not (Ba_Bc_secret))

                    ; #57379: <==negation-removal== 71365 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #57419: <==negation-removal== 10987 (pos)
                    (not (Bc_Ba_Bb_secret))

                    ; #58655: <==negation-removal== 86258 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #58746: <==negation-removal== 73916 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #58903: <==negation-removal== 89326 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #60102: <==negation-removal== 60600 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #60900: <==negation-removal== 86758 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #62074: <==negation-removal== 56048 (pos)
                    (not (Pc_secret))

                    ; #63443: <==negation-removal== 57484 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #67134: <==negation-removal== 75336 (pos)
                    (not (Pa_Pc_secret))

                    ; #67581: <==negation-removal== 25073 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #68469: <==negation-removal== 79168 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #70765: <==negation-removal== 19071 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #72314: <==negation-removal== 66202 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #76389: <==negation-removal== 77172 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #76894: <==negation-removal== 33902 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #77286: <==negation-removal== 23472 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #77420: <==negation-removal== 42297 (pos)
                    (not (Bb_secret))

                    ; #77461: <==negation-removal== 37845 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #78023: <==negation-removal== 28913 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #78684: <==negation-removal== 41294 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #79115: <==negation-removal== 34763 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #80438: <==negation-removal== 71394 (pos)
                    (not (Pa_Pb_secret))

                    ; #80922: <==negation-removal== 44292 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #82387: <==negation-removal== 75420 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #84627: <==negation-removal== 83309 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #86174: <==negation-removal== 28257 (pos)
                    (not (Pb_secret))

                    ; #87440: <==negation-removal== 89406 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #88559: <==negation-removal== 75073 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #89138: <==negation-removal== 70749 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #89225: <==negation-removal== 32580 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #91911: <==negation-removal== 59835 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #92008: <==negation-removal== 61537 (pos)
                    (not (Ba_Pb_secret))

                    ; #92662: <==negation-removal== 36936 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #93470: <==negation-removal== 73934 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #99013: <==negation-removal== 64113 (pos)
                    (not (Pb_Pc_secret))))

    (:action fib-4
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #14697: <==closure== 75336 (pos)
                    (Pa_Pc_not_secret)

                    ; #16798: <==commonly_known== 75336 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #23472: <==commonly_known== 61542 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #27246: <==commonly_known== 47326 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #28913: <==commonly_known== 31828 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #29292: <==commonly_known== 64113 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #30066: <==commonly_known== 64113 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #30903: <==commonly_known== 75336 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #31828: <==commonly_known== 87662 (pos)
                    (Ba_Pc_not_secret)

                    ; #32580: <==commonly_known== 67134 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #34763: <==commonly_known== 76038 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #35136: <==closure== 30066 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #37845: <==commonly_known== 61542 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #44292: <==commonly_known== 99013 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #44932: <==closure== 30903 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #47326: <==commonly_known== 62074 (neg)
                    (Pa_Bc_not_secret)

                    ; #48714: <==closure== 29292 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #51609: <==commonly_known== 99013 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #52344: <==commonly_known== 47326 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #52851: <==commonly_known== 76038 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #53656: <==commonly_known== 62074 (neg)
                    (Pb_Bc_not_secret)

                    ; #54305: <==closure== 30066 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #56048: origin
                    (Bc_not_secret)

                    ; #56260: <==closure== 30066 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #60869: <==closure== 30903 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #61542: <==closure== 64113 (pos)
                    (Pb_Pc_not_secret)

                    ; #64113: <==commonly_known== 56048 (pos)
                    (Bb_Bc_not_secret)

                    ; #70749: <==commonly_known== 67134 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #73934: <==closure== 16798 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #75140: <==closure== 29292 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #75336: <==commonly_known== 56048 (pos)
                    (Ba_Bc_not_secret)

                    ; #76038: <==commonly_known== 87662 (pos)
                    (Bb_Pc_not_secret)

                    ; #76076: <==commonly_known== 31828 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #77003: <==commonly_known== 53656 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #77172: <==closure== 16798 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #77800: <==commonly_known== 14697 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #79168: <==closure== 29292 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #87662: <==closure== 56048 (pos)
                    (Pc_not_secret)

                    ; #88730: <==closure== 30903 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #89326: <==closure== 16798 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #89406: <==commonly_known== 14697 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #92114: <==commonly_known== 53656 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #10101: <==negation-removal== 77003 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #10304: <==negation-removal== 48714 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #11771: <==negation-removal== 52851 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #12611: <==negation-removal== 52344 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #15388: <==negation-removal== 30903 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #20777: <==negation-removal== 47326 (pos)
                    (not (Ba_Pc_secret))

                    ; #24753: <==negation-removal== 56260 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #25171: <==negation-removal== 88730 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #26136: <==negation-removal== 76038 (pos)
                    (not (Pb_Bc_secret))

                    ; #27548: <==negation-removal== 77800 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #28750: <==negation-removal== 44932 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #29876: <==negation-removal== 31828 (pos)
                    (not (Pa_Bc_secret))

                    ; #30461: <==negation-removal== 29292 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #34879: <==negation-removal== 92114 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #36198: <==negation-removal== 35136 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #36735: <==negation-removal== 54305 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #37489: <==negation-removal== 30066 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #40144: <==negation-removal== 61542 (pos)
                    (not (Bb_Bc_secret))

                    ; #42368: <==negation-removal== 76076 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #43153: <==negation-removal== 51609 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #43393: <==negation-removal== 16798 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #46515: <==negation-removal== 60869 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #51398: <==negation-removal== 27246 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #51883: <==negation-removal== 53656 (pos)
                    (not (Bb_Pc_secret))

                    ; #55900: <==negation-removal== 75140 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #56198: <==negation-removal== 87662 (pos)
                    (not (Bc_secret))

                    ; #56310: <==negation-removal== 14697 (pos)
                    (not (Ba_Bc_secret))

                    ; #58903: <==negation-removal== 89326 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #62074: <==negation-removal== 56048 (pos)
                    (not (Pc_secret))

                    ; #67134: <==negation-removal== 75336 (pos)
                    (not (Pa_Pc_secret))

                    ; #68469: <==negation-removal== 79168 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #76389: <==negation-removal== 77172 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #77286: <==negation-removal== 23472 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #77461: <==negation-removal== 37845 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #78023: <==negation-removal== 28913 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #79115: <==negation-removal== 34763 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #80922: <==negation-removal== 44292 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #87440: <==negation-removal== 89406 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #89138: <==negation-removal== 70749 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #89225: <==negation-removal== 32580 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #93470: <==negation-removal== 73934 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #99013: <==negation-removal== 64113 (pos)
                    (not (Pb_Pc_secret))))

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #45248: origin
                    (not_at_l1)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #77378: origin
                    (not_at_l2)

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #13586: origin
                    (not_at_l3)

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #43496: origin
                    (not_at_l4)

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #45248: origin
                    (not_at_l1)

                    ; #88742: origin
                    (at_l2)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #77378: origin
                    (not_at_l2)

                    ; #88742: origin
                    (at_l2)

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #13586: origin
                    (not_at_l3)

                    ; #88742: origin
                    (at_l2)

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #43496: origin
                    (not_at_l4)

                    ; #88742: origin
                    (at_l2)

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #28364: origin
                    (at_l3)

                    ; #45248: origin
                    (not_at_l1)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #28364: origin
                    (at_l3)

                    ; #77378: origin
                    (not_at_l2)

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #13586: origin
                    (not_at_l3)

                    ; #28364: origin
                    (at_l3)

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #28364: origin
                    (at_l3)

                    ; #43496: origin
                    (not_at_l4)

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #45248: origin
                    (not_at_l1)

                    ; #85376: origin
                    (at_l4)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #77378: origin
                    (not_at_l2)

                    ; #85376: origin
                    (at_l4)

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #13586: origin
                    (not_at_l3)

                    ; #85376: origin
                    (at_l4)

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #43496: origin
                    (not_at_l4)

                    ; #85376: origin
                    (at_l4)

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #45248: origin
                    (not_at_l1)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #45248: origin
                    (not_at_l1)

                    ; #88742: origin
                    (at_l2)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #28364: origin
                    (at_l3)

                    ; #45248: origin
                    (not_at_l1)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #45248: origin
                    (not_at_l1)

                    ; #85376: origin
                    (at_l4)

                    ; #13088: <==negation-removal== 45248 (pos)
                    (not (at_l1))

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #77378: origin
                    (not_at_l2)

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #77378: origin
                    (not_at_l2)

                    ; #88742: origin
                    (at_l2)

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (at_l2)
                           (succ_l2_l3))
        :effect (and
                    ; #28364: origin
                    (at_l3)

                    ; #77378: origin
                    (not_at_l2)

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #77378: origin
                    (not_at_l2)

                    ; #85376: origin
                    (at_l4)

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))

                    ; #88742: <==negation-removal== 77378 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #13586: origin
                    (not_at_l3)

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #13586: origin
                    (not_at_l3)

                    ; #88742: origin
                    (at_l2)

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #13586: origin
                    (not_at_l3)

                    ; #28364: origin
                    (at_l3)

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #13586: origin
                    (not_at_l3)

                    ; #85376: origin
                    (at_l4)

                    ; #28364: <==negation-removal== 13586 (pos)
                    (not (at_l3))

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #13088: origin
                    (at_l1)

                    ; #43496: origin
                    (not_at_l4)

                    ; #45248: <==negation-removal== 13088 (pos)
                    (not (not_at_l1))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #43496: origin
                    (not_at_l4)

                    ; #88742: origin
                    (at_l2)

                    ; #77378: <==negation-removal== 88742 (pos)
                    (not (not_at_l2))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #28364: origin
                    (at_l3)

                    ; #43496: origin
                    (not_at_l4)

                    ; #13586: <==negation-removal== 28364 (pos)
                    (not (not_at_l3))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #43496: origin
                    (not_at_l4)

                    ; #85376: origin
                    (at_l4)

                    ; #43496: <==negation-removal== 85376 (pos)
                    (not (not_at_l4))

                    ; #85376: <==negation-removal== 43496 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #18305: <==commonly_known== 73638 (pos)
                    (Bb_Pc_Ba_secret)

                    ; #19273: <==commonly_known== 83490 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #21196: <==commonly_known== 71667 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #22589: <==closure== 55102 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #23702: <==commonly_known== 64205 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #25407: <==commonly_known== 42077 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #27698: <==commonly_known== 71667 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #30010: <==commonly_known== 63338 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #31670: <==closure== 23702 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #32454: <==commonly_known== 42198 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #32652: <==closure== 55102 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #42077: <==closure== 64205 (pos)
                    (Pb_Pa_secret)

                    ; #42198: <==closure== 63338 (pos)
                    (Pc_Pa_secret)

                    ; #46500: <==commonly_known== 82681 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #46510: <==closure== 82853 (pos)
                    (Pa_secret)

                    ; #49330: <==commonly_known== 83490 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #49342: <==commonly_known== 42198 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #50209: <==commonly_known== 51195 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #51663: <==commonly_known== 51195 (neg)
                    (Pc_Bb_Ba_secret)

                    ; #55102: <==commonly_known== 64205 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #59960: <==closure== 75005 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #59987: <==closure== 23702 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #60482: <==commonly_known== 57954 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #61267: <==closure== 30010 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #62870: <==commonly_known== 57954 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #63338: <==commonly_known== 82853 (pos)
                    (Bc_Ba_secret)

                    ; #64033: <==closure== 23702 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #64205: <==commonly_known== 82853 (pos)
                    (Bb_Ba_secret)

                    ; #66389: <==closure== 75005 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #69928: <==closure== 30010 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #71667: <==commonly_known== 46510 (pos)
                    (Bc_Pa_secret)

                    ; #73638: <==commonly_known== 20178 (neg)
                    (Pc_Ba_secret)

                    ; #75005: <==commonly_known== 63338 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #79353: <==commonly_known== 82681 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #82681: <==commonly_known== 20178 (neg)
                    (Pb_Ba_secret)

                    ; #82688: <==commonly_known== 73638 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #82853: origin
                    (Ba_secret)

                    ; #83490: <==commonly_known== 46510 (pos)
                    (Bb_Pa_secret)

                    ; #83909: <==closure== 75005 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #86797: <==commonly_known== 42077 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #89923: <==closure== 55102 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #97805: <==closure== 30010 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #14430: <==negation-removal== 21196 (pos)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #14920: <==negation-removal== 86797 (pos)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #17421: <==negation-removal== 82681 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #20178: <==negation-removal== 82853 (pos)
                    (not (Pa_not_secret))

                    ; #20741: <==negation-removal== 61267 (pos)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #21070: <==negation-removal== 83909 (pos)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #21360: <==negation-removal== 60482 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #23200: <==negation-removal== 42077 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #23607: <==negation-removal== 30010 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #24672: <==negation-removal== 18305 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #30524: <==negation-removal== 19273 (pos)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #30881: <==negation-removal== 22589 (pos)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #35221: <==negation-removal== 46500 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #35946: <==negation-removal== 51663 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #36146: <==negation-removal== 46510 (pos)
                    (not (Ba_not_secret))

                    ; #41317: <==negation-removal== 27698 (pos)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #41387: <==negation-removal== 62870 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #41597: <==negation-removal== 55102 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #43643: <==negation-removal== 66389 (pos)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #48998: <==negation-removal== 69928 (pos)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #51195: <==negation-removal== 64205 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #53421: <==negation-removal== 79353 (pos)
                    (not (Pc_Bb_Pa_not_secret))

                    ; #53724: <==negation-removal== 32652 (pos)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #54782: <==negation-removal== 25407 (pos)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #57954: <==negation-removal== 63338 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #58575: <==negation-removal== 50209 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #64524: <==negation-removal== 83490 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #65827: <==negation-removal== 71667 (pos)
                    (not (Pc_Ba_not_secret))

                    ; #68816: <==negation-removal== 23702 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #72161: <==negation-removal== 59987 (pos)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #73044: <==negation-removal== 49330 (pos)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #73299: <==negation-removal== 31670 (pos)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #74051: <==negation-removal== 89923 (pos)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #74214: <==negation-removal== 82688 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #74605: <==negation-removal== 75005 (pos)
                    (not (Pa_Pc_Pa_not_secret))

                    ; #81626: <==negation-removal== 73638 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #85741: <==negation-removal== 59960 (pos)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #86354: <==negation-removal== 32454 (pos)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #87922: <==negation-removal== 97805 (pos)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #91295: <==negation-removal== 49342 (pos)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #91693: <==negation-removal== 42198 (pos)
                    (not (Bc_Ba_not_secret))

                    ; #95042: <==negation-removal== 64033 (pos)
                    (not (Bc_Bb_Ba_not_secret))))

    (:action shout-1
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #11150: <==commonly_known== 77420 (pos)
                    (Ba_Bb_secret)

                    ; #14773: <==commonly_known== 92008 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #17031: <==commonly_known== 39847 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #17108: <==commonly_known== 27661 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #18900: <==commonly_known== 50350 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #19688: <==commonly_known== 80438 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #23627: <==closure== 72314 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #25242: <==commonly_known== 27704 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #27661: <==commonly_known== 86174 (pos)
                    (Bc_Pb_secret)

                    ; #30262: <==commonly_known== 31378 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #31378: <==commonly_known== 77420 (pos)
                    (Bc_Bb_secret)

                    ; #33214: <==commonly_known== 40220 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #38941: <==closure== 57419 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #39847: <==commonly_known== 42297 (neg)
                    (Pa_Bb_secret)

                    ; #40220: <==closure== 31378 (pos)
                    (Pc_Pb_secret)

                    ; #43516: <==closure== 84627 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #47017: <==closure== 30262 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #47397: <==commonly_known== 36788 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #47567: <==closure== 84627 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #50350: <==commonly_known== 42297 (neg)
                    (Pc_Bb_secret)

                    ; #52414: <==closure== 72314 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #57379: <==closure== 57419 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #57419: <==commonly_known== 11150 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #58655: <==commonly_known== 50350 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #58746: <==commonly_known== 39847 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #60102: <==closure== 30262 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #60900: <==closure== 30262 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #63443: <==commonly_known== 92008 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #67581: <==closure== 57419 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #70765: <==commonly_known== 80438 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #72314: <==commonly_known== 11150 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #76894: <==commonly_known== 40220 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #77420: origin
                    (Bb_secret)

                    ; #78684: <==commonly_known== 27661 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #80438: <==closure== 11150 (pos)
                    (Pa_Pb_secret)

                    ; #82387: <==commonly_known== 27704 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #84627: <==commonly_known== 31378 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #86174: <==closure== 77420 (pos)
                    (Pb_secret)

                    ; #88559: <==closure== 84627 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #91911: <==closure== 72314 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #92008: <==commonly_known== 86174 (pos)
                    (Ba_Pb_secret)

                    ; #92662: <==commonly_known== 36788 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #10987: <==negation-removal== 57419 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #14913: <==negation-removal== 25242 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #15767: <==negation-removal== 40220 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #15779: <==negation-removal== 30262 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #16713: <==negation-removal== 17108 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #16796: <==negation-removal== 27661 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #16974: <==negation-removal== 17031 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #18509: <==negation-removal== 52414 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #19071: <==negation-removal== 70765 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #19234: <==negation-removal== 43516 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #21487: <==negation-removal== 18900 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #25073: <==negation-removal== 67581 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #27704: <==negation-removal== 11150 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #27884: <==negation-removal== 50350 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #28257: <==negation-removal== 86174 (pos)
                    (not (Bb_not_secret))

                    ; #28321: <==negation-removal== 47397 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #32501: <==negation-removal== 47567 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #33902: <==negation-removal== 76894 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #35460: <==negation-removal== 47017 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #36788: <==negation-removal== 31378 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #36936: <==negation-removal== 92662 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #41294: <==negation-removal== 78684 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #42297: <==negation-removal== 77420 (pos)
                    (not (Pb_not_secret))

                    ; #42584: <==negation-removal== 39847 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #44803: <==negation-removal== 23627 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #53827: <==negation-removal== 38941 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #56041: <==negation-removal== 19688 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #57484: <==negation-removal== 63443 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #59835: <==negation-removal== 91911 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #60600: <==negation-removal== 60102 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #61537: <==negation-removal== 92008 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #64536: <==negation-removal== 33214 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #66202: <==negation-removal== 72314 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #71365: <==negation-removal== 57379 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #71394: <==negation-removal== 80438 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #73916: <==negation-removal== 58746 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #75073: <==negation-removal== 88559 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #75420: <==negation-removal== 82387 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #83309: <==negation-removal== 84627 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #85213: <==negation-removal== 14773 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #86258: <==negation-removal== 58655 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #86758: <==negation-removal== 60900 (pos)
                    (not (Ba_Bc_Bb_not_secret))))

    (:action shout-2
        :precondition (and (Pa_secret)
                           (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #10101: <==closure== 36198 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #10304: <==commonly_known== 51883 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #11150: <==commonly_known== 77420 (pos)
                    (Ba_Bb_secret)

                    ; #11771: <==closure== 55900 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #12611: <==closure== 25171 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #14773: <==commonly_known== 92008 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #15388: <==closure== 25171 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #17031: <==commonly_known== 39847 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #17108: <==commonly_known== 27661 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #18900: <==commonly_known== 50350 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #19688: <==commonly_known== 80438 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #20777: <==commonly_known== 62074 (pos)
                    (Ba_Pc_secret)

                    ; #23627: <==closure== 72314 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #24753: <==commonly_known== 51883 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #25171: <==commonly_known== 56310 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #25242: <==commonly_known== 27704 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #26136: <==commonly_known== 87662 (neg)
                    (Pb_Bc_secret)

                    ; #27548: <==commonly_known== 14697 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #27661: <==commonly_known== 86174 (pos)
                    (Bc_Pb_secret)

                    ; #28750: <==commonly_known== 20777 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #29876: <==commonly_known== 87662 (neg)
                    (Pa_Bc_secret)

                    ; #30262: <==commonly_known== 31378 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #30461: <==closure== 55900 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #31378: <==commonly_known== 77420 (pos)
                    (Bc_Bb_secret)

                    ; #33214: <==commonly_known== 40220 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #34879: <==closure== 55900 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #36198: <==commonly_known== 40144 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #36735: <==commonly_known== 26136 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #37489: <==closure== 36198 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #38941: <==closure== 57419 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #39847: <==commonly_known== 42297 (neg)
                    (Pa_Bb_secret)

                    ; #40144: <==commonly_known== 56198 (pos)
                    (Bb_Bc_secret)

                    ; #40220: <==closure== 31378 (pos)
                    (Pc_Pb_secret)

                    ; #42368: <==closure== 25171 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #43153: <==commonly_known== 99013 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #43393: <==closure== 76389 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #43516: <==closure== 84627 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #46515: <==commonly_known== 29876 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #47017: <==closure== 30262 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #47397: <==commonly_known== 36788 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #47567: <==closure== 84627 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #50350: <==commonly_known== 42297 (neg)
                    (Pc_Bb_secret)

                    ; #51398: <==closure== 76389 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #51883: <==commonly_known== 62074 (pos)
                    (Bb_Pc_secret)

                    ; #52414: <==closure== 72314 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #55900: <==commonly_known== 40144 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #56198: origin
                    (Bc_secret)

                    ; #56310: <==commonly_known== 56198 (pos)
                    (Ba_Bc_secret)

                    ; #57379: <==closure== 57419 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #57419: <==commonly_known== 11150 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #58655: <==commonly_known== 50350 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #58746: <==commonly_known== 39847 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #58903: <==commonly_known== 29876 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #60102: <==closure== 30262 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #60900: <==closure== 30262 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #62074: <==closure== 56198 (pos)
                    (Pc_secret)

                    ; #63443: <==commonly_known== 92008 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #67134: <==closure== 56310 (pos)
                    (Pa_Pc_secret)

                    ; #67581: <==closure== 57419 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #68469: <==commonly_known== 26136 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #70765: <==commonly_known== 80438 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #72314: <==commonly_known== 11150 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #76389: <==commonly_known== 56310 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #76894: <==commonly_known== 40220 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #77286: <==commonly_known== 61542 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #77420: origin
                    (Bb_secret)

                    ; #77461: <==commonly_known== 61542 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #78023: <==closure== 76389 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #78684: <==commonly_known== 27661 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #79115: <==closure== 36198 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #80438: <==closure== 11150 (pos)
                    (Pa_Pb_secret)

                    ; #80922: <==commonly_known== 99013 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #82387: <==commonly_known== 27704 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #84627: <==commonly_known== 31378 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #86174: <==closure== 77420 (pos)
                    (Pb_secret)

                    ; #87440: <==commonly_known== 14697 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #88559: <==closure== 84627 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #89138: <==commonly_known== 67134 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #89225: <==commonly_known== 67134 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #91911: <==closure== 72314 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #92008: <==commonly_known== 86174 (pos)
                    (Ba_Pb_secret)

                    ; #92662: <==commonly_known== 36788 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #93470: <==commonly_known== 20777 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #99013: <==closure== 40144 (pos)
                    (Pb_Pc_secret)

                    ; #10987: <==negation-removal== 57419 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #14697: <==negation-removal== 56310 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #14913: <==negation-removal== 25242 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #15767: <==negation-removal== 40220 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #15779: <==negation-removal== 30262 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #16713: <==negation-removal== 17108 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #16796: <==negation-removal== 27661 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #16798: <==negation-removal== 43393 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #16974: <==negation-removal== 17031 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #18509: <==negation-removal== 52414 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #19071: <==negation-removal== 70765 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #19234: <==negation-removal== 43516 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #21487: <==negation-removal== 18900 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #23472: <==negation-removal== 77286 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #25073: <==negation-removal== 67581 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #27246: <==negation-removal== 51398 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #27704: <==negation-removal== 11150 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #27884: <==negation-removal== 50350 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #28257: <==negation-removal== 86174 (pos)
                    (not (Bb_not_secret))

                    ; #28321: <==negation-removal== 47397 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #28913: <==negation-removal== 78023 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #29292: <==negation-removal== 30461 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #30066: <==negation-removal== 37489 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #30903: <==negation-removal== 15388 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #31828: <==negation-removal== 29876 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #32501: <==negation-removal== 47567 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #32580: <==negation-removal== 89225 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #33902: <==negation-removal== 76894 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #34763: <==negation-removal== 79115 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #35136: <==negation-removal== 36198 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #35460: <==negation-removal== 47017 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #36788: <==negation-removal== 31378 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #36936: <==negation-removal== 92662 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #37845: <==negation-removal== 77461 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #41294: <==negation-removal== 78684 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #42297: <==negation-removal== 77420 (pos)
                    (not (Pb_not_secret))

                    ; #42584: <==negation-removal== 39847 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #44292: <==negation-removal== 80922 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #44803: <==negation-removal== 23627 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #44932: <==negation-removal== 28750 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #47326: <==negation-removal== 20777 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #48714: <==negation-removal== 10304 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #51609: <==negation-removal== 43153 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #52344: <==negation-removal== 12611 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #52851: <==negation-removal== 11771 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #53656: <==negation-removal== 51883 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #53827: <==negation-removal== 38941 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #54305: <==negation-removal== 36735 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #56041: <==negation-removal== 19688 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #56048: <==negation-removal== 62074 (pos)
                    (not (Bc_not_secret))

                    ; #56260: <==negation-removal== 24753 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #57484: <==negation-removal== 63443 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #59835: <==negation-removal== 91911 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #60600: <==negation-removal== 60102 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #60869: <==negation-removal== 46515 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #61537: <==negation-removal== 92008 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #61542: <==negation-removal== 40144 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #64113: <==negation-removal== 99013 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #64536: <==negation-removal== 33214 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #66202: <==negation-removal== 72314 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #70749: <==negation-removal== 89138 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #71365: <==negation-removal== 57379 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #71394: <==negation-removal== 80438 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #73916: <==negation-removal== 58746 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #73934: <==negation-removal== 93470 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #75073: <==negation-removal== 88559 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #75140: <==negation-removal== 55900 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #75336: <==negation-removal== 67134 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #75420: <==negation-removal== 82387 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #76038: <==negation-removal== 26136 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #76076: <==negation-removal== 42368 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #77003: <==negation-removal== 10101 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #77172: <==negation-removal== 76389 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #77800: <==negation-removal== 27548 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #79168: <==negation-removal== 68469 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #83309: <==negation-removal== 84627 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #85213: <==negation-removal== 14773 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #86258: <==negation-removal== 58655 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #86758: <==negation-removal== 60900 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #87662: <==negation-removal== 56198 (pos)
                    (not (Pc_not_secret))

                    ; #88730: <==negation-removal== 25171 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #89326: <==negation-removal== 58903 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #89406: <==negation-removal== 87440 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #92114: <==negation-removal== 34879 (pos)
                    (not (Ba_Pb_Bc_not_secret))))

    (:action shout-3
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l3))
        :effect (and
                    ; #10101: <==closure== 36198 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #10304: <==commonly_known== 51883 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #11150: <==commonly_known== 77420 (pos)
                    (Ba_Bb_secret)

                    ; #11771: <==closure== 55900 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #12611: <==closure== 25171 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #14773: <==commonly_known== 92008 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #15388: <==closure== 25171 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #17031: <==commonly_known== 39847 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #17108: <==commonly_known== 27661 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #18900: <==commonly_known== 50350 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #19688: <==commonly_known== 80438 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #20777: <==commonly_known== 62074 (pos)
                    (Ba_Pc_secret)

                    ; #23627: <==closure== 72314 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #24753: <==commonly_known== 51883 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #25171: <==commonly_known== 56310 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #25242: <==commonly_known== 27704 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #26136: <==commonly_known== 87662 (neg)
                    (Pb_Bc_secret)

                    ; #27548: <==commonly_known== 14697 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #27661: <==commonly_known== 86174 (pos)
                    (Bc_Pb_secret)

                    ; #28750: <==commonly_known== 20777 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #29876: <==commonly_known== 87662 (neg)
                    (Pa_Bc_secret)

                    ; #30262: <==commonly_known== 31378 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #30461: <==closure== 55900 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #31378: <==commonly_known== 77420 (pos)
                    (Bc_Bb_secret)

                    ; #33214: <==commonly_known== 40220 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #34879: <==closure== 55900 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #36198: <==commonly_known== 40144 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #36735: <==commonly_known== 26136 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #37489: <==closure== 36198 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #38941: <==closure== 57419 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #39847: <==commonly_known== 42297 (neg)
                    (Pa_Bb_secret)

                    ; #40144: <==commonly_known== 56198 (pos)
                    (Bb_Bc_secret)

                    ; #40220: <==closure== 31378 (pos)
                    (Pc_Pb_secret)

                    ; #42368: <==closure== 25171 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #43153: <==commonly_known== 99013 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #43393: <==closure== 76389 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #43516: <==closure== 84627 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #46515: <==commonly_known== 29876 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #47017: <==closure== 30262 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #47397: <==commonly_known== 36788 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #47567: <==closure== 84627 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #50350: <==commonly_known== 42297 (neg)
                    (Pc_Bb_secret)

                    ; #51398: <==closure== 76389 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #51883: <==commonly_known== 62074 (pos)
                    (Bb_Pc_secret)

                    ; #52414: <==closure== 72314 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #55900: <==commonly_known== 40144 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #56198: origin
                    (Bc_secret)

                    ; #56310: <==commonly_known== 56198 (pos)
                    (Ba_Bc_secret)

                    ; #57379: <==closure== 57419 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #57419: <==commonly_known== 11150 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #58655: <==commonly_known== 50350 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #58746: <==commonly_known== 39847 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #58903: <==commonly_known== 29876 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #60102: <==closure== 30262 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #60900: <==closure== 30262 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #62074: <==closure== 56198 (pos)
                    (Pc_secret)

                    ; #63443: <==commonly_known== 92008 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #67134: <==closure== 56310 (pos)
                    (Pa_Pc_secret)

                    ; #67581: <==closure== 57419 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #68469: <==commonly_known== 26136 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #70765: <==commonly_known== 80438 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #72314: <==commonly_known== 11150 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #76389: <==commonly_known== 56310 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #76894: <==commonly_known== 40220 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #77286: <==commonly_known== 61542 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #77420: origin
                    (Bb_secret)

                    ; #77461: <==commonly_known== 61542 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #78023: <==closure== 76389 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #78684: <==commonly_known== 27661 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #79115: <==closure== 36198 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #80438: <==closure== 11150 (pos)
                    (Pa_Pb_secret)

                    ; #80922: <==commonly_known== 99013 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #82387: <==commonly_known== 27704 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #84627: <==commonly_known== 31378 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #86174: <==closure== 77420 (pos)
                    (Pb_secret)

                    ; #87440: <==commonly_known== 14697 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #88559: <==closure== 84627 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #89138: <==commonly_known== 67134 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #89225: <==commonly_known== 67134 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #91911: <==closure== 72314 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #92008: <==commonly_known== 86174 (pos)
                    (Ba_Pb_secret)

                    ; #92662: <==commonly_known== 36788 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #93470: <==commonly_known== 20777 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #99013: <==closure== 40144 (pos)
                    (Pb_Pc_secret)

                    ; #10987: <==negation-removal== 57419 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #14697: <==negation-removal== 56310 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #14913: <==negation-removal== 25242 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #15767: <==negation-removal== 40220 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #15779: <==negation-removal== 30262 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #16713: <==negation-removal== 17108 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #16796: <==negation-removal== 27661 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #16798: <==negation-removal== 43393 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #16974: <==negation-removal== 17031 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #18509: <==negation-removal== 52414 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #19071: <==negation-removal== 70765 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #19234: <==negation-removal== 43516 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #21487: <==negation-removal== 18900 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #23472: <==negation-removal== 77286 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #25073: <==negation-removal== 67581 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #27246: <==negation-removal== 51398 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #27704: <==negation-removal== 11150 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #27884: <==negation-removal== 50350 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #28257: <==negation-removal== 86174 (pos)
                    (not (Bb_not_secret))

                    ; #28321: <==negation-removal== 47397 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #28913: <==negation-removal== 78023 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #29292: <==negation-removal== 30461 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #30066: <==negation-removal== 37489 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #30903: <==negation-removal== 15388 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #31828: <==negation-removal== 29876 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #32501: <==negation-removal== 47567 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #32580: <==negation-removal== 89225 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #33902: <==negation-removal== 76894 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #34763: <==negation-removal== 79115 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #35136: <==negation-removal== 36198 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #35460: <==negation-removal== 47017 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #36788: <==negation-removal== 31378 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #36936: <==negation-removal== 92662 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #37845: <==negation-removal== 77461 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #41294: <==negation-removal== 78684 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #42297: <==negation-removal== 77420 (pos)
                    (not (Pb_not_secret))

                    ; #42584: <==negation-removal== 39847 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #44292: <==negation-removal== 80922 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #44803: <==negation-removal== 23627 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #44932: <==negation-removal== 28750 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #47326: <==negation-removal== 20777 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #48714: <==negation-removal== 10304 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #51609: <==negation-removal== 43153 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #52344: <==negation-removal== 12611 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #52851: <==negation-removal== 11771 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #53656: <==negation-removal== 51883 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #53827: <==negation-removal== 38941 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #54305: <==negation-removal== 36735 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #56041: <==negation-removal== 19688 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #56048: <==negation-removal== 62074 (pos)
                    (not (Bc_not_secret))

                    ; #56260: <==negation-removal== 24753 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #57484: <==negation-removal== 63443 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #59835: <==negation-removal== 91911 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #60600: <==negation-removal== 60102 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #60869: <==negation-removal== 46515 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #61537: <==negation-removal== 92008 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #61542: <==negation-removal== 40144 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #64113: <==negation-removal== 99013 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #64536: <==negation-removal== 33214 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #66202: <==negation-removal== 72314 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #70749: <==negation-removal== 89138 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #71365: <==negation-removal== 57379 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #71394: <==negation-removal== 80438 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #73916: <==negation-removal== 58746 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #73934: <==negation-removal== 93470 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #75073: <==negation-removal== 88559 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #75140: <==negation-removal== 55900 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #75336: <==negation-removal== 67134 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #75420: <==negation-removal== 82387 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #76038: <==negation-removal== 26136 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #76076: <==negation-removal== 42368 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #77003: <==negation-removal== 10101 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #77172: <==negation-removal== 76389 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #77800: <==negation-removal== 27548 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #79168: <==negation-removal== 68469 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #83309: <==negation-removal== 84627 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #85213: <==negation-removal== 14773 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #86258: <==negation-removal== 58655 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #86758: <==negation-removal== 60900 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #87662: <==negation-removal== 56198 (pos)
                    (not (Pc_not_secret))

                    ; #88730: <==negation-removal== 25171 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #89326: <==negation-removal== 58903 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #89406: <==negation-removal== 87440 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #92114: <==negation-removal== 34879 (pos)
                    (not (Ba_Pb_Bc_not_secret))))

    (:action shout-4
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #10101: <==closure== 36198 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #10304: <==commonly_known== 51883 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #11771: <==closure== 55900 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #12611: <==closure== 25171 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #15388: <==closure== 25171 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #20777: <==commonly_known== 62074 (pos)
                    (Ba_Pc_secret)

                    ; #24753: <==commonly_known== 51883 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #25171: <==commonly_known== 56310 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #26136: <==commonly_known== 87662 (neg)
                    (Pb_Bc_secret)

                    ; #27548: <==commonly_known== 14697 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #28750: <==commonly_known== 20777 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #29876: <==commonly_known== 87662 (neg)
                    (Pa_Bc_secret)

                    ; #30461: <==closure== 55900 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #34879: <==closure== 55900 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #36198: <==commonly_known== 40144 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #36735: <==commonly_known== 26136 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #37489: <==closure== 36198 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #40144: <==commonly_known== 56198 (pos)
                    (Bb_Bc_secret)

                    ; #42368: <==closure== 25171 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #43153: <==commonly_known== 99013 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #43393: <==closure== 76389 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #46515: <==commonly_known== 29876 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #51398: <==closure== 76389 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #51883: <==commonly_known== 62074 (pos)
                    (Bb_Pc_secret)

                    ; #55900: <==commonly_known== 40144 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #56198: origin
                    (Bc_secret)

                    ; #56310: <==commonly_known== 56198 (pos)
                    (Ba_Bc_secret)

                    ; #58903: <==commonly_known== 29876 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #62074: <==closure== 56198 (pos)
                    (Pc_secret)

                    ; #67134: <==closure== 56310 (pos)
                    (Pa_Pc_secret)

                    ; #68469: <==commonly_known== 26136 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #76389: <==commonly_known== 56310 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #77286: <==commonly_known== 61542 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #77461: <==commonly_known== 61542 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #78023: <==closure== 76389 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #79115: <==closure== 36198 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #80922: <==commonly_known== 99013 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #87440: <==commonly_known== 14697 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #89138: <==commonly_known== 67134 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #89225: <==commonly_known== 67134 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #93470: <==commonly_known== 20777 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #99013: <==closure== 40144 (pos)
                    (Pb_Pc_secret)

                    ; #14697: <==negation-removal== 56310 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #16798: <==negation-removal== 43393 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #23472: <==negation-removal== 77286 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #27246: <==negation-removal== 51398 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #28913: <==negation-removal== 78023 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #29292: <==negation-removal== 30461 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #30066: <==negation-removal== 37489 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #30903: <==negation-removal== 15388 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #31828: <==negation-removal== 29876 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #32580: <==negation-removal== 89225 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #34763: <==negation-removal== 79115 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #35136: <==negation-removal== 36198 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #37845: <==negation-removal== 77461 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #44292: <==negation-removal== 80922 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #44932: <==negation-removal== 28750 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #47326: <==negation-removal== 20777 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #48714: <==negation-removal== 10304 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #51609: <==negation-removal== 43153 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #52344: <==negation-removal== 12611 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #52851: <==negation-removal== 11771 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #53656: <==negation-removal== 51883 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #54305: <==negation-removal== 36735 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #56048: <==negation-removal== 62074 (pos)
                    (not (Bc_not_secret))

                    ; #56260: <==negation-removal== 24753 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #60869: <==negation-removal== 46515 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #61542: <==negation-removal== 40144 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #64113: <==negation-removal== 99013 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #70749: <==negation-removal== 89138 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #73934: <==negation-removal== 93470 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #75140: <==negation-removal== 55900 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #75336: <==negation-removal== 67134 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #76038: <==negation-removal== 26136 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #76076: <==negation-removal== 42368 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #77003: <==negation-removal== 10101 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #77172: <==negation-removal== 76389 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #77800: <==negation-removal== 27548 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #79168: <==negation-removal== 68469 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #87662: <==negation-removal== 56198 (pos)
                    (not (Pc_not_secret))

                    ; #88730: <==negation-removal== 25171 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #89326: <==negation-removal== 58903 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #89406: <==negation-removal== 87440 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #92114: <==negation-removal== 34879 (pos)
                    (not (Ba_Pb_Bc_not_secret))))

)